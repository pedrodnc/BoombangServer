package src.modules.interfaz
{
   import src.logs.*;
   import src.modules.interfaz.baseChat.*;
   import src.person.*;
   
   public class _nq6047
   {
      
      public function _nq6047()
      {
         super();
      }
      
      public static function _fc7829(param1:int, param2:_tl4091, param3:String = "") : Boolean
      {
         var _loc5_:uint = 0;
         var _loc4_:int = int(param2._pf8204.length);
         while(_loc5_ < _loc4_)
         {
            if(param2._pf8204[_loc5_] != null)
            {
               if((param2._pf8204[_loc5_] as _ta2443)._md8722.id == param1)
               {
                  return true;
               }
            }
            _loc5_++;
         }
         _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,param3,"idPerson invalid=" + param1));
         return false;
      }
      
      public static function _le11313(param1:int, param2:_tl4091) : Boolean
      {
         if(param1 < 0 || param1 >= param2._pf8204.length)
         {
            return false;
         }
         if(param2._pf8204[param1] == null)
         {
            return false;
         }
         return true;
      }
      
      public static function _vh3357(param1:int, param2:_tl4091) : _ta2443
      {
         var _loc4_:uint = 0;
         var _loc3_:int = int(param2._pf8204.length);
         while(_loc4_ < _loc3_)
         {
            if(param2._pf8204[_loc4_] != null)
            {
               if((param2._pf8204[_loc4_] as _ta2443)._md8722.id == param1)
               {
                  return param2._pf8204[_loc4_] as _ta2443;
               }
            }
            _loc4_++;
         }
         return null;
      }
      
      public static function _pb10174(param1:Array, param2:uint, param3:String = "") : Boolean
      {
         if(param1.length < param2)
         {
            _qn13596.getInstance()._kp3815(new _ex15859(_qn13596._ny10327,param3,param1.toString()));
            return false;
         }
         return true;
      }
      
      public static function _vg1358() : void
      {
      }
      
      public static function _gq12169(param1:int, param2:String) : Boolean
      {
         if(param1 == _db131._rf10272 || param1 == _db131._br14650 || param1 == _db131._ah8415 || param1 == _db131._rr10320 || param1 == 40 || param1 == 41 || param1 == _db131._gm15586 || param1 == _db131._yc7932 || param1 == _db131._di15294 || param1 == _db131._ou5551 || param1 == _db131._hn2638 || param1 == _db131._ta15045 || param1 == _db131._qi7227 || param1 == _db131._xv2211 || param1 == _db131._xv1232)
         {
            return true;
         }
         _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,param2,"typeChat invalid=" + param1));
         return false;
      }
   }
}

