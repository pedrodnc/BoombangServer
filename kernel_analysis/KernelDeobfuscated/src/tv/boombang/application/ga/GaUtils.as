package src.tv.boombang.application.ga
{
   import flash.utils.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class GaUtils
   {
      
      public static const textString:String = "Lobby";
      
      private static var _mw16030:Dictionary = new Dictionary();
      
      public function GaUtils()
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
            var count:int = getTimer() - _mw16030[param1];
            (ServiceLocator.get(ServiceManager) as ServiceManager)._fs11949("AssetsLoading",param1,"time",0);
            delete _mw16030[param1];
         }
      }
   }
}

