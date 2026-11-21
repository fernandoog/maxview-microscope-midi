module.exports = {
  post: (...a)=>console.log('[post]',...a),
  outlet: (...a)=>console.log('[outlet]',...a),
  addHandler: (n,fn)=>{console.log('[handler]', n); if(n==='start') global.__start=fn},
  MESSAGE_TYPES: { DESTROY: 'destroy', ALL: 'all' }
};
