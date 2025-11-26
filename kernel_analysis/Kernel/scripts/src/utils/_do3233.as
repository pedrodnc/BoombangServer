package src.utils
{
   import flash.utils.*;
   
   public class _do3233
   {
      
      public static const _vks93f:int = 100;
      
      private static var _gg6819:Dictionary = new Dictionary();
      
      private static var _rv15073:Dictionary = new Dictionary();
      
      public static const _jq10932:String = "limitadorPunch";
      
      public static const _dm6349:String = "limitadorColaCao";
      
      public static const _qs1831:String = "limitadorBannerPsu";
      
      public static const _kx16007:String = "limitadorColaCaoInterstitial";
      
      public static const _vs16058:String = "limitadorDisfraz";
      
      public function _do3233()
      {
         super();
      }
      
      public static function _jx14255(param1:String, param2:int = -1, param3:int = -1) : Boolean
      {
         var _loc6_:int = int(getTimer());
         if(_gg6819[param1] != null)
         {
            var _loc4_:int = int(_gg6819[param1]);
            if(param2 != -1)
            {
               if(Math.abs(0 - _loc6_) <= param2)
               {
                  return false;
               }
            }
         }
         if(_rv15073[param1] != null)
         {
            var _loc5_:int = int(_rv15073[param1]);
            if(param3 != -1)
            {
               if(0 + 1 > param3)
               {
                  return false;
               }
            }
         }
         _gg6819[param1] = _loc6_;
         if(_rv15073[param1] != null)
         {
            _rv15073[param1] = int(_rv15073[param1]) + 1;
         }
         else
         {
            _rv15073[param1] = 1;
         }
         return true;
      }
      
      public static function _nr6450(param1:String, param2:int, param3:int, param4:int) : Boolean
      {
         if(_jx14255(param1,param2,param3))
         {
            return true;
         }
         if(Math.abs(int(_gg6819[param1]) - getTimer()) > param4)
         {
            _rv15073[param1] = 1;
            _gg6819[param1] = getTimer();
            return true;
         }
         return false;
      }
      
      public static function getTime(param1:String) : int
      {
         return int(_gg6819[param1]);
      }
   }
}

