package src.utils.crypto
{
   import com.hurlant.crypto.hash.*;
   import com.hurlant.util.*;
   import flash.utils.*;
   
   public class _yb2400
   {
      
      public static const _bb4346:String = "0GbXvQtRH4Q";
      
      public function _yb2400()
      {
         super();
      }
      
      public static function _we5952(param1:String) : String
      {
         var _loc2_:MD5 = new MD5();
         var _loc3_:ByteArray = Hex.toArray(Hex.fromString(param1));
         var _loc4_:ByteArray = _loc2_.hash(_loc3_);
         return Hex.fromArray(_loc4_);
      }
      
      public static function _lm11547(param1:ByteArray, param2:String) : String
      {
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:MD5 = new MD5();
         _loc3_.writeBytes(param1,0,param1.length);
         _loc3_.writeUTFBytes(param2);
         var _loc5_:String = Hex.fromArray(_loc4_.hash(_loc3_));
         return _we5952(param2 + _loc5_);
      }
   }
}

