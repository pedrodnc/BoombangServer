package src.tv.boombang.application.ga
{
   import flash.utils.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class _oh3064
   {
      
      public static const _xo6212:String = "Lobby";
      
      private static var _mw16030:Dictionary = new Dictionary();
      
      public function _oh3064()
      {
         super();
      }
      
      public static function start(param1:String) : void
      {
         _mw16030[param1] = getTimer();
      }
      
      public static function finish(param1:String) : void
      {
         if(_mw16030[param1])
         {
            var _loc2_:int = getTimer() - _mw16030[param1];
            (_lh7543.get(_wl11587) as _wl11587)._fs11949("AssetsLoading",param1,"time",0);
            delete _mw16030[param1];
         }
      }
   }
}

