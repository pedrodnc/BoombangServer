package src.tv.boombang.core.service_container.services
{
   import flash.external.*;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.service_container.*;
   import src.utils.*;
   
   public class ServiceManager extends ServiceProvider
   {
      
      private static const textString:String = RuntimeParams._ns12055 + "/play/flash";
      
      public function ServiceManager()
      {
         super();
      }
      
      override public function start(param1:Object) : Boolean
      {
         dispatchEvent(new ServiceContainerEvents(this,ServiceContainerEvents.textString));
         return true;
      }
      
      override public function stop() : Boolean
      {
         dispatchEvent(new ServiceContainerEvents(this,ServiceContainerEvents.textString1));
         return true;
      }
      
      override public function get loadResource2() : Boolean
      {
         return true;
      }
      
      public function loadResource(param1:String) : void
      {
         UtilsUtils.callJavaScript("loadInterstitial()");
         var count:* = "_gaq.push([\'_trackPageview\',\'" + textString + param1 + "\'])";
         ExternalInterface.call(count);
      }
      
      public function _fs11949(param1:String, param2:String, param3:String = "", param4:int = 0) : void
      {
         var count2:* = "_gaq.push([\'_trackEvent\',\'" + param1 + "\',\'" + param2 + "\',\'" + param3 + "\'," + param4 + "])";
         ExternalInterface.call(count2);
      }
      
      public function _sx11987(param1:String, param2:String, param3:String, param4:String) : void
      {
         var count2:* = "_gaq.push([\'_trackSocial\',\'" + param1 + "\',\'" + param2 + "\',\'" + param3 + "\',\'" + param4 + "\'])";
         ExternalInterface.call(count2);
      }
      
      public function _mc9894(param1:int, param2:String, param3:String, param4:int = 1) : void
      {
         var count2:* = "_gaq.push([\'_setCustomVar\',\'" + param1 + "\',\'" + param2 + "\',\'" + param3 + "\',\'" + param4 + "\'])";
         ExternalInterface.call(count2);
      }
   }
}

