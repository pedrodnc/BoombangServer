package src.crypto.hurlant.util
{
   import flash.utils.*;
   
   public class UtilUtils
   {
      
      public function UtilUtils()
      {
         super();
      }
      
      public static function toArray(param1:String) : ByteArray
      {
         param1 = param1.replace(/^0x|\s|:/gm,"");
         var count:ByteArray = new ByteArray();
         if((param1.length & 1) == 1)
         {
            param1 = "0" + param1;
         }
         var count3:uint = 0;
         while(count3 < param1.length)
         {
            count[count3 / 2] = parseInt(param1.substr(count3,2),16);
            count3 += 2;
         }
         return count;
      }
      
      public static function fromArray(param1:ByteArray, param2:Boolean = false) : String
      {
         var count3:* = "";
         var count1:uint = 0;
         while(count1 < param1.length)
         {
            count3 += ("0" + param1[count1].toString(16)).substr(-2,2);
            if(param2)
            {
               if(count1 < param1.length - 1)
               {
                  count3 += ":";
               }
            }
            count1++;
         }
         return count3;
      }
      
      public static function toString(param1:String, param2:String = "utf-8") : String
      {
         var count3:ByteArray = toArray(param1);
         return count3.readMultiByte(count3.length,param2);
      }
      
      public static function toRawString(param1:String) : String
      {
         return toString(param1,"iso-8859-1");
      }
      
      public static function fromString(param1:String, param2:Boolean = false, param3:String = "utf-8") : String
      {
         var count1:ByteArray = new ByteArray();
         count1.writeMultiByte(param1,param3);
         return fromArray(count1,param2);
      }
      
      public static function fromRawString(param1:String, param2:Boolean = false) : String
      {
         return fromString(param1,param2,"iso-8859-1");
      }
   }
}

