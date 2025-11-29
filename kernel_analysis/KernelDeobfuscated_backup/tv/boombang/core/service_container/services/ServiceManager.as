package src.tv.boombang.core.service_container.services
{
   import flash.external.*;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.service_container.*;
   import src.utils.*;
   
   public class _wl11587 extends _rb9290
   {
      
      private static const _sw6658:String = _ly14211._ns12055 + "/play/flash";
      
      public function _wl11587()
      {
         super();
      }
      
      override public function start(param1:Object) : Boolean
      {
         dispatchEvent(new _vw13249(this,_vw13249._fq14658));
         return true;
      }
      
      override public function stop() : Boolean
      {
         dispatchEvent(new _vw13249(this,_vw13249._ij6606));
         return true;
      }
      
      override public function get _kn5152() : Boolean
      {
         return true;
      }
      
      public function _hv9029(param1:String) : void
      {
         _jp4046.callJavaScript("loadInterstitial()");
         var _loc2_:* = "_gaq.push([\'_trackPageview\',\'" + _sw6658 + param1 + "\'])";
         ExternalInterface.call(_loc2_);
      }
      
      public function _fs11949(param1:String, param2:String, param3:String = "", param4:int = 0) : void
      {
         var _loc5_:* = "_gaq.push([\'_trackEvent\',\'" + param1 + "\',\'" + param2 + "\',\'" + param3 + "\'," + param4 + "])";
         ExternalInterface.call(_loc5_);
      }
      
      public function _sx11987(param1:String, param2:String, param3:String, param4:String) : void
      {
         var _loc5_:* = "_gaq.push([\'_trackSocial\',\'" + param1 + "\',\'" + param2 + "\',\'" + param3 + "\',\'" + param4 + "\'])";
         ExternalInterface.call(_loc5_);
      }
      
      public function _mc9894(param1:int, param2:String, param3:String, param4:int = 1) : void
      {
         var _loc5_:* = "_gaq.push([\'_setCustomVar\',\'" + param1 + "\',\'" + param2 + "\',\'" + param3 + "\',\'" + param4 + "\'])";
         ExternalInterface.call(_loc5_);
      }
   }
}

