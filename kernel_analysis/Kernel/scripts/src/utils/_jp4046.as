package src.utils
{
   import flash.external.*;
   
   public class _jp4046
   {
      
      public function _jp4046()
      {
         super();
      }
      
      public static function callJavaScript(param1:String) : String
      {
         var result:String = null;
         var _qh7867:String = null;
         var nameFunction:String = param1;
         try
         {
            _qh7867 = "function() {return " + nameFunction + ";}";
            result = String(ExternalInterface.call(_qh7867));
         }
         catch(e:Error)
         {
            result = null;
         }
         return result;
      }
      
      public static function _qh12544(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         _loc5_ = "width=" + param2;
         _loc5_ = _loc5_ + (",height=" + param3);
         _loc5_ = _loc5_ + ",left=0,top=0,toolbar=No,location=No,scrollbars=No,status=No,resizable=No,fullscreen=No";
         _loc4_ = "window.open(\'" + param1 + "\',\'newWin\',\'" + _loc5_ + "\');";
         callJavaScript(_loc4_);
      }
      
      public static function _vy3269() : String
      {
         return callJavaScript("window.top.location.href");
      }
      
      public static function _xr1511() : Boolean
      {
         return Boolean(callJavaScript("( ( parent == window ) && ( self == top ) )"));
      }
      
      public static function _co37() : String
      {
         return callJavaScript("BrowserDetect.browser + \' \' + BrowserDetect.version");
      }
      
      public static function _mu3241() : String
      {
         return callJavaScript("navigator.userAgent");
      }
   }
}

