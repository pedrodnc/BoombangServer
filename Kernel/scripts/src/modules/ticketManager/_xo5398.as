package src.modules.ticketManager
{
   import flash.utils.*;
   import src.logs.*;
   import src.modules.clickBlock.*;
   
   public class _xo5398
   {
      
      private static var _hj12780:Dictionary = new Dictionary();
      
      private static var _yn8748:String = "";
      
      private static var _ju4220:String = "";
      
      public static var _sl14080:String = "EnterAreaPublic_ChooseSceneModule";
      
      public static var _rb2117:String = "EnterAreaCasa_ChooseSceneModule";
      
      public static var _eu919:String = "MyHomeClick";
      
      public static var _sq1123:String = "ChooseIslaModule";
      
      public static var _ir800:String = "InterfaceModule";
      
      public static var _ec1664:String = "CODEPRESS_ALTA_LOC_OK";
      
      public static var _js15673:String = "enterSceneBpad";
      
      public static var _vi12494:String = "IrAlli";
      
      public function _xo5398()
      {
         super();
      }
      
      public static function _xm12587(param1:String) : Boolean
      {
         if(_hj12780[param1] >= 1)
         {
            _vs16039("Ya existen " + _hj12780[param1] + " tickets del evento/clase " + param1,"");
            var _loc2_:* = _hj12780;
            var _loc3_:* = param1;
            var _loc4_:* = undefined[undefined] - 1;
            undefined[undefined] = undefined;
            return false;
         }
         _hj12780[param1] = 1;
         _yn8748 = param1;
         _bb1400._po7796(_bb1400._to13429);
         return true;
      }
      
      public static function _xh10884(param1:String) : Boolean
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(_hj12780[param1] == 1)
         {
            _loc2_ = _hj12780;
            _loc3_ = param1;
            _loc4_ = _loc2_[_loc3_] - 1;
            _loc2_[_loc3_] = _loc4_;
            _ju4220 = param1;
            return true;
         }
         if(_ao15042 == param1)
         {
            _vs16039("El evento/clase " + param1," no registra ningun ticket");
         }
         return false;
      }
      
      private static function _vs16039(param1:String, param2:String) : void
      {
         _bb1400._dj5576();
         _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,param1,param2));
      }
      
      public static function get _hd36() : int
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         for(_loc1_ in _hj12780)
         {
            if(_hj12780[_loc1_] > 0)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public static function _cl15459() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in _hj12780)
         {
            _hj12780[_loc1_] = 0;
         }
         _bb1400._dj5576();
      }
      
      public static function get _ao15042() : String
      {
         return _yn8748;
      }
      
      public static function get _wj5205() : String
      {
         return _ju4220;
      }
   }
}

