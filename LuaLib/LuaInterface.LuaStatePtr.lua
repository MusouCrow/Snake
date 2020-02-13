---@class LuaInterface.LuaStatePtr : System.Object
local m = {}

---@param i number
---@return number
function m:LuaUpValueIndex(i) end

---@return System.IntPtr
function m:LuaNewState() end

function m:LuaOpenJit() end

function m:LuaClose() end

---@return System.IntPtr
function m:LuaNewThread() end

---@param panic System.IntPtr
---@return System.IntPtr
function m:LuaAtPanic(panic) end

---@return number
function m:LuaGetTop() end

---@param newTop number
function m:LuaSetTop(newTop) end

---@param idx number
function m:LuaPushValue(idx) end

---@param index number
function m:LuaRemove(index) end

---@param idx number
function m:LuaInsert(idx) end

---@param idx number
function m:LuaReplace(idx) end

---@param args number
---@return boolean
function m:LuaCheckStack(args) end

---@param to System.IntPtr
---@param n number
function m:LuaXMove(to, n) end

---@param idx number
---@return boolean
function m:LuaIsNumber(idx) end

---@param index number
---@return boolean
function m:LuaIsString(index) end

---@param index number
---@return boolean
function m:LuaIsCFunction(index) end

---@param index number
---@return boolean
function m:LuaIsUserData(index) end

---@param n number
---@return boolean
function m:LuaIsNil(n) end

---@param index number
---@return LuaInterface.LuaTypes
function m:LuaType(index) end

---@overload fun(idx:number):
---@param type LuaInterface.LuaTypes
---@return string
function m:LuaTypeName(type) end

---@param idx1 number
---@param idx2 number
---@return boolean
function m:LuaEqual(idx1, idx2) end

---@param idx1 number
---@param idx2 number
---@return boolean
function m:LuaRawEqual(idx1, idx2) end

---@param idx1 number
---@param idx2 number
---@return boolean
function m:LuaLessThan(idx1, idx2) end

---@param idx number
---@return number
function m:LuaToNumber(idx) end

---@param idx number
---@return number
function m:LuaToInteger(idx) end

---@param idx number
---@return boolean
function m:LuaToBoolean(idx) end

---@param index number
---@return string
function m:LuaToString(index) end

---@param index number
---@return System.IntPtr, System.Int32
function m:LuaToLString(index) end

---@param idx number
---@return System.IntPtr
function m:LuaToCFunction(idx) end

---@param idx number
---@return System.IntPtr
function m:LuaToUserData(idx) end

---@param idx number
---@return System.IntPtr
function m:LuaToThread(idx) end

---@param idx number
---@return System.IntPtr
function m:LuaToPointer(idx) end

---@param index number
---@return number
function m:LuaObjLen(index) end

function m:LuaPushNil() end

---@param number number
function m:LuaPushNumber(number) end

---@param n number
function m:LuaPushInteger(n) end

---@param str string
---@param size number
function m:LuaPushLString(str, size) end

---@param str string
function m:LuaPushString(str) end

---@param fn System.IntPtr
---@param n number
function m:LuaPushCClosure(fn, n) end

---@param value boolean
function m:LuaPushBoolean(value) end

---@param udata System.IntPtr
function m:LuaPushLightUserData(udata) end

---@return number
function m:LuaPushThread() end

---@param idx number
function m:LuaGetTable(idx) end

---@param index number
---@param key string
function m:LuaGetField(index, key) end

---@param idx number
function m:LuaRawGet(idx) end

---@param tableIndex number
---@param index number
function m:LuaRawGetI(tableIndex, index) end

---@overload fun(narr:number)
---@overload fun()
---@param narr number
---@param nec number
function m:LuaCreateTable(narr, nec) end

---@param size number
---@return System.IntPtr
function m:LuaNewUserData(size) end

---@overload fun(meta:string)
---@param idx number
---@return number
function m:LuaGetMetaTable(idx) end

---@param idx number
function m:LuaGetEnv(idx) end

---@param idx number
function m:LuaSetTable(idx) end

---@param idx number
---@param key string
function m:LuaSetField(idx, key) end

---@param idx number
function m:LuaRawSet(idx) end

---@param tableIndex number
---@param index number
function m:LuaRawSetI(tableIndex, index) end

---@param objIndex number
function m:LuaSetMetaTable(objIndex) end

---@param idx number
function m:LuaSetEnv(idx) end

---@param nArgs number
---@param nResults number
function m:LuaCall(nArgs, nResults) end

---@param nArgs number
---@param nResults number
---@param errfunc number
---@return number
function m:LuaPCall(nArgs, nResults, errfunc) end

