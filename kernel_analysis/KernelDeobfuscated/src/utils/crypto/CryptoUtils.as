package src.utils.crypto
{
   import com.hurlant.crypto.hash.*;
   import com.hurlant.util.*;
   import flash.utils.*;
   
   public class CryptoUtils
   {
      
      public static const urlString:String = "0GbXvQtRH4Q";
      
      public function CryptoUtils()
      {
         super();
      }
      
      public static function hashData(param1:String) : String
      {
         var count:MD5 = new MD5();
         var count3:ByteArray = UtilUtils.toArray(UtilUtils.fromString(param1));
         var count1:ByteArray = count.hash(count3);
         return UtilUtils.fromArray(count1);
      }
      
      public static function hashData1(param1:ByteArray, param2:String) : String
      {
         var count3:ByteArray = new ByteArray();
         var count1:MD5 = new MD5();
         count3.writeBytes(param1,0,param1.length);
         count3.writeUTFBytes(param2);
         var count2:String = UtilUtils.fromArray(count1.hash(count3));
         return hashData(param2 + count2);
      }
   }
}

