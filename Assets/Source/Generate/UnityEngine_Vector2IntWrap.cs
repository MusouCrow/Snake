﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class UnityEngine_Vector2IntWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(UnityEngine.Vector2Int), null);
		L.RegFunction("Set", Set);
		L.RegFunction(".geti", get_Item);
		L.RegFunction("get_Item", get_Item);
		L.RegFunction(".seti", set_Item);
		L.RegFunction("set_Item", set_Item);
		L.RegFunction("Distance", Distance);
		L.RegFunction("Min", Min);
		L.RegFunction("Max", Max);
		L.RegFunction("Scale", Scale);
		L.RegFunction("Clamp", Clamp);
		L.RegFunction("FloorToInt", FloorToInt);
		L.RegFunction("CeilToInt", CeilToInt);
		L.RegFunction("RoundToInt", RoundToInt);
		L.RegFunction("Equals", Equals);
		L.RegFunction("GetHashCode", GetHashCode);
		L.RegFunction("ToString", ToString);
		L.RegFunction("New", _CreateUnityEngine_Vector2Int);
		L.RegVar("this", _this, null);
		L.RegFunction("__add", op_Addition);
		L.RegFunction("__sub", op_Subtraction);
		L.RegFunction("__mul", op_Multiply);
		L.RegFunction("__eq", op_Equality);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("x", get_x, set_x);
		L.RegVar("y", get_y, set_y);
		L.RegVar("magnitude", get_magnitude, null);
		L.RegVar("sqrMagnitude", get_sqrMagnitude, null);
		L.RegVar("zero", get_zero, null);
		L.RegVar("one", get_one, null);
		L.RegVar("up", get_up, null);
		L.RegVar("down", get_down, null);
		L.RegVar("left", get_left, null);
		L.RegVar("right", get_right, null);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateUnityEngine_Vector2Int(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 2)
			{
				int arg0 = (int)LuaDLL.luaL_checknumber(L, 1);
				int arg1 = (int)LuaDLL.luaL_checknumber(L, 2);
				UnityEngine.Vector2Int obj = new UnityEngine.Vector2Int(arg0, arg1);
				ToLua.PushValue(L, obj);
				return 1;
			}
			else if (count == 0)
			{
				UnityEngine.Vector2Int obj = new UnityEngine.Vector2Int();
				ToLua.PushValue(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: UnityEngine.Vector2Int.New");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _get_this(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)ToLua.CheckObject(L, 1, typeof(UnityEngine.Vector2Int));
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			int o = obj[arg0];
			LuaDLL.lua_pushinteger(L, o);
			ToLua.SetBack(L, 1, obj);
			return 1;

		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _set_this(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)ToLua.CheckObject(L, 1, typeof(UnityEngine.Vector2Int));
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			int arg1 = (int)LuaDLL.luaL_checknumber(L, 3);
			obj[arg0] = arg1;
			ToLua.SetBack(L, 1, obj);
			return 0;

		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _this(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushvalue(L, 1);
			LuaDLL.tolua_bindthis(L, _get_this, _set_this);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Set(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)ToLua.CheckObject(L, 1, typeof(UnityEngine.Vector2Int));
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			int arg1 = (int)LuaDLL.luaL_checknumber(L, 3);
			obj.Set(arg0, arg1);
			ToLua.SetBack(L, 1, obj);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Item(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)ToLua.CheckObject(L, 1, typeof(UnityEngine.Vector2Int));
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			int o = obj[arg0];
			LuaDLL.lua_pushinteger(L, o);
			ToLua.SetBack(L, 1, obj);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Item(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)ToLua.CheckObject(L, 1, typeof(UnityEngine.Vector2Int));
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			int arg1 = (int)LuaDLL.luaL_checknumber(L, 3);
			obj[arg0] = arg1;
			ToLua.SetBack(L, 1, obj);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Distance(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Vector2Int arg0 = StackTraits<UnityEngine.Vector2Int>.Check(L, 1);
			UnityEngine.Vector2Int arg1 = StackTraits<UnityEngine.Vector2Int>.Check(L, 2);
			float o = UnityEngine.Vector2Int.Distance(arg0, arg1);
			LuaDLL.lua_pushnumber(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Min(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Vector2Int arg0 = StackTraits<UnityEngine.Vector2Int>.Check(L, 1);
			UnityEngine.Vector2Int arg1 = StackTraits<UnityEngine.Vector2Int>.Check(L, 2);
			UnityEngine.Vector2Int o = UnityEngine.Vector2Int.Min(arg0, arg1);
			ToLua.PushValue(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Max(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Vector2Int arg0 = StackTraits<UnityEngine.Vector2Int>.Check(L, 1);
			UnityEngine.Vector2Int arg1 = StackTraits<UnityEngine.Vector2Int>.Check(L, 2);
			UnityEngine.Vector2Int o = UnityEngine.Vector2Int.Max(arg0, arg1);
			ToLua.PushValue(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Scale(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)ToLua.CheckObject(L, 1, typeof(UnityEngine.Vector2Int));
			UnityEngine.Vector2Int arg0 = StackTraits<UnityEngine.Vector2Int>.Check(L, 2);
			obj.Scale(arg0);
			ToLua.SetBack(L, 1, obj);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Clamp(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)ToLua.CheckObject(L, 1, typeof(UnityEngine.Vector2Int));
			UnityEngine.Vector2Int arg0 = StackTraits<UnityEngine.Vector2Int>.Check(L, 2);
			UnityEngine.Vector2Int arg1 = StackTraits<UnityEngine.Vector2Int>.Check(L, 3);
			obj.Clamp(arg0, arg1);
			ToLua.SetBack(L, 1, obj);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int FloorToInt(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UnityEngine.Vector2 arg0 = ToLua.ToVector2(L, 1);
			UnityEngine.Vector2Int o = UnityEngine.Vector2Int.FloorToInt(arg0);
			ToLua.PushValue(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int CeilToInt(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UnityEngine.Vector2 arg0 = ToLua.ToVector2(L, 1);
			UnityEngine.Vector2Int o = UnityEngine.Vector2Int.CeilToInt(arg0);
			ToLua.PushValue(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int RoundToInt(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UnityEngine.Vector2 arg0 = ToLua.ToVector2(L, 1);
			UnityEngine.Vector2Int o = UnityEngine.Vector2Int.RoundToInt(arg0);
			ToLua.PushValue(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int op_Addition(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Vector2Int arg0 = StackTraits<UnityEngine.Vector2Int>.Check(L, 1);
			UnityEngine.Vector2Int arg1 = StackTraits<UnityEngine.Vector2Int>.Check(L, 2);
			UnityEngine.Vector2Int o = arg0 + arg1;
			ToLua.PushValue(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int op_Subtraction(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Vector2Int arg0 = StackTraits<UnityEngine.Vector2Int>.Check(L, 1);
			UnityEngine.Vector2Int arg1 = StackTraits<UnityEngine.Vector2Int>.Check(L, 2);
			UnityEngine.Vector2Int o = arg0 - arg1;
			ToLua.PushValue(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int op_Multiply(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 2 && TypeChecker.CheckTypes<int>(L, 2))
			{
				UnityEngine.Vector2Int arg0 = StackTraits<UnityEngine.Vector2Int>.Check(L, 1);
				int arg1 = (int)LuaDLL.lua_tonumber(L, 2);
				UnityEngine.Vector2Int o = arg0 * arg1;
				ToLua.PushValue(L, o);
				return 1;
			}
			else if (count == 2 && TypeChecker.CheckTypes<UnityEngine.Vector2Int>(L, 2))
			{
				UnityEngine.Vector2Int arg0 = StackTraits<UnityEngine.Vector2Int>.Check(L, 1);
				UnityEngine.Vector2Int arg1 = StackTraits<UnityEngine.Vector2Int>.To(L, 2);
				UnityEngine.Vector2Int o = arg0 * arg1;
				ToLua.PushValue(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: UnityEngine.Vector2Int.op_Multiply");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int op_Equality(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Vector2Int arg0 = StackTraits<UnityEngine.Vector2Int>.To(L, 1);
			UnityEngine.Vector2Int arg1 = StackTraits<UnityEngine.Vector2Int>.To(L, 2);
			bool o = arg0 == arg1;
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Equals(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 2 && TypeChecker.CheckTypes<UnityEngine.Vector2Int>(L, 2))
			{
				UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)ToLua.CheckObject(L, 1, typeof(UnityEngine.Vector2Int));
				UnityEngine.Vector2Int arg0 = StackTraits<UnityEngine.Vector2Int>.To(L, 2);
				bool o = obj.Equals(arg0);
				LuaDLL.lua_pushboolean(L, o);
				ToLua.SetBack(L, 1, obj);
				return 1;
			}
			else if (count == 2 && TypeChecker.CheckTypes<object>(L, 2))
			{
				UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)ToLua.CheckObject(L, 1, typeof(UnityEngine.Vector2Int));
				object arg0 = ToLua.ToVarObject(L, 2);
				bool o = obj.Equals(arg0);
				LuaDLL.lua_pushboolean(L, o);
				ToLua.SetBack(L, 1, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: UnityEngine.Vector2Int.Equals");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetHashCode(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)ToLua.CheckObject(L, 1, typeof(UnityEngine.Vector2Int));
			int o = obj.GetHashCode();
			LuaDLL.lua_pushinteger(L, o);
			ToLua.SetBack(L, 1, obj);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ToString(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)ToLua.CheckObject(L, 1, typeof(UnityEngine.Vector2Int));
			string o = obj.ToString();
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_x(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)o;
			int ret = obj.x;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index x on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_y(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)o;
			int ret = obj.y;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index y on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_magnitude(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)o;
			float ret = obj.magnitude;
			LuaDLL.lua_pushnumber(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index magnitude on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_sqrMagnitude(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)o;
			int ret = obj.sqrMagnitude;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index sqrMagnitude on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_zero(IntPtr L)
	{
		try
		{
			ToLua.PushValue(L, UnityEngine.Vector2Int.zero);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_one(IntPtr L)
	{
		try
		{
			ToLua.PushValue(L, UnityEngine.Vector2Int.one);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_up(IntPtr L)
	{
		try
		{
			ToLua.PushValue(L, UnityEngine.Vector2Int.up);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_down(IntPtr L)
	{
		try
		{
			ToLua.PushValue(L, UnityEngine.Vector2Int.down);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_left(IntPtr L)
	{
		try
		{
			ToLua.PushValue(L, UnityEngine.Vector2Int.left);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_right(IntPtr L)
	{
		try
		{
			ToLua.PushValue(L, UnityEngine.Vector2Int.right);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_x(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)o;
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			obj.x = arg0;
			ToLua.SetBack(L, 1, obj);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index x on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_y(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.Vector2Int obj = (UnityEngine.Vector2Int)o;
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			obj.y = arg0;
			ToLua.SetBack(L, 1, obj);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index y on a nil value");
		}
	}
}

