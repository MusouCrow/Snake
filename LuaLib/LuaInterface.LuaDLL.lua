---@class LuaInterface.LuaDLL : System.Object
---@field public version string @static
---@field public LUA_MULTRET number @static
---@field public LuaTypeName string[] @static
local m = {}

---@static
---@param L System.IntPtr
---@return number
function m.luaopen_pb(L) end

---@static
---@param L System.IntPtr
---@return number
function m.luaopen_ffi(L) end

---@static
---@param L System.IntPtr
---@return number
function m.luaopen_bit(L) end

---@static
---@param L System.IntPtr
---@return number
function m.luaopen_struct(L) end

---@static
---@param L System.IntPtr
---@return number
function m.luaopen_lpeg(L) end

---@static
---@param L System.IntPtr
---@return number
function m.luaopen_socket_core(L) end

---@static
---@param L System.IntPtr
---@return number
function m.luaopen_mime_core(L) end

---@static
---@param L System.IntPtr
---@return number
function m.luaopen_cjson(L) end

---@static
---@param L System.IntPtr
---@return number
function m.luaopen_cjson_safe(L) end

---@static
---@param i number
---@return number
function m.lua_upvalueindex(i) end

---@static
---@param luaState System.IntPtr
function m.lua_close(luaState) end

---@static
---@param L System.IntPtr
---@return System.IntPtr
function m.lua_newthread(L) end

---@static
---@param luaState System.IntPtr
---@param panic System.IntPtr
---@return System.IntPtr
function m.lua_atpanic(luaState, panic) end

---@static
---@param luaState System.IntPtr
---@return number
function m.lua_gettop(luaState) end

---@static
---@param luaState System.IntPtr
---@param top number
function m.lua_settop(luaState, top) end

