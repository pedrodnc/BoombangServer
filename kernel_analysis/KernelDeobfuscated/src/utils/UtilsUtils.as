package src.utils
{
   import flash.external.*;
   
   public class UtilsUtils
   {
      
      public function UtilsUtils()
      {
         super();
      }
      
      public static function callJavaScript(param1:String) : String
      {
         var result:String = null;
         var textString:String = null;
         var nameFunction:String = param1;
         try
         {
            textString = "function() {return " + nameFunction + ";}";
            result = String(ExternalInterface.call(textString));
         }
         catch(e:Error)
         {
            result = null;
         }
         return result;
      }
      
      public static function show(param1:String, param2:int, param3:int) : void
      {
         var count1:* = null;
         var count2:* = null;
         count2 = "width=" + param2;
         count2 = count2 + (",height=" + param3);
         count2 = count2 + ",left=0,top=0,toolbar=No,location=No,scrollbars=No,status=No,resizable=No,fullscreen=No";
         count1 = "window.open(\'" + param1 + "\',\'newWin\',\'" + count2 + "\');";
         callJavaScript(count1);
      }
      
      public static function getString() : String
      {
         return callJavaScript("window.top.location.href");
      }
      
      public static function _xr1511() : Boolean
      {
         return Boolean(callJavaScript("( ( parent == window ) && ( self == top ) )"));
      }
      
      public static function getString1() : String
      {
         return callJavaScript("BrowserDetect.browser + \' \' + BrowserDetect.version");
      }
      
      public static function getString2() : String
      {
         return callJavaScript("navigator.userAgent");
      }
   }
}