---@param nresults number
---@return number
function m:LuaYield(nresults) end

---@param narg number
---@return number
function m:LuaResume(narg) end

---@return number
function m:LuaStatus() end

---@overload fun(what:LuaInterface.LuaGCOptions):
---@param what LuaInterface.LuaGCOptions
---@param data number
---@return number
function m:LuaGC(what, data) end

---@param index number
---@return boolean
function m:LuaNext(index) end

---@param n number
function m:LuaConcat(n) end

---@param amount number
function m:LuaPop(amount) end

function m:LuaNewTable() end

---@param func fun(luaState:System.IntPtr):
function m:LuaPushFunction(func) end

---@param n number
---@return boolean
function m:lua_isfunction(n) end

---@param n number
---@return boolean
function m:lua_istable(n) end

---@param n number
---@return boolean
function m:lua_islightuserdata(n) end

---@param n number
---@return boolean
function m:lua_isnil(n) end

---@param n number
---@return boolean
function m:lua_isboolean(n) end

---@param n number
---@return boolean
function m:lua_isthread(n) end

---@param n number
---@return boolean
function m:lua_isnone(n) end

---@param n number
---@return boolean
function m:lua_isnoneornil(n) end

---@param name string
function m:LuaRawGlobal(name) end

---@param name string
function m:LuaSetGlobal(name) end

---@param name string
function m:LuaGetGlobal(name) end

function m:LuaOpenLibs() end

---@param i number
---@return number
function m:AbsIndex(i) end

---@param i number
---@return number
function m:LuaGetN(i) end

---@param stackPos number
---@return number
function m:LuaCheckNumber(stackPos) end

---@param idx number
---@return number
function m:LuaCheckInteger(idx) end

---@param stackPos number
---@return boolean
function m:LuaCheckBoolean(stackPos) end

---@param numArg number
---@return string, System.Int32
function m:LuaCheckLString(numArg) end

---@param buff string
---@param size number
---@param name string
---@return number
function m:LuaLoadBuffer(buff, size, name) end

---@overload fun(idx:number, fname:string):
---@param idx number
---@param fname string
---@param szhint number
---@return System.IntPtr
function m:LuaFindTable(idx, fname, szhint) end

---@overload fun(stackPos:number, tname:string):
---@param stackPos number
---@param tname string
---@param t2 string
---@return number
function m:LuaTypeError(stackPos, tname, t2) end

---@overload fun(chunk:string):
---@param chunk string
---@param chunkName string
---@return boolean
function m:LuaDoString(chunk, chunkName) end

---@param fileName string
---@return boolean
function m:LuaDoFile(fileName) end

---@param t number
---@return number
function m:LuaRef(t) end

---@param reference number
function m:LuaGetRef(reference) end

---@param reference number
function m:LuaUnRef(reference) end

---@param fileName string
---@return number
function m:LuaRequire(fileName) end

---@param e System.Exception
function m:ThrowLuaException(e) end

---@return number
function m:ToLuaRef() end

---@param delta number
---@param unscaled number
---@return number
function m:LuaUpdate(delta, unscaled) end

---@return number
function m:LuaLateUpdate() end

---@param fixedTime number
---@return number
function m:LuaFixedUpdate(fixedTime) end

function m:OpenToLuaLibs() end

function m:ToLuaPushTraceback() end

---@param reference number
function m:ToLuaUnRef(reference) end

---@param level number
---@param ar LuaInterface.Lua_Debug
---@return number, LuaInterface.Lua_Debug
function m:LuaGetStack(level, ar) end

---@param what string
---@param ar LuaInterface.Lua_Debug
---@return number, LuaInterface.Lua_Debug
function m:LuaGetInfo(what, ar) end

---@param ar LuaInterface.Lua_Debug
---@param n number
---@return string, LuaInterface.Lua_Debug
function m:LuaGetLocal(ar, n) end

---@param ar LuaInterface.Lua_Debug
---@param n number
---@return string, LuaInterface.Lua_Debug
function m:LuaSetLocal(ar, n) end

---@param funcindex number
---@param n number
---@return string
function m:LuaGetUpvalue(funcindex, n) end

---@param funcindex number
---@param n number
---@return string
function m:LuaSetUpvalue(funcindex, n) end

---@param func fun(L:System.IntPtr, ar:LuaInterface.Lua_Debug):
---@param mask number
---@param count number
---@return number
function m:LuaSetHook(func, mask, count) end

---@return fun(L:System.IntPtr, ar:LuaInterface.Lua_Debug):
function m:LuaGetHook() end

---@return number
function m:LuaGetHookMask() end

---@return number
function m:LuaGetHookCount() end

LuaInterface.LuaStatePtr = m
return m
