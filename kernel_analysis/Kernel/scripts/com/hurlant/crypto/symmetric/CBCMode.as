package com.hurlant.crypto.symmetric
{
   import flash.utils.*;
   
   public class CBCMode extends IVMode implements IMode
   {
      
      public function CBCMode(param1:ISymmetricKey, param2:IPad = null)
      {
         super(param1,param2);
      }
      
      public function _qw34210(param1:ByteArray) : void
      {
         var _loc4_:uint = 0;
         padding.pad(param1);
         var _loc2_:ByteArray = getIV4e();
         while(0 < param1.length)
         {
            _loc4_ = 0;
            while(_loc4_ < blockSize)
            {
               param1[0 + _loc4_] ^= _loc2_[_loc4_];
               _loc4_++;
            }
            key.encrypt(param1,0);
            _loc2_.position = 0;
            _loc2_.writeBytes(param1,0,blockSize);
            var _loc3_:uint = uint(0 + blockSize);
         }
      }
      
      public function _vx09345(param1:ByteArray) : void
      {
         var _loc5_:uint = 0;
         var _loc2_:ByteArray = getIV4d();
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:uint = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_.position = 0;
            _loc3_.writeBytes(param1,_loc4_,blockSize);
            key.decrypt(param1,_loc4_);
            _loc5_ = 0;
            while(_loc5_ < blockSize)
            {
               param1[_loc4_ + _loc5_] ^= _loc2_[_loc5_];
               _loc5_++;
            }
            _loc2_.position = 0;
            _loc2_.writeBytes(_loc3_,0,blockSize);
            _loc4_ += blockSize;
         }
         padding.unpad(param1);
      }
      
      public function toString() : String
      {
         return key.toString() + "-cbc";
      }
   }
}

