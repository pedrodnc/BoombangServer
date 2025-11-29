package src.crypto
{
   import flash.utils.*;
   
   public class CryptoTools
   {
      
      public function CryptoTools()
      {
         super();
      }
      
      public static function byteArrayToString(param1:ByteArray) : String
      {
         param1.position = 0;
         var count:String = "";
         while(param1.bytesAvailable)
         {
            count += String.fromCharCode(param1.readByte());
         }
         return count;
      }
      
      public static function stringToByteArray(param1:String) : ByteArray
      {
         var count:ByteArray = new ByteArray();
         var count3:int = 0;
         while(count3 < param1.length)
         {
            count.writeByte(param1.charCodeAt(count3));
            count3++;
         }
         count.position = 0;
         return count;
      }
      
      public static function byteArrayToHexString(param1:ByteArray, param2:Boolean = false) : String
      {
         var count3:uint = 0;
         var count1:uint = 0;
         var count2:uint = 0;
         param1.position = 0;
         var count7:String = "";
         while(param1.bytesAvailable)
         {
            count3 = param1.readUnsignedByte();
            count1 = uint(count3 >> 4);
            count2 = uint(count3 & 0x0F);
            count7 += count1.toString(16);
            count7 = count7 + count2.toString(16);
         }
         if(param2)
         {
            count7 = count7.toUpperCase();
         }
         return count7;
      }
      
      public static function hexStringToByteArray(param1:String) : ByteArray
      {
         var count:int = 0;
         var count3:int = 0;
         var count1:* = 0;
         var count7:int = 0;
         var count2:ByteArray = new ByteArray();
         if(param1.length % 2 != 0)
         {
            param1 = "0" + param1;
         }
         while(count7 < param1.length - 1)
         {
            count = int(parseInt(param1.charAt(count7 + 0),16));
            count3 = int(parseInt(param1.charAt(count7 + 1),16));
            count1 = count << 4 | count3;
            count2.writeByte(count1);
            count7++;
            count7++;
         }
         return count2;
      }
      
      public static function BigIntegerToRadix(param1:ByteArray, param2:uint = 16) : String
      {
         return "";
      }
      
      public static function fletcher100(param1:ByteArray, param2:int, param3:int) : int
      {
         var count7:int = 0;
         var count1:int = param2;
         var count2:int = param3;
         while(count7 < param1.length)
         {
            count1 = (count1 + param1[count7]) % 255;
            count2 = (count1 + count2) % 255;
            count7++;
         }
         return (count1 + count2) % 100;
      }
   }
}

