package com.hurlant.crypto.symmetric
{
   import flash.utils.*;
   
   public class CFB8Mode extends IVMode implements IMode
   {
      
      public function CFB8Mode(param1:ISymmetricKey, param2:IPad = null)
      {
         super(param1,null);
      }
      
      public function _qw34210(param1:ByteArray) : void
      {
         var _loc5_:uint = 0;
         var _loc2_:ByteArray = getIV4e();
         var _loc3_:ByteArray = new ByteArray();
         while(0 < param1.length)
         {
            _loc3_.position = 0;
            _loc3_.writeBytes(_loc2_);
            key.encrypt(_loc2_);
            param1[0] ^= _loc2_[0];
            _loc5_ = 0;
            while(_loc5_ < blockSize - 1)
            {
               _loc2_[_loc5_] = _loc3_[_loc5_ + 1];
               _loc5_++;
            }
            _loc2_[blockSize - 1] = param1[0];
            var _loc4_:uint = uint(0 + 1);
         }
      }
      
      public function _vx09345(param1:ByteArray) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc2_:ByteArray = getIV4d();
         var _loc3_:ByteArray = new ByteArray();
         while(0 < param1.length)
         {
            _loc5_ = uint(param1[0]);
            _loc3_.position = 0;
            _loc3_.writeBytes(_loc2_);
            key.encrypt(_loc2_);
            param1[0] ^= _loc2_[0];
            _loc6_ = 0;
            while(_loc6_ < blockSize - 1)
            {
               _loc2_[_loc6_] = _loc3_[_loc6_ + 1];
               _loc6_++;
            }
            _loc2_[blockSize - 1] = _loc5_;
            var _loc4_:uint = uint(0 + 1);
         }
      }
      
      public function toString() : String
      {
         return key.toString() + "-cfb8";
      }
   }
}

