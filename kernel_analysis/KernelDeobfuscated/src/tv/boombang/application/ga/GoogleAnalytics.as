package src.tv.boombang.application.ga
{
   import flash.utils.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class GoogleAnalytics
   {
      
      private static var count:Number;
      
      private static var textString:String;
      
      public static const textString1:String = "loginResponse";
      
      public static const textString2:String = "chatResponse";
      
      private static const count1:Number = 1;
      
      private static var textString3:String = "";
      
      public function GoogleAnalytics()
      {
         super();
      }
      
      public static function start(param1:String, param2:String = "") : void
      {
         var count3:Number = NaN;
         if(param1 == textString2)
         {
            count3 = Math.random() * 100;
            if(count3 > count1)
            {
               return;
            }
            textString = param2;
         }
         textString3 = param1;
         count = getTimer();
      }
      
      public static function finish(param1:String, param2:String = "") : void
      {
         if(textString3 == param1)
         {
            if(textString3 == textString2 && textString != param2)
            {
               return;
            }
            count = getTimer() - count;
            (ServiceLocator.get(ServiceManager) as ServiceManager)._fs11949("MusResponse",textString3,"time",count);
            textString3 = "";
            textString = "";
         }
      }
   }
}

