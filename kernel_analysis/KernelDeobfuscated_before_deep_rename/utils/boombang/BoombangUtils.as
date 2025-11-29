package src.utils.boombang
{
   import src.config.*;
   
   public class BoombangUtils
   {
      
      public function BoombangUtils()
      {
         super();
      }
      
      public static function _jc12790(param1:Object) : void
      {
         if(!Configuration._ih15806)
         {
            return;
         }
         if(param1["key1"] != null && param1["key1"] != undefined)
         {
            Configuration._rx1560 = param1["key1"];
         }
         if(param1["key2"] != null && param1["key2"] != undefined)
         {
            Configuration._va14143 = param1["key2"];
         }
         if(param1["port"] != null && param1["port"] != undefined)
         {
            Configuration._ja1502 = param1["port"];
         }
         if(param1["server"] != null && param1["server"] != undefined)
         {
            Configuration._vx10360 = param1["server"];
         }
      }
   }
}

