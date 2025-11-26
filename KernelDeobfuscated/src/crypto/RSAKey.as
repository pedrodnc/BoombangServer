package src.crypto
{
   import flash.utils.*;
   import src.crypto.hurlant.crypto.prng.*;
   import src.crypto.hurlant.crypto.tls.*;
   import src.crypto.hurlant.math.*;
   import src.crypto.hurlant.util.*;
   
   public class RSAKey
   {
      
      public var e:int;
      
      public var n:BigInteger;
      
      public var d:BigInteger;
      
      public var p:BigInteger;
      
      public var q:BigInteger;
      
      public var dmp1:BigInteger;
      
      public var dmq1:BigInteger;
      
      public var coeff:BigInteger;
      
      protected var canDecrypt:Boolean;
      
      protected var canEncrypt:Boolean;
      
      public function RSAKey(param1:BigInteger, param2:int, param3:BigInteger = null, param4:BigInteger = null, param5:BigInteger = null, param6:BigInteger = null, param7:BigInteger = null, param8:BigInteger = null)
      {
         super();
         this.n = param1;
         this.e = param2;
         this.d = param3;
         this.p = param4;
         this.q = param5;
         this.dmp1 = param6;
         this.dmq1 = param7;
         this.coeff = param8;
         this.canEncrypt = this.n != null && this.e != 0;
         this.canDecrypt = Boolean(this.canEncrypt) && this.d != null;
      }
      
      public static function parsePublicKey(param1:String, param2:String) : RSAKey
      {
         return new RSAKey(new BigInteger(param1,16,true),parseInt(param2,16));
      }
      
      public static function parsePrivateKey(param1:String, param2:String, param3:String, param4:String = null, param5:String = null, param6:String = null, param7:String = null, param8:String = null) : RSAKey
      {
         if(param4 == null)
         {
            return new RSAKey(new BigInteger(param1,16,true),parseInt(param2,16),new BigInteger(param3,16,true));
         }
         return new RSAKey(new BigInteger(param1,16,true),parseInt(param2,16),new BigInteger(param3,16,true),new BigInteger(param4,16,true),new BigInteger(param5,16,true),new BigInteger(param6,16,true),new BigInteger(param7,16,true),new BigInteger(param8,16,true));
      }
      
      public static function generate(param1:uint, param2:String) : RSAKey
      {
         var items:BigInteger = null;
         var count8:BigInteger = null;
         var count6:BigInteger = null;
         var count:BigInteger = null;
         var count3:Random = new Random();
         var count1:uint = uint(param1 >> 1);
         var count2:RSAKey = new RSAKey(null,0,null);
         count2.e = parseInt(param2,16);
         var count7:BigInteger = new BigInteger(param2,16,true);
         while(true)
         {
            count2.p = bigRandom(param1 - count1,count3);
            if(count2.p.subtract(BigInteger.ONE).gcd(count7).compareTo(BigInteger.ONE) == 0 && count2.p.isProbablePrime(10))
            {
               do
               {
                  count2.q = bigRandom(count1,count3);
               }
               while(!(count2.q.subtract(BigInteger.ONE).gcd(count7).compareTo(BigInteger.ONE) == 0 && count2.q.isProbablePrime(10)));
               
               if(count2.p.compareTo(count2.q) <= 0)
               {
                  count = count2.p;
                  count2.p = count2.q;
                  count2.q = count;
               }
               items = count2.p.subtract(BigInteger.ONE);
               count8 = count2.q.subtract(BigInteger.ONE);
               count6 = items.multiply(count8);
               if(count6.gcd(count7).compareTo(BigInteger.ONE) == 0)
               {
                  break;
               }
            }
         }
         count2.n = count2.p.multiply(count2.q);
         count2.d = count7.modInverse(count6);
         count2.dmp1 = count2.d.mod(items);
         count2.dmq1 = count2.d.mod(count8);
         count2.coeff = count2.q.modInverse(count2.p);
         count2.canEncrypt = count2.n != null && count2.e != 0;
         count2.canDecrypt = Boolean(count2.canEncrypt) && count2.d != null;
         return count2;
      }
      
      protected static function bigRandom(param1:int, param2:Random) : BigInteger
      {
         if(param1 < 2)
         {
            return BigInteger.nbv(1);
         }
         var count3:ByteArray = new ByteArray();
         param2.nextBytes(count3,param1 >> 3);
         count3.position = 0;
         var count1:BigInteger = new BigInteger(count3,0,true);
         count1.primify(param1,1);
         return count1;
      }
      
      public function getBlockSize() : uint
      {
         return (this.n.bitLength() + 7) / 8;
      }
      
      public function dispose() : void
      {
         this.e = 0;
         this.n.dispose();
         this.n = null;
         Memory.gc();
      }
      
      public function encrypt(param1:ByteArray, param2:ByteArray, param3:uint, param4:Function = null) : void
      {
         this._encrypt(this.doPublic,param1,param2,param3,param4,2);
      }
      
      public function decrypt(param1:ByteArray, param2:ByteArray, param3:uint, param4:Function = null) : void
      {
         this._decrypt(this.doPrivate2,param1,param2,param3,param4,2);
      }
      
      public function sign(param1:ByteArray, param2:ByteArray, param3:uint, param4:Function = null) : void
      {
         this._encrypt(this.doPrivate2,param1,param2,param3,param4,1);
      }
      
      public function verify(param1:ByteArray, param2:ByteArray, param3:uint, param4:Function = null) : void
      {
         this._decrypt(this.doPublic,param1,param2,param3,param4,1);
      }
      
      private function _encrypt(param1:Function, param2:ByteArray, param3:ByteArray, param4:uint, param5:Function, param6:int) : void
      {
         var count6:BigInteger = null;
         var count:BigInteger = null;
         var count10:uint = 0;
         if(param5 == null)
         {
            param5 = this.pkcs1pad;
         }
         if(param2.position >= param2.length)
         {
            param2.position = 0;
         }
         var items:uint = this.getBlockSize();
         var count8:int = int(param2.position + param4);
         while(param2.position < count8)
         {
            count6 = new BigInteger(param5(param2,count8,items,param6),items,true);
            count = param1(count6);
            count10 = items - Math.ceil(count.bitLength() / 8);
            while(count10 > 0)
            {
               param3.writeByte(0);
               count10--;
            }
            count.toArray(param3);
         }
      }
      
      private function _decrypt(param1:Function, param2:ByteArray, param3:ByteArray, param4:uint, param5:Function, param6:int) : void
      {
         var count6:BigInteger = null;
         var count:BigInteger = null;
         var count10:ByteArray = null;
         if(param5 == null)
         {
            param5 = this.pkcs1unpad;
         }
         if(param2.position >= param2.length)
         {
            param2.position = 0;
         }
         var items:uint = this.getBlockSize();
         var count8:int = int(param2.position + param4);
         while(param2.position < count8)
         {
            count6 = new BigInteger(param2,items,true);
            count = param1(count6);
            count10 = param5(count,items,param6);
            if(count10 == null)
            {
               throw new TLSError("Decrypt error - padding function returned null!",TLSError.decode_error);
            }
            param3.writeBytes(count10);
         }
      }
      
      private function pkcs1pad(param1:ByteArray, param2:int, param3:uint, param4:uint = 2) : ByteArray
      {
         var count8:Random = null;
         var count6:int = 0;
         var count2:ByteArray = new ByteArray();
         var count7:uint = param1.position;
         param2 = Math.min(param2,param1.length,count7 + param3 - 11);
         param1.position = param2;
         var items:int = param2 - 1;
         while(items >= count7 && param3 > 11)
         {
            var count:*;
            count2[count = --param3] = param1[items--];
         }
         count2[count = --param3] = 0;
         if(param4 == 2)
         {
            count8 = new Random();
            count6 = 0;
            while(param3 > 2)
            {
               while(true)
               {
                  count6 = count8.nextByte();
                  if(count6 != 0)
                  {
                     break;
                  }
               }
               var count10:*;
               count2[count10 = --param3] = count6;
            }
         }
         else
         {
            while(param3 > 2)
            {
               count2[count10 = --param3] = 255;
            }
         }
         count2[count10 = --param3] = param4;
         var textString12:*;
         count2[textString12 = --param3] = 0;
         return count2;
      }
      
      private function pkcs1unpad(param1:BigInteger, param2:uint, param3:uint = 2) : ByteArray
      {
         var count1:ByteArray = new ByteArray();
         var count2:ByteArray = new ByteArray();
         param1.toArray(count2);
         count2.position = 0;
         var count7:int = 0;
         while(count7 < count2.length && count2[count7] == 0)
         {
            count7++;
         }
         if(count2.length - count7 != param2 - 1 || count2[count7] != param3)
         {
            return null;
         }
         count7++;
         while(count2[count7] != 0)
         {
            if(++count7 >= count2.length)
            {
               return null;
            }
         }
         while(++count7 < count2.length)
         {
            count1.writeByte(count2[count7]);
         }
         count1.position = 0;
         return count1;
      }
      
      public function rawpad(param1:ByteArray, param2:int, param3:uint, param4:uint = 0) : ByteArray
      {
         return param1;
      }
      
      public function rawunpad(param1:BigInteger, param2:uint, param3:uint = 0) : ByteArray
      {
         return param1.toByteArray();
      }
      
      public function toString() : String
      {
         return "rsa";
      }
      
      public function dump() : String
      {
         var count2:* = "N=" + this.n.toString(16) + "\n" + "E=" + this.e.toString(16) + "\n";
         if(this.canDecrypt)
         {
            count2 += "D=" + this.d.toString(16) + "\n";
            if(this.p != null && this.q != null)
            {
               count2 += "P=" + this.p.toString(16) + "\n";
               count2 += "Q=" + this.q.toString(16) + "\n";
               count2 += "DMP1=" + this.dmp1.toString(16) + "\n";
               count2 += "DMQ1=" + this.dmq1.toString(16) + "\n";
               count2 += "IQMP=" + this.coeff.toString(16) + "\n";
            }
         }
         return count2;
      }
      
      protected function doPublic(param1:BigInteger) : BigInteger
      {
         return param1.modPowInt(this.e,this.n);
      }
      
      protected function doPrivate2(param1:BigInteger) : BigInteger
      {
         if(this.p == null && this.q == null)
         {
            return param1.modPow(this.d,this.n);
         }
         var count:BigInteger = param1.mod(this.p).modPow(this.dmp1,this.p);
         var count3:BigInteger = param1.mod(this.q).modPow(this.dmq1,this.q);
         while(count.compareTo(count3) < 0)
         {
            count = count.add(this.p);
         }
         return count.subtract(count3).multiply(this.coeff).mod(this.p).multiply(this.q).add(count3);
      }
      
      protected function doPrivate(param1:BigInteger) : BigInteger
      {
         if(this.p == null || this.q == null)
         {
            return param1.modPow(this.d,this.n);
         }
         var count:BigInteger = param1.mod(this.p).modPow(this.dmp1,this.p);
         var count3:BigInteger = param1.mod(this.q).modPow(this.dmq1,this.q);
         while(count.compareTo(count3) < 0)
         {
            count = count.add(this.p);
         }
         return count.subtract(count3).multiply(this.coeff).mod(this.p).multiply(this.q).add(count3);
      }
   }
}