---@static
---@param luaState System.IntPtr
---@param idx number
function m.lua_pushvalue(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param idx number
function m.lua_remove(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param idx number
function m.lua_insert(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param index number
function m.lua_replace(luaState, index) end

---@static
---@param luaState System.IntPtr
---@param extra number
---@return number
function m.lua_checkstack(luaState, extra) end

---@static
---@param from System.IntPtr
---@param to System.IntPtr
---@param n number
function m.lua_xmove(from, to, n) end

---@static
---@param luaState System.IntPtr
---@param idx number
---@return number
function m.lua_isnumber(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param index number
---@return number
function m.lua_isstring(luaState, index) end

---@static
---@param luaState System.IntPtr
---@param index number
---@return number
function m.lua_iscfunction(luaState, index) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return number
function m.lua_isuserdata(luaState, stackPos) end

---@static
---@param luaState System.IntPtr
---@param index number
---@return LuaInterface.LuaTypes
function m.lua_type(luaState, index) end

---@static
---@param luaState System.IntPtr
---@param type LuaInterface.LuaTypes
---@return string
function m.lua_typename(luaState, type) end

---@static
---@param luaState System.IntPtr
---@param idx1 number
---@param idx2 number
---@return number
function m.lua_equal(luaState, idx1, idx2) end

---@static
---@param luaState System.IntPtr
---@param idx1 number
---@param idx2 number
---@return number
function m.lua_rawequal(luaState, idx1, idx2) end

---@static
---@param luaState System.IntPtr
---@param idx1 number
---@param idx2 number
---@return number
function m.lua_lessthan(luaState, idx1, idx2) end

---@static
---@param luaState System.IntPtr
---@param idx number
---@return number
function m.lua_tonumber(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param idx number
---@return number
function m.lua_tointeger(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param idx number
---@return boolean
function m.lua_toboolean(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param index number
---@return System.IntPtr, System.Int32
function m.lua_tolstring(luaState, index) end

---@static
---@param luaState System.IntPtr
---@param idx number
---@return number
function m.lua_objlen(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param idx number
---@return System.IntPtr
function m.lua_tocfunction(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param idx number
---@return System.IntPtr
function m.lua_touserdata(luaState, idx) end

---@static
---@param L System.IntPtr
---@param idx number
---@return System.IntPtr
function m.lua_tothread(L, idx) end

---@static
---@param L System.IntPtr
---@param idx number
---@return System.IntPtr
function m.lua_topointer(L, idx) end

---@static
---@param luaState System.IntPtr
function m.lua_pushnil(luaState) end

---@static
---@param luaState System.IntPtr
---@param number number
function m.lua_pushnumber(luaState, number) end

---@static
---@param L System.IntPtr
---@param n number
function m.lua_pushinteger(L, n) end

---@static
---@param luaState System.IntPtr
---@param str string
---@param size number
function m.lua_pushlstring(luaState, str, size) end

---@static
---@param luaState System.IntPtr
---@param str string
function m.lua_pushstring(luaState, str) end

---@static
---@param luaState System.IntPtr
---@param fn System.IntPtr
---@param n number
function m.lua_pushcclosure(luaState, fn, n) end

---@overload fun(luaState:System.IntPtr, value:boolean) @static
---@static
---@param luaState System.IntPtr
---@param value number
function m.lua_pushboolean(luaState, value) end

---@static
---@param luaState System.IntPtr
---@param udata System.IntPtr
function m.lua_pushlightuserdata(luaState, udata) end

---@static
---@param L System.IntPtr
---@return number
function m.lua_pushthread(L) end

---@static
---@param L System.IntPtr
---@param idx number
function m.lua_gettable(L, idx) end

---@static
---@param L System.IntPtr
---@param idx number
---@param key string
function m.lua_getfield(L, idx, key) end

---@static
---@param luaState System.IntPtr
---@param idx number
function m.lua_rawget(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param idx number
---@param n number
function m.lua_rawgeti(luaState, idx, n) end

---@static
---@param luaState System.IntPtr
---@param narr number
---@param nrec number
function m.lua_createtable(luaState, narr, nrec) end

---@static
---@param luaState System.IntPtr
---@param size number
---@return System.IntPtr
function m.lua_newuserdata(luaState, size) end

---@static
---@param luaState System.IntPtr
---@param objIndex number
---@return number
function m.lua_getmetatable(luaState, objIndex) end

---@static
---@param luaState System.IntPtr
---@param idx number
function m.lua_getfenv(luaState, idx) end

---@static
---@param L System.IntPtr
---@param idx number
function m.lua_settable(L, idx) end

---@static
---@param L System.IntPtr
---@param idx number
---@param key string
function m.lua_setfield(L, idx, key) end

---@static
---@param luaState System.IntPtr
---@param idx number
function m.lua_rawset(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param tableIndex number
---@param index number
function m.lua_rawseti(luaState, tableIndex, index) end

---@static
---@param luaState System.IntPtr
---@param objIndex number
function m.lua_setmetatable(luaState, objIndex) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return number
function m.lua_setfenv(luaState, stackPos) end

---@static
---@param luaState System.IntPtr
---@param nArgs number
---@param nResults number
function m.lua_call(luaState, nArgs, nResults) end

---@static
---@param luaState System.IntPtr
---@param nArgs number
---@param nResults number
---@param errfunc number
---@return number
function m.lua_pcall(luaState, nArgs, nResults, errfunc) end

---@static
---@param L System.IntPtr
---@param func System.IntPtr
---@param ud System.IntPtr
---@return number
function m.lua_cpcall(L, func, ud) end

---@static
---@param L System.IntPtr
---@param nresults number
---@return number
function m.lua_yield(L, nresults) end

---@static
---@param L System.IntPtr
---@param narg number
---@return number
function m.lua_resume(L, narg) end

---@static
---@param L System.IntPtr
---@return number
function m.lua_status(L) end

---@static
---@param luaState System.IntPtr
---@param what LuaInterface.LuaGCOptions
---@param data number
---@return number
function m.lua_gc(luaState, what, data) end

---@static
---@param luaState System.IntPtr
---@param index number
---@return number
function m.lua_next(luaState, index) end

---@static
---@param luaState System.IntPtr
---@param n number
function m.lua_concat(luaState, n) end

---@static
---@param luaState System.IntPtr
---@param amount number
function m.lua_pop(luaState, amount) end

---@static
---@param luaState System.IntPtr
function m.lua_newtable(luaState) end

---@static
---@param luaState System.IntPtr
---@param name string
---@param func fun(luaState:System.IntPtr):
function m.lua_register(luaState, name, func) end

---@static
---@param luaState System.IntPtr
---@param func fun(luaState:System.IntPtr):
function m.lua_pushcfunction(luaState, func) end

---@static
---@param luaState System.IntPtr
---@param n number
---@return boolean
function m.lua_isfunction(luaState, n) end

---@static
---@param luaState System.IntPtr
---@param n number
---@return boolean
function m.lua_istable(luaState, n) end

---@static
---@param luaState System.IntPtr
---@param n number
---@return boolean
function m.lua_islightuserdata(luaState, n) end

---@static
---@param luaState System.IntPtr
---@param n number
---@return boolean
function m.lua_isnil(luaState, n) end

---@static
---@param luaState System.IntPtr
---@param n number
---@return boolean
function m.lua_isboolean(luaState, n) end

---@static
---@param luaState System.IntPtr
---@param n number
---@return boolean
function m.lua_isthread(luaState, n) end

---@static
---@param luaState System.IntPtr
---@param n number
---@return boolean
function m.lua_isnone(luaState, n) end

---@static
---@param luaState System.IntPtr
---@param n number
---@return boolean
function m.lua_isnoneornil(luaState, n) end

---@static
---@param luaState System.IntPtr
---@param name string
function m.lua_setglobal(luaState, name) end

---@static
---@param luaState System.IntPtr
---@param name string
function m.lua_getglobal(luaState, name) end

---@static
---@param str System.IntPtr
---@param len number
---@return string
function m.lua_ptrtostring(str, len) end

---@static
---@param luaState System.IntPtr
---@param index number
---@return string
function m.lua_tostring(luaState, index) end

---@static
---@return System.IntPtr
function m.lua_open() end

---@static
---@param L System.IntPtr
function m.lua_getregistry(L) end

---@static
---@param L System.IntPtr
---@return number
function m.lua_getgccount(L) end

---@static
---@param L System.IntPtr
---@param level number
---@param ar LuaInterface.Lua_Debug
---@return number, LuaInterface.Lua_Debug
function m.lua_getstack(L, level, ar) end

---@static
---@param L System.IntPtr
---@param what string
---@param ar LuaInterface.Lua_Debug
---@return number, LuaInterface.Lua_Debug
function m.lua_getinfo(L, what, ar) end

---@static
---@param L System.IntPtr
---@param ar LuaInterface.Lua_Debug
---@param n number
---@return string, LuaInterface.Lua_Debug
function m.lua_getlocal(L, ar, n) end

---@static
---@param L System.IntPtr
---@param ar LuaInterface.Lua_Debug
---@param n number
---@return string, LuaInterface.Lua_Debug
function m.lua_setlocal(L, ar, n) end

---@static
---@param L System.IntPtr
---@param funcindex number
---@param n number
---@return string
function m.lua_getupvalue(L, funcindex, n) end

---@static
---@param L System.IntPtr
---@param funcindex number
---@param n number
---@return string
function m.lua_setupvalue(L, funcindex, n) end

---@static
---@param L System.IntPtr
---@param func fun(L:System.IntPtr, ar:LuaInterface.Lua_Debug):
---@param mask number
---@param count number
---@return number
function m.lua_sethook(L, func, mask, count) end

---@static
---@param L System.IntPtr
---@return fun(L:System.IntPtr, ar:LuaInterface.Lua_Debug):
function m.lua_gethook(L) end

---@static
---@param L System.IntPtr
---@return number
function m.lua_gethookmask(L) end

---@static
---@param L System.IntPtr
---@return number
function m.lua_gethookcount(L) end

---@static
---@param luaState System.IntPtr
function m.luaL_openlibs(luaState) end

---@static
---@param L System.IntPtr
---@param i number
---@return number
function m.abs_index(L, i) end

---@static
---@param luaState System.IntPtr
---@param i number
---@return number
function m.luaL_getn(luaState, i) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@param field string
---@return number
function m.luaL_getmetafield(luaState, stackPos, field) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@param field string
---@return number
function m.luaL_callmeta(L, stackPos, field) end

---@static
---@param L System.IntPtr
---@param narg number
---@param extramsg string
---@return number
function m.luaL_argerror(L, narg, extramsg) end

---@overload fun(L:System.IntPtr, stackPos:number, tname:string): @static
---@static
---@param L System.IntPtr
---@param stackPos number
---@param tname string
---@param t2 string
---@return number
function m.luaL_typerror(L, stackPos, tname, t2) end

---@static
---@param L System.IntPtr
---@param numArg number
---@return string, System.Int32
function m.luaL_checklstring(L, numArg) end

---@static
---@param L System.IntPtr
---@param narg number
---@param def string
---@return string, System.Int32
function m.luaL_optlstring(L, narg, def) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return number
function m.luaL_checknumber(L, stackPos) end

---@static
---@param L System.IntPtr
---@param idx number
---@param def number
---@return number
function m.luaL_optnumber(L, idx, def) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return number
function m.luaL_checkinteger(L, stackPos) end

---@static
---@param L System.IntPtr
---@param idx number
---@param def number
---@return number
function m.luaL_optinteger(L, idx, def) end

---@static
---@param luaState System.IntPtr
---@param index number
---@return boolean
function m.luaL_checkboolean(luaState, index) end

---@static
---@param L System.IntPtr
---@param space number
---@param mes string
function m.luaL_checkstack(L, space, mes) end

---@static
---@param L System.IntPtr
---@param narg number
---@param t LuaInterface.LuaTypes
function m.luaL_checktype(L, narg, t) end

---@static
---@param L System.IntPtr
---@param narg number
function m.luaL_checkany(L, narg) end

---@static
---@param luaState System.IntPtr
---@param meta string
---@return number
function m.luaL_newmetatable(luaState, meta) end

---@static
---@param L System.IntPtr
---@param ud number
---@param tname string
---@return System.IntPtr
function m.luaL_checkudata(L, ud, tname) end

---@static
---@param luaState System.IntPtr
---@param level number
function m.luaL_where(luaState, level) end

---@static
---@param L System.IntPtr
---@param message string
---@return number
function m.luaL_throw(L, message) end

---@static
---@param luaState System.IntPtr
---@param t number
---@return number
function m.luaL_ref(luaState, t) end

---@static
---@param luaState System.IntPtr
---@param registryIndex number
---@param reference number
function m.luaL_unref(luaState, registryIndex, reference) end

---@static
---@param luaState System.IntPtr
---@param filename string
---@return number
function m.luaL_loadfile(luaState, filename) end

---@static
---@param luaState System.IntPtr
---@param buff string
---@param size number
---@param name string
---@return number
function m.luaL_loadbuffer(luaState, buff, size, name) end

---@static
---@param luaState System.IntPtr
---@param chunk string
---@return number
function m.luaL_loadstring(luaState, chunk) end

---@static
---@return System.IntPtr
function m.luaL_newstate() end

---@static
---@param luaState System.IntPtr
---@param str string
---@param pattern string
---@param replacement string
---@return System.IntPtr
function m.luaL_gsub(luaState, str, pattern, replacement) end

---@overload fun(luaState:System.IntPtr, idx:number, fname:string): @static
---@static
---@param luaState System.IntPtr
---@param idx number
---@param fname string
---@param szhint number
---@return System.IntPtr
function m.luaL_findtable(luaState, idx, fname, szhint) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return string
function m.luaL_typename(luaState, stackPos) end

---@static
---@param luaState System.IntPtr
---@param fileName string
---@return boolean
function m.luaL_dofile(luaState, fileName) end

---@static
---@param luaState System.IntPtr
---@param chunk string
---@return boolean
function m.luaL_dostring(luaState, chunk) end

---@static
---@param luaState System.IntPtr
---@param meta string
function m.luaL_getmetatable(luaState, meta) end

---@static
---@param luaState System.IntPtr
---@return number
function m.lua_ref(luaState) end

---@static
---@param luaState System.IntPtr
---@param reference number
function m.lua_getref(luaState, reference) end

---@static
---@param luaState System.IntPtr
---@param reference number
function m.lua_unref(luaState, reference) end

---@static
---@param L System.IntPtr
function m.tolua_openlibs(L) end

---@static
---@param L System.IntPtr
function m.tolua_openint64(L) end

---@static
---@param L System.IntPtr
---@return number
function m.tolua_openlualibs(L) end

---@static
---@return System.IntPtr
function m.tolua_tag() end

---@static
---@param luaState System.IntPtr
---@param val number
function m.tolua_newudata(luaState, val) end

---@static
---@param luaState System.IntPtr
---@param obj number
---@return number
function m.tolua_rawnetobj(luaState, obj) end

---@static
---@param L System.IntPtr
---@param index number
---@return boolean
function m.tolua_pushudata(L, index) end

---@static
---@param L System.IntPtr
---@param metaRef number
---@param index number
---@return boolean
function m.tolua_pushnewudata(L, metaRef, index) end

---@static
---@param L System.IntPtr
---@param reference number
---@return number
function m.tolua_beginpcall(L, reference) end

---@static
---@param L System.IntPtr
function m.tolua_pushtraceback(L) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return System.Single, System.Single
function m.tolua_getvec2(luaState, stackPos) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return System.Single, System.Single, System.Single
function m.tolua_getvec3(luaState, stackPos) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return System.Single, System.Single, System.Single, System.Single
function m.tolua_getvec4(luaState, stackPos) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return System.Single, System.Single, System.Single, System.Single
function m.tolua_getclr(luaState, stackPos) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return System.Single, System.Single, System.Single, System.Single
function m.tolua_getquat(luaState, stackPos) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return number
function m.tolua_getlayermask(luaState, stackPos) end

---@static
---@param luaState System.IntPtr
---@param x number
---@param y number
function m.tolua_pushvec2(luaState, x, y) end

---@static
---@param luaState System.IntPtr
---@param x number
---@param y number
---@param z number
function m.tolua_pushvec3(luaState, x, y, z) end

---@static
---@param luaState System.IntPtr
---@param x number
---@param y number
---@param z number
---@param w number
function m.tolua_pushvec4(luaState, x, y, z, w) end

---@static
---@param luaState System.IntPtr
---@param x number
---@param y number
---@param z number
---@param w number
function m.tolua_pushquat(luaState, x, y, z, w) end

---@static
---@param luaState System.IntPtr
---@param r number
---@param g number
---@param b number
---@param a number
function m.tolua_pushclr(luaState, r, g, b, a) end

---@static
---@param luaState System.IntPtr
---@param mask number
function m.tolua_pushlayermask(luaState, mask) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return boolean
function m.tolua_isint64(luaState, stackPos) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return number
function m.tolua_toint64(luaState, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return number
function m.tolua_checkint64(L, stackPos) end

---@static
---@param luaState System.IntPtr
---@param n number
function m.tolua_pushint64(luaState, n) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return boolean
function m.tolua_isuint64(luaState, stackPos) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return number
function m.tolua_touint64(luaState, stackPos) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return number
function m.tolua_checkuint64(L, stackPos) end

---@static
---@param luaState System.IntPtr
---@param n number
function m.tolua_pushuint64(luaState, n) end

---@static
---@param L System.IntPtr
function m.tolua_setindex(L) end

---@static
---@param L System.IntPtr
function m.tolua_setnewindex(L) end

---@static
---@param L System.IntPtr
---@return number
function m.toluaL_ref(L) end

---@static
---@param L System.IntPtr
---@param reference number
function m.toluaL_unref(L, reference) end

---@static
---@param L System.IntPtr
---@return System.IntPtr
function m.tolua_getmainstate(L) end

---@static
---@param L System.IntPtr
---@param stackPos number
---@return number
function m.tolua_getvaluetype(L, stackPos) end

---@overload fun(L:System.IntPtr, fullPath:string): @static
---@static
---@param L System.IntPtr
---@param fullPath string
---@param szhint number
---@return boolean
function m.tolua_createtable(L, fullPath, szhint) end

---@static
---@param L System.IntPtr
---@param fullPath string
---@return boolean
function m.tolua_pushluatable(L, fullPath) end

---@static
---@param L System.IntPtr
---@param name string
---@return boolean
function m.tolua_beginmodule(L, name) end

---@static
---@param L System.IntPtr
function m.tolua_endmodule(L) end

---@overload fun(L:System.IntPtr, fullPath:string): @static
---@static
---@param L System.IntPtr
---@param fullPath string
---@param szhint number
---@return boolean
function m.tolua_beginpremodule(L, fullPath, szhint) end

---@static
---@param L System.IntPtr
---@param reference number
function m.tolua_endpremodule(L, reference) end

---@static
---@param L System.IntPtr
---@param path string
---@return boolean
function m.tolua_addpreload(L, path) end

---@overload fun(L:System.IntPtr, name:string, baseMetaRef:number): @static
---@static
---@param L System.IntPtr
---@param name string
---@param baseMetaRef number
---@param reference number
---@return number
function m.tolua_beginclass(L, name, baseMetaRef, reference) end

---@static
---@param L System.IntPtr
function m.tolua_endclass(L) end

---@static
---@param L System.IntPtr
---@param name string
---@param fn System.IntPtr
function m.tolua_function(L, name, fn) end

---@static
---@param name string
---@param sz number
---@return System.IntPtr
function m.tolua_tocbuffer(name, sz) end

---@static
---@param buffer System.IntPtr
function m.tolua_freebuffer(buffer) end

---@static
---@param L System.IntPtr
---@param name string
---@param get System.IntPtr
---@param set System.IntPtr
function m.tolua_variable(L, name, get, set) end

---@static
---@param L System.IntPtr
---@param name string
---@param val number
function m.tolua_constant(L, name, val) end

---@static
---@param L System.IntPtr
---@param name string
---@return number
function m.tolua_beginenum(L, name) end

---@static
---@param L System.IntPtr
function m.tolua_endenum(L) end

---@static
---@param L System.IntPtr
---@param name string
function m.tolua_beginstaticclass(L, name) end

---@static
---@param L System.IntPtr
function m.tolua_endstaticclass(L) end

---@static
---@param L System.IntPtr
---@param fileName string
---@return number
function m.tolua_require(L, fileName) end

---@static
---@param L System.IntPtr
---@param pos number
---@return number
function m.tolua_getmetatableref(L, pos) end

---@static
---@param bit number
---@param flag boolean
function m.tolua_setflag(bit, flag) end

---@static
---@param L System.IntPtr
---@param index number
---@return boolean
function m.tolua_isvptrtable(L, index) end

---@overload fun(L:System.IntPtr, e:System.Exception, o:any, msg:string): @static
---@static
---@param L System.IntPtr
---@param e System.Exception
---@return number
function m.toluaL_exception(L, e) end

---@static
---@param luaState System.IntPtr
---@param buff string
---@param size number
---@param name string
---@return number
function m.tolua_loadbuffer(luaState, buff, size, name) end

---@static
---@param luaState System.IntPtr
---@param index number
---@return boolean
function m.tolua_toboolean(luaState, index) end

---@static
---@param luaState System.IntPtr
---@param idx number
---@return number
function m.tolua_tointeger(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param index number
---@return System.IntPtr, System.Int32
function m.tolua_tolstring(luaState, index) end

---@static
---@param luaState System.IntPtr
---@param str string
---@param size number
function m.tolua_pushlstring(luaState, str, size) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return number
function m.tolua_objlen(luaState, stackPos) end

---@static
---@param luaState System.IntPtr
---@param size number
---@return System.IntPtr
function m.tolua_newuserdata(luaState, size) end

---@static
---@param luaState System.IntPtr
---@param narg number
---@param extramsg string
---@return number
function m.tolua_argerror(luaState, narg, extramsg) end

---@static
---@param L System.IntPtr
---@param msg string
---@return number
function m.tolua_error(L, msg) end

---@static
---@param L System.IntPtr
---@param idx number
---@param key string
---@return number
function m.tolua_getfield(L, idx, key) end

---@static
---@param L System.IntPtr
---@param idx number
---@param key string
---@return number
function m.tolua_setfield(L, idx, key) end

---@static
---@param luaState System.IntPtr
---@param idx number
---@return number
function m.tolua_gettable(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param idx number
---@return number
function m.tolua_settable(luaState, idx) end

---@static
---@param luaState System.IntPtr
---@param stackPos number
---@return number
function m.tolua_getn(luaState, stackPos) end

---@static
---@param str System.IntPtr
---@return number
function m.tolua_strlen(str) end

---@overload fun(luaState:System.IntPtr, func:fun(luaState:System.IntPtr):) @static
---@static
---@param L System.IntPtr
---@param fn System.IntPtr
function m.tolua_pushcfunction(L, fn) end

---@overload fun(L:System.IntPtr, idx:number, name:string): @static
---@static
---@param L System.IntPtr
---@param idx number
---@param name string
---@param size number
---@return string
function m.tolua_findtable(L, idx, name, size) end

---@static
---@param L System.IntPtr
---@param func fun(luaState:System.IntPtr):
---@return System.IntPtr
function m.tolua_atpanic(L, func) end

---@static
---@param luaState System.IntPtr
---@return System.IntPtr
function m.tolua_buffinit(luaState) end

---@static
---@param b System.IntPtr
---@param str string
---@param l number
function m.tolua_addlstring(b, str, l) end

---@static
---@param b System.IntPtr
---@param s string
function m.tolua_addstring(b, s) end

---@static
---@param b System.IntPtr
---@param s number
function m.tolua_addchar(b, s) end

---@static
---@param b System.IntPtr
function m.tolua_pushresult(b) end

---@static
---@param L System.IntPtr
---@param deltaTime number
---@param unscaledDelta number
---@return number
function m.tolua_update(L, deltaTime, unscaledDelta) end

---@static
---@param L System.IntPtr
---@return number
function m.tolua_lateupdate(L) end

---@static
---@param L System.IntPtr
---@param fixedTime number
---@return number
function m.tolua_fixedupdate(L, fixedTime) end

---@static
---@param L System.IntPtr
---@param get System.IntPtr
---@param set System.IntPtr
function m.tolua_regthis(L, get, set) end

---@static
---@param L System.IntPtr
---@param level number
---@return number
function m.tolua_where(L, level) end

---@static
---@param L System.IntPtr
---@param get fun(luaState:System.IntPtr):
---@param set fun(luaState:System.IntPtr):
function m.tolua_bindthis(L, get, set) end

---@static
---@param L System.IntPtr
---@param pos number
---@return number
function m.tolua_getclassref(L, pos) end

LuaInterface.LuaDLL = m
return m
