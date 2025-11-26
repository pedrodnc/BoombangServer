package src.crypto.hurlant.crypto.prng
{
   import flash.utils.*;
   import src.crypto.hurlant.crypto.symmetric.*;
   import src.crypto.hurlant.util.*;
   
   public class PrngUtils implements PrngUtils, IStreamCipher
   {
      
      private const psize:uint = 256;
      
      private var i:int = 0;
      
      private var j:int = 0;
      
      private var S:ByteArray;
      
      public function PrngUtils(param1:ByteArray = null)
      {
         super();
         this.S = new ByteArray();
         if(param1)
         {
            this.init(param1);
         }
      }
      
      public function getPoolSize() : uint
      {
         return this.psize;
      }
      
      public function init(param1:ByteArray) : void
      {
         var count:int = 0;
         var count3:* = 0;
         var count1:int = 0;
         count = 0;
         while(count < 256)
         {
            this.S[count] = count;
            count++;
         }
         count3 = 0;
         count = 0;
         while(count < 256)
         {
            count3 = count3 + this.S[count] + param1[count % param1.length] & 0xFF;
            count1 = int(this.S[count]);
            this.S[count] = this.S[count3];
            this.S[count3] = count1;
            count++;
         }
         this.i = 0;
         this.j = 0;
      }
      
      public function next() : uint
      {
         var count2:int = 0;
         this.i = this.i + 1 & 0xFF;
         this.j = this.j + this.S[this.i] & 0xFF;
         count2 = int(this.S[this.i]);
         this.S[this.i] = this.S[this.j];
         this.S[this.j] = count2;
         return this.S[count2 + this.S[this.i] & 0xFF];
      }
      
      public function getBlockSize() : uint
      {
         return 1;
      }
      
      public function encrypt(param1:ByteArray) : void
      {
         var count:uint = 0;
         while(count < param1.length)
         {
            var _temp_2:* = param1;
            var count3:* = count++;
            _temp_2[count3] ^= this.next();
         }
      }
      
      public function decrypt(param1:ByteArray) : void
      {
         this.encrypt(param1);
      }
      
      public function dispose() : void
      {
         var count2:uint = 0;
         if(this.S != null)
         {
            count2 = 0;
            while(count2 < this.S.length)
            {
               this.S[count2] = Math.random() * 256;
               count2++;
            }
            this.S.length = 0;
            this.S = null;
         }
         this.i = 0;
         this.j = 0;
         Memory.gc();
      }
      
      public function toString() : String
      {
         return "rc4";
      }
   }
}

