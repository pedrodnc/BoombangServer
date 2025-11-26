package src.tv.boombang.application.ga
{
   import flash.utils.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class GoogleAnalytics
   {
      
      private static var _ai15302:Number;
      
      private static var _pe6197:String;
      
      public static const _jd15318:String = "loginResponse";
      
      public static const _fn5276:String = "chatResponse";
      
      private static const _ln5750:Number = 1;
      
      private static var _rq14107:String = "";
      
      public function GoogleAnalytics()
      {
         super();
      }
      
      public static function start(param1:String, param2:String = "") : void
      {
         var _loc3_:Number = NaN;
         if(param1 == _fn5276)
         {
            _loc3_ = Math.random() * 100;
            if(_loc3_ > _ln5750)
            {
               return;
            }
            _pe6197 = param2;
         }
         _rq14107 = param1;
         _ai15302 = getTimer();
      }
      
      public static function finish(param1:String, param2:String = "") : void
      {
         if(_rq14107 == param1)
         {
            if(_rq14107 == _fn5276 && _pe6197 != param2)
            {
               return;
            }
            _ai15302 = getTimer() - _ai15302;
            (ServiceLocator.get(ServiceManager) as ServiceManager)._fs11949("MusResponse",_rq14107,"time",_ai15302);
            _rq14107 = "";
            _pe6197 = "";
         }
      }
   }
}

