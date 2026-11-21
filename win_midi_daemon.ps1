# Persistent MIDI out via winmm → Microsoft GS Wavetable (speakers)
$ErrorActionPreference = "Stop"
Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;
public static class WinMidi {
  [DllImport("winmm.dll")] public static extern uint midiOutGetNumDevs();
  [DllImport("winmm.dll", CharSet = CharSet.Ansi)]
  public static extern uint midiOutGetDevCaps(uint uDeviceID, ref MIDIOUTCAPS caps, uint cb);
  [DllImport("winmm.dll")] public static extern uint midiOutOpen(out IntPtr handle, uint deviceID, IntPtr callback, IntPtr instance, uint flags);
  [DllImport("winmm.dll")] public static extern uint midiOutShortMsg(IntPtr handle, uint msg);
  [DllImport("winmm.dll")] public static extern uint midiOutReset(IntPtr handle);
  [DllImport("winmm.dll")] public static extern uint midiOutClose(IntPtr handle);
  [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi)]
  public struct MIDIOUTCAPS {
    public ushort wMid;
    public ushort wPid;
    public uint vDriverVersion;
    [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)]
    public string szPname;
    public ushort wTechnology;
    public ushort wVoices;
    public ushort wNotes;
    public ushort wChannelMask;
    public uint dwSupport;
  }
}
'@

function Find-MidiDevice {
  $n = [WinMidi]::midiOutGetNumDevs()
  $prefer = -1
  for ($i = 0; $i -lt $n; $i++) {
    $caps = New-Object WinMidi+MIDIOUTCAPS
    [void][WinMidi]::midiOutGetDevCaps([uint32]$i, [ref]$caps, [uint32][Runtime.InteropServices.Marshal]::SizeOf($caps))
    $name = $caps.szPname
    [Console]::Error.WriteLine("MIDI[$i]=$name")
    if ($name -match "GS Wavetable|Microsoft") { return [uint32]$i }
    if ($prefer -lt 0) { $prefer = $i }
  }
  if ($prefer -ge 0) { return [uint32]$prefer }
  return [uint32]0
}

$dev = Find-MidiDevice
$h = [IntPtr]::Zero
$rc = [WinMidi]::midiOutOpen([ref]$h, $dev, [IntPtr]::Zero, [IntPtr]::Zero, 0)
if ($rc -ne 0) {
  [Console]::Error.WriteLine("midiOutOpen failed $rc")
  exit 1
}
[Console]::Error.WriteLine("MIDI_OPEN ok device=$dev")
[Console]::Out.WriteLine("READY")
[Console]::Out.Flush()

try {
  while ($true) {
    $line = [Console]::In.ReadLine()
    if ($null -eq $line) { break }
    $line = $line.Trim()
    if ($line -eq "" -or $line -eq "ping") { continue }
    if ($line -eq "quit") { break }
    $parts = $line -split "\s+"
    $cmd = $parts[0].ToLowerInvariant()
    if ($cmd -eq "on" -and $parts.Length -ge 3) {
      $pitch = [int]$parts[1]
      $vel = [int]$parts[2]
      $ch = 0
      if ($parts.Length -ge 4) { $ch = [int]$parts[3] }
      $msg = [uint32]((0x90 -bor ($ch -band 0x0F)) -bor (($pitch -band 0x7F) -shl 8) -bor (($vel -band 0x7F) -shl 16))
      [void][WinMidi]::midiOutShortMsg($h, $msg)
    }
    elseif ($cmd -eq "off" -and $parts.Length -ge 2) {
      $pitch = [int]$parts[1]
      $ch = 0
      if ($parts.Length -ge 3) { $ch = [int]$parts[2] }
      $msg = [uint32]((0x80 -bor ($ch -band 0x0F)) -bor (($pitch -band 0x7F) -shl 8))
      [void][WinMidi]::midiOutShortMsg($h, $msg)
    }
    elseif ($cmd -eq "pc" -and $parts.Length -ge 2) {
      $prog = [int]$parts[1]
      $ch = 0
      if ($parts.Length -ge 3) { $ch = [int]$parts[2] }
      $msg = [uint32]((0xC0 -bor ($ch -band 0x0F)) -bor (($prog -band 0x7F) -shl 8))
      [void][WinMidi]::midiOutShortMsg($h, $msg)
    }
    elseif ($cmd -eq "panic") {
      [void][WinMidi]::midiOutReset($h)
    }
  }
}
finally {
  try { [void][WinMidi]::midiOutReset($h) } catch {}
  try { [void][WinMidi]::midiOutClose($h) } catch {}
}
