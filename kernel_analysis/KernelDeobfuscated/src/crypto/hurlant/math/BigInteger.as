package src.crypto.hurlant.math
{
   import flash.utils.*;
   import src.crypto.hurlant.crypto.prng.*;
   import src.crypto.hurlant.util.*;
   
   use namespace bi_internal;
   
   public class BigInteger
   {
      
      public static const DB:int = 30;
      
      public static const DV:int = 1 << DB;
      
      public static const DM:int = DV - 1;
      
      public static const BI_FP:int = 52;
      
      public static const FV:Number = Math.pow(2,BI_FP);
      
      public static const F1:int = BI_FP - DB;
      
      public static const F2:int = 2 * DB - BI_FP;
      
      public static const ZERO:BigInteger = nbv(0);
      
      public static const ONE:BigInteger = nbv(1);
      
      public static const lowprimes:Array = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509];
      
      public static const lplim:int = (1 << 26) / lowprimes[lowprimes.length - 1];
      
      public var t:int;
      
      bi_internal var s:int;
      
      bi_internal var a:Array;
      
      public function BigInteger(param1:* = null, param2:int = 0, param3:Boolean = false)
      {
         var count1:ByteArray = null;
         var count2:int = 0;
         super();
         this.a = new Array();
         if(param1 is String)
         {
            if(Boolean(param2) && param2 != 16)
            {
               this.fromRadix(param1 as String,param2);
            }
            else
            {
               param1 = UtilUtils.toArray(param1);
               param2 = 0;
            }
         }
         if(param1 is ByteArray)
         {
            count1 = param1 as ByteArray;
            count2 = int(param2 || count1.length - count1.position);
            this.fromArray(count1,count2,param3);
         }
      }
      
      public static function nbv(param1:int) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         count.fromInt(param1);
         return count;
      }
      
      public function dispose() : void
      {
         var count2:Random = new Random();
         var count:uint = 0;
         while(count < this.a.length)
         {
            this.a[count] = count2.nextByte();
            delete this.a[count];
            count++;
         }
         this.a = null;
         this.t = 0;
         this.s = 0;
         Memory.gc();
      }
      
      public function toString(param1:Number = 16) : String
      {
         var count:int = 0;
         if(this.s < 0)
         {
            return "-" + this.negate().toString(param1);
         }
         switch(param1)
         {
            case 2:
               count = 1;
               break;
            case 4:
               count = 2;
               break;
            case 8:
               count = 3;
               break;
            case 16:
               count = 4;
               break;
            case 32:
               count = 5;
               break;
            default:
               return this.toRadix(param1);
         }
         var count3:int = (1 << count) - 1;
         var count1:* = 0;
         var count2:Boolean = false;
         var count7:String = "";
         var items:int = this.t;
         var count8:int = DB - items * DB % count;
         if(items-- > 0)
         {
            if(count8 < DB && (count1 = this.a[items] >> count8) > 0)
            {
               count2 = true;
               count7 = count1.toString(36);
            }
            while(items >= 0)
            {
               if(count8 < count)
               {
                  count1 = (this.a[items] & (1 << count8) - 1) << count - count8;
                  count1 = count1 | this.a[--items] >> (count8 = count8 + (DB - count));
               }
               else
               {
                  count1 = this.a[items] >> (count8 = count8 - count) & count3;
                  if(count8 <= 0)
                  {
                     count8 += DB;
                     items--;
                  }
               }
               if(count1 > 0)
               {
                  count2 = true;
               }
               if(count2)
               {
                  count7 += count1.toString(36);
               }
            }
         }
         return count2 ? count7 : "0";
      }
      
      public function toArray(param1:ByteArray) : uint
      {
         var count:int = 0;
         count = 8;
         var count3:int = (1 << count) - 1;
         var count1:* = 0;
         var count2:int = this.t;
         var count7:int = DB - count2 * DB % count;
         var items:Boolean = false;
         var count8:int = 0;
         if(count2-- > 0)
         {
            if(count7 < DB && (count1 = this.a[count2] >> count7) > 0)
            {
               items = true;
               param1.writeByte(count1);
               count8++;
            }
            while(count2 >= 0)
            {
               if(count7 < count)
               {
                  count1 = (this.a[count2] & (1 << count7) - 1) << count - count7;
                  count1 = count1 | this.a[--count2] >> (count7 = count7 + (DB - count));
               }
               else
               {
                  count1 = this.a[count2] >> (count7 = count7 - count) & count3;
                  if(count7 <= 0)
                  {
                     count7 += DB;
                     count2--;
                  }
               }
               if(count1 > 0)
               {
                  items = true;
               }
               if(items)
               {
                  param1.writeByte(count1);
                  count8++;
               }
            }
         }
         return count8;
      }
      
      public function valueOf() : Number
      {
         if(this.s == -1)
         {
            return -this.negate().valueOf();
         }
         var count2:Number = 1;
         var count:Number = 0;
         var count3:uint = 0;
         while(count3 < this.t)
         {
            count += this.a[count3] * count2;
            count2 *= DV;
            count3++;
         }
         return count;
      }
      
      public function negate() : BigInteger
      {
         var count2:BigInteger = this.nbi();
         ZERO.subTo(this,count2);
         return count2;
      }
      
      public function abs() : BigInteger
      {
         return this.s < 0 ? this.negate() : this;
      }
      
      public function compareTo(param1:BigInteger) : int
      {
         var count:int = this.s - param1.s;
         if(count != 0)
         {
            return count;
         }
         var count3:int = this.t;
         count = count3 - param1.t;
         if(count != 0)
         {
            return this.s < 0 ? count * -1 : count;
         }
         while(--count3 >= 0)
         {
            count = this.a[count3] - param1.a[count3];
            if(count != 0)
            {
               return count;
            }
         }
         return 0;
      }
      
      bi_internal function nbits(param1:int) : int
      {
         var count3:int = 0;
         var count:int = 1;
         count3 = param1 >>> 16;
         if(count3 != 0)
         {
            param1 = count3;
            count += 16;
         }
         count3 = param1 >> 8;
         if(count3 != 0)
         {
            param1 = count3;
            count += 8;
         }
         count3 = param1 >> 4;
         if(count3 != 0)
         {
            param1 = count3;
            count += 4;
         }
         count3 = param1 >> 2;
         if(count3 != 0)
         {
            param1 = count3;
            count += 2;
         }
         count3 = param1 >> 1;
         if(count3 != 0)
         {
            param1 = count3;
            count += 1;
         }
         return count;
      }
      
      public function bitLength() : int
      {
         if(this.t <= 0)
         {
            return 0;
         }
         return DB * (this.t - 1) + this.nbits(this.a[this.t - 1] ^ this.s & DM);
      }
      
      public function mod(param1:BigInteger) : BigInteger
      {
         var count:BigInteger = this.nbi();
         this.abs().divRemTo(param1,null,count);
         if(this.s < 0 && count.compareTo(ZERO) > 0)
         {
            param1.subTo(count,count);
         }
         return count;
      }
      
      public function modPowInt(param1:int, param2:BigInteger) : BigInteger
      {
         var count3:IReduction = null;
         if(param1 < 256 || Boolean(param2.isEven()))
         {
            count3 = new ClassicReduction(param2);
         }
         else
         {
            count3 = new MontgomeryReduction(param2);
         }
         return this.exp(param1,count3);
      }
      
      bi_internal function copyTo(param1:BigInteger) : void
      {
         var count:int = this.t - 1;
         while(count >= 0)
         {
            param1.a[count] = this.a[count];
            count--;
         }
         param1.t = this.t;
         param1.s = this.s;
      }
      
      bi_internal function fromInt(param1:int) : void
      {
         this.t = 1;
         this.s = param1 < 0 ? -1 : 0;
         if(param1 > 0)
         {
            this.a[0] = param1;
         }
         else if(param1 < -1)
         {
            this.a[0] = param1 + DV;
         }
         else
         {
            this.t = 0;
         }
      }
      
      bi_internal function fromArray(param1:ByteArray, param2:int, param3:Boolean = false) : void
      {
         var count8:int = 0;
         var count1:int = int(param1.position);
         var count2:int = count1 + param2;
         var count7:int = 0;
         this.t = 0;
         this.s = 0;
         while(--count2 >= count1)
         {
            count8 = count2 < param1.length ? int(param1[count2]) : 0;
            if(count7 == 0)
            {
               var count6:*;
               this.a[count6 = this.t++] = count8;
            }
            else if(count7 + 8 > DB)
            {
               this.a[this.t - 1] |= (count8 & (1 << DB - count7) - 1) << count7;
               this.a[count6 = this.t++] = count8 >> DB - count7;
            }
            else
            {
               this.a[this.t - 1] |= count8 << count7;
            }
            count7 += 8;
            if(count7 >= DB)
            {
               count7 -= DB;
            }
         }
         if(!param3 && (param1[0] & 0x80) == 128)
         {
            this.s = -1;
            if(count7 > 0)
            {
               this.a[this.t - 1] |= (1 << DB - count7) - 1 << count7;
            }
         }
         this.clamp();
         param1.position = Math.min(count1 + param2,param1.length);
      }
      
      bi_internal function clamp() : void
      {
         var count2:* = this.s & DM;
         while(this.t > 0 && this.a[this.t - 1] == count2)
         {
            --this.t;
         }
      }
      
      bi_internal function dlShiftTo(param1:int, param2:BigInteger) : void
      {
         var count3:int = 0;
         count3 = this.t - 1;
         while(count3 >= 0)
         {
            param2.a[count3 + param1] = this.a[count3];
            count3--;
         }
         count3 = param1 - 1;
         while(count3 >= 0)
         {
            param2.a[count3] = 0;
            count3--;
         }
         param2.t = this.t + param1;
         param2.s = this.s;
      }
      
      bi_internal function drShiftTo(param1:int, param2:BigInteger) : void
      {
         var count3:int = 0;
         count3 = param1;
         while(count3 < this.t)
         {
            param2.a[count3 - param1] = this.a[count3];
            count3++;
         }
         param2.t = Math.max(this.t - param1,0);
         param2.s = this.s;
      }
      
      bi_internal function lShiftTo(param1:int, param2:BigInteger) : void
      {
         var count8:int = 0;
         var count3:int = param1 % DB;
         var count1:int = DB - count3;
         var count2:int = (1 << count1) - 1;
         var count7:int = param1 / DB;
         var items:* = this.s << count3 & DM;
         count8 = this.t - 1;
         while(count8 >= 0)
         {
            param2.a[count8 + count7 + 1] = this.a[count8] >> count1 | items;
            items = (this.a[count8] & count2) << count3;
            count8--;
         }
         count8 = count7 - 1;
         while(count8 >= 0)
         {
            param2.a[count8] = 0;
            count8--;
         }
         param2.a[count7] = items;
         param2.t = this.t + count7 + 1;
         param2.s = this.s;
         param2.clamp();
      }
      
      bi_internal function rShiftTo(param1:int, param2:BigInteger) : void
      {
         var items:int = 0;
         param2.s = this.s;
         var count3:int = param1 / DB;
         if(count3 >= this.t)
         {
            param2.t = 0;
            return;
         }
         var count1:int = param1 % DB;
         var count2:int = DB - count1;
         var count7:int = (1 << count1) - 1;
         param2.a[0] = this.a[count3] >> count1;
         items = count3 + 1;
         while(items < this.t)
         {
            param2.a[items - count3 - 1] |= (this.a[items] & count7) << count2;
            param2.a[items - count3] = this.a[items] >> count1;
            items++;
         }
         if(count1 > 0)
         {
            param2.a[this.t - count3 - 1] |= (this.s & count7) << count2;
         }
         param2.t = this.t - count3;
         param2.clamp();
      }
      
      bi_internal function subTo(param1:BigInteger, param2:BigInteger) : void
      {
         var count3:int = 0;
         var count1:* = 0;
         var count2:int = Math.min(param1.t,this.t);
         while(count3 < count2)
         {
            count1 += this.a[count3] - param1.a[count3];
            var count7:*;
            param2.a[count7 = count3++] = count1 & DM;
            count1 >>= DB;
         }
         if(param1.t < this.t)
         {
            count1 -= param1.s;
            while(count3 < this.t)
            {
               count1 += this.a[count3];
               param2.a[count7 = count3++] = count1 & DM;
               count1 >>= DB;
            }
            count1 += this.s;
         }
         else
         {
            count1 += this.s;
            while(count3 < param1.t)
            {
               count1 -= param1.a[count3];
               param2.a[count7 = count3++] = count1 & DM;
               count1 >>= DB;
            }
            count1 -= param1.s;
         }
         param2.s = count1 < 0 ? -1 : 0;
         if(count1 < -1)
         {
            param2.a[count7 = count3++] = DV + count1;
         }
         else if(count1 > 0)
         {
            param2.a[count7 = count3++] = count1;
         }
         param2.t = count3;
         param2.clamp();
      }
      
      bi_internal function am(param1:int, param2:int, param3:BigInteger, param4:int, param5:int, param6:int) : int
      {
         var count6:* = 0;
         var count:* = 0;
         var count10:int = 0;
         var items:* = param2 & 0x7FFF;
         var count8:* = param2 >> 15;
         while(--param6 >= 0)
         {
            count6 = this.a[param1] & 0x7FFF;
            count = this.a[param1++] >> 15;
            count10 = count8 * count6 + count * items;
            count6 = items * count6 + ((count10 & 0x7FFF) << 15) + param3.a[param4] + (param5 & 0x3FFFFFFF);
            param5 = (count6 >>> 30) + (count10 >>> 15) + count8 * count + (param5 >>> 30);
            var textString12:*;
            param3.a[textString12 = param4++] = count6 & 0x3FFFFFFF;
         }
         return param5;
      }
      
      bi_internal function multiplyTo(param1:BigInteger, param2:BigInteger) : void
      {
         var count3:BigInteger = this.abs();
         var count1:BigInteger = param1.abs();
         var count2:int = count3.t;
         param2.t = count2 + count1.t;
         while(--count2 >= 0)
         {
            param2.a[count2] = 0;
         }
         count2 = 0;
         while(count2 < count1.t)
         {
            param2.a[count2 + count3.t] = count3.am(0,count1.a[count2],param2,count2,0,count3.t);
            count2++;
         }
         param2.s = 0;
         param2.clamp();
         if(this.s != param1.s)
         {
            ZERO.subTo(param2,param2);
         }
      }
      
      bi_internal function squareTo(param1:BigInteger) : void
      {
         var count1:int = 0;
         var count:BigInteger = this.abs();
         var count3:int = param1.t = 2 * count.t;
         while(--count3 >= 0)
         {
            param1.a[count3] = 0;
         }
         count3 = 0;
         while(count3 < count.t - 1)
         {
            count1 = int(count.am(count3,count.a[count3],param1,2 * count3,0,1));
            if((param1.a[count3 + count.t] = param1.a[count3 + count.t] + count.am(count3 + 1,2 * count.a[count3],param1,2 * count3 + 1,count1,count.t - count3 - 1)) >= DV)
            {
               param1.a[count3 + count.t] -= DV;
               param1.a[count3 + count.t + 1] = 1;
            }
            count3++;
         }
         if(param1.t > 0)
         {
            param1.a[param1.t - 1] += count.am(count3,count.a[count3],param1,2 * count3,0,1);
         }
         param1.s = 0;
         param1.clamp();
      }
      
      bi_internal function divRemTo(param1:BigInteger, param2:BigInteger = null, param3:BigInteger = null) : void
      {
         var pt:BigInteger;
         var y:BigInteger;
         var ts:int;
         var ms:int;
         var nsh:int;
         var ys:int;
         var y0:int;
         var yt:Number;
         var d1:Number;
         var d2:Number;
         var e:Number;
         var i:int;
         var j:int;
         var t:BigInteger;
         var qd:int = 0;
         var m:BigInteger = param1;
         var q:BigInteger = param2;
         var r:BigInteger = param3;
         var pm:BigInteger = m.abs();
         if(pm.t <= 0)
         {
            return;
         }
         pt = this.abs();
         if(pt.t < pm.t)
         {
            if(q != null)
            {
               q.fromInt(0);
            }
            if(r != null)
            {
               this.copyTo(r);
            }
            return;
         }
         if(r == null)
         {
            r = this.nbi();
         }
         y = this.nbi();
         ts = int(this.s);
         ms = int(m.s);
         nsh = DB - this.nbits(pm.a[pm.t - 1]);
         if(nsh > 0)
         {
            pm.lShiftTo(nsh,y);
            pt.lShiftTo(nsh,r);
         }
         else
         {
            pm.copyTo(y);
            pt.copyTo(r);
         }
         ys = y.t;
         y0 = int(y.a[ys - 1]);
         if(y0 == 0)
         {
            return;
         }
         yt = y0 * (1 << F1) + (ys > 1 ? y.a[ys - 2] >> F2 : 0);
         d1 = FV / yt;
         d2 = (1 << F1) / yt;
         e = 1 << F2;
         i = r.t;
         j = i - ys;
         t = q == null ? this.nbi() : q;
         y.dlShiftTo(j,t);
         if(r.compareTo(t) >= 0)
         {
            var count2:*;
            r.a[count2 = r.t++] = 1;
            r.subTo(t,r);
         }
         ONE.dlShiftTo(ys,t);
         t.subTo(y,y);
         while(y.t < ys)
         {
            y.(++y.t,false);
         }
         while(--j >= 0)
         {
            qd = r.a[--i] == y0 ? DM : int(Number(r.a[i]) * d1 + (Number(r.a[i - 1]) + e) * d2);
            if((r.a[i] = r.a[i] + y.am(0,qd,r,j,0,ys)) < qd)
            {
               y.dlShiftTo(j,t);
               r.subTo(t,r);
               while(r.a[i] < --qd)
               {
                  r.subTo(t,r);
               }
            }
         }
         if(q != null)
         {
            r.drShiftTo(ys,q);
            if(ts != ms)
            {
               ZERO.subTo(q,q);
            }
         }
         r.t = ys;
         r.clamp();
         if(nsh > 0)
         {
            r.rShiftTo(nsh,r);
         }
         if(ts < 0)
         {
            ZERO.subTo(r,r);
         }
      }
      
      bi_internal function invDigit() : int
      {
         if(this.t < 1)
         {
            return 0;
         }
         var count2:int = int(this.a[0]);
         if((count2 & 1) == 0)
         {
            return 0;
         }
         var count:* = count2 & 3;
         count = count * (2 - (count2 & 0x0F) * count) & 0x0F;
         count = count * (2 - (count2 & 0xFF) * count) & 0xFF;
         count = count * (2 - ((count2 & 0xFFFF) * count & 0xFFFF)) & 0xFFFF;
         count = count * (2 - count2 * count % DV) % DV;
         return count > 0 ? DV - count : int(-count);
      }
      
      bi_internal function isEven() : Boolean
      {
         return (this.t > 0 ? this.a[0] & 1 : this.s) == 0;
      }
      
      bi_internal function exp(param1:int, param2:IReduction) : BigInteger
      {
         var items:BigInteger = null;
         if(param1 > 4294967295 || param1 < 1)
         {
            return ONE;
         }
         var count3:BigInteger = this.nbi();
         var count1:BigInteger = this.nbi();
         var count2:BigInteger = param2.convert(this);
         var count7:int = this.nbits(param1) - 1;
         count2.copyTo(count3);
         while(--count7 >= 0)
         {
            param2.sqrTo(count3,count1);
            if((param1 & 1 << count7) > 0)
            {
               param2.mulTo(count1,count2,count3);
            }
            else
            {
               items = count3;
               count3 = count1;
               count1 = items;
            }
         }
         return param2.revert(count3);
      }
      
      bi_internal function intAt(param1:String, param2:int) : int
      {
         var count3:Number = Number(parseInt(param1.charAt(param2),36));
         return isNaN(count3) ? -1 : int(count3);
      }
      
      protected function nbi() : *
      {
         return new BigInteger();
      }
      
      public function clone() : BigInteger
      {
         var count2:BigInteger = new BigInteger();
         this.copyTo(count2);
         return count2;
      }
      
      public function intValue() : int
      {
         if(this.s < 0)
         {
            if(this.t == 1)
            {
               return this.a[0] - DV;
            }
            if(this.t == 0)
            {
               return -1;
            }
         }
         else
         {
            if(this.t == 1)
            {
               return this.a[0];
            }
            if(this.t == 0)
            {
               return 0;
            }
         }
         return (this.a[1] & (1 << 32 - DB) - 1) << DB | this.a[0];
      }
      
      public function byteValue() : int
      {
         return this.t == 0 ? int(this.s) : this.a[0] << 24 >> 24;
      }
      
      public function shortValue() : int
      {
         return this.t == 0 ? int(this.s) : this.a[0] << 16 >> 16;
      }
      
      protected function chunkSize(param1:Number) : int
      {
         return Math.floor(Math.LN2 * DB / Math.log(param1));
      }
      
      public function sigNum() : int
      {
         if(this.s < 0)
         {
            return -1;
         }
         if(this.t <= 0 || this.t == 1 && this.a[0] <= 0)
         {
            return 0;
         }
         return 1;
      }
      
      public function toRadix(param1:uint = 10) : String
      {
         if(this.sigNum() == 0 || param1 < 2 || param1 > 32)
         {
            return "0";
         }
         var count:int = int(this.chunkSize(param1));
         var count3:Number = Math.pow(param1,count);
         var count1:BigInteger = nbv(count3);
         var count2:BigInteger = this.nbi();
         var count7:BigInteger = this.nbi();
         var items:String = "";
         this.divRemTo(count1,count2,count7);
         while(count2.sigNum() > 0)
         {
            items = (count3 + count7.intValue()).toString(param1).substr(1) + items;
            count2.divRemTo(count1,count2,count7);
         }
         return count7.intValue().toString(param1) + items;
      }
      
      public function fromRadix(param1:String, param2:int = 10) : void
      {
         var count6:int = 0;
         this.fromInt(0);
         var count3:int = int(this.chunkSize(param2));
         var count1:Number = Math.pow(param2,count3);
         var count7:int = 0;
         var items:int = 0;
         var count8:int = 0;
         while(count8 < param1.length)
         {
            count6 = int(this.intAt(param1,count8));
            if(count6 < 0)
            {
               if(param1.charAt(count8) == "-" && this.sigNum() == 0)
               {
                  var count2:Boolean = true;
               }
            }
            else
            {
               items = param2 * items + count6;
               if(++count7 >= count3)
               {
                  this.dMultiply(count1);
                  this.dAddOffset(items,0);
                  count7 = 0;
                  items = 0;
               }
            }
            count8++;
         }
         if(count7 > 0)
         {
            this.dMultiply(Math.pow(param2,count7));
            this.dAddOffset(items,0);
         }
      }
      
      public function toByteArray() : ByteArray
      {
         var count1:* = 0;
         var count2:int = this.t;
         var count:ByteArray = new ByteArray();
         count[0] = this.s;
         var count3:int = DB - count2 * DB % 8;
         var count2:int = 0;
         if(count2-- > 0)
         {
            if(count3 < DB && (count1 = this.a[count2] >> count3) != (this.s & DM) >> count3)
            {
               var count7:*;
               count[count7 = count2++] = count1 | this.s << DB - count3;
            }
            while(count2 >= 0)
            {
               if(count3 < 8)
               {
                  count1 = (this.a[count2] & (1 << count3) - 1) << 8 - count3;
                  count1 = count1 | this.a[--count2] >> (count3 = count3 + (DB - 8));
               }
               else
               {
                  count1 = this.a[count2] >> (count3 = count3 - 8) & 0xFF;
                  if(count3 <= 0)
                  {
                     count3 += DB;
                     count2--;
                  }
               }
               if((count1 & 0x80) != 0)
               {
                  count1 |= -256;
               }
               if(count2 == 0 && (this.s & 0x80) != (count1 & 0x80))
               {
                  count2++;
               }
               if(count2 > 0 || count1 != this.s)
               {
                  count[count7 = count2++] = count1;
               }
            }
         }
         return count;
      }
      
      public function equals(param1:BigInteger) : Boolean
      {
         return this.compareTo(param1) == 0;
      }
      
      public function min(param1:BigInteger) : BigInteger
      {
         return this.compareTo(param1) < 0 ? this : param1;
      }
      
      public function max(param1:BigInteger) : BigInteger
      {
         return this.compareTo(param1) > 0 ? this : param1;
      }
      
      protected function bitwiseTo(param1:BigInteger, param2:Function, param3:BigInteger) : void
      {
         var count1:int = 0;
         var count2:* = 0;
         var count7:int = Math.min(param1.t,this.t);
         count1 = 0;
         while(count1 < count7)
         {
            param3.a[count1] = param2(this.a[count1],param1.a[count1]);
            count1++;
         }
         if(param1.t < this.t)
         {
            count2 = param1.s & DM;
            count1 = count7;
            while(count1 < this.t)
            {
               param3.a[count1] = param2(this.a[count1],count2);
               count1++;
            }
            param3.t = this.t;
         }
         else
         {
            count2 = this.s & DM;
            count1 = count7;
            while(count1 < param1.t)
            {
               param3.a[count1] = param2(count2,param1.a[count1]);
               count1++;
            }
            param3.t = param1.t;
         }
         param3.s = param2(this.s,param1.s);
         param3.clamp();
      }
      
      private function op_and(param1:int, param2:int) : int
      {
         return param1 & param2;
      }
      
      public function and(param1:BigInteger) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         this.bitwiseTo(param1,this.op_and,count);
         return count;
      }
      
      private function op_or(param1:int, param2:int) : int
      {
         return param1 | param2;
      }
      
      public function or(param1:BigInteger) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         this.bitwiseTo(param1,this.op_or,count);
         return count;
      }
      
      private function op_xor(param1:int, param2:int) : int
      {
         return param1 ^ param2;
      }
      
      public function xor(param1:BigInteger) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         this.bitwiseTo(param1,this.op_xor,count);
         return count;
      }
      
      private function op_andnot(param1:int, param2:int) : int
      {
         return param1 & ~param2;
      }
      
      public function andNot(param1:BigInteger) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         this.bitwiseTo(param1,this.op_andnot,count);
         return count;
      }
      
      public function not() : BigInteger
      {
         var count2:BigInteger = new BigInteger();
         var count:int = 0;
         while(count < this.t)
         {
            count2[count] = DM & ~this.a[count];
            count++;
         }
         count2.t = this.t;
         count2.s = ~this.s;
         return count2;
      }
      
      public function shiftLeft(param1:int) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         if(param1 < 0)
         {
            this.rShiftTo(-param1,count);
         }
         else
         {
            this.lShiftTo(param1,count);
         }
         return count;
      }
      
      public function shiftRight(param1:int) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         if(param1 < 0)
         {
            this.lShiftTo(-param1,count);
         }
         else
         {
            this.rShiftTo(param1,count);
         }
         return count;
      }
      
      private function lbit(param1:int) : int
      {
         if(param1 == 0)
         {
            return -1;
         }
         var count:int = 0;
         if((param1 & 0xFFFF) == 0)
         {
            param1 >>= 16;
            count += 16;
         }
         if((param1 & 0xFF) == 0)
         {
            param1 >>= 8;
            count += 8;
         }
         if((param1 & 0x0F) == 0)
         {
            param1 >>= 4;
            count += 4;
         }
         if((param1 & 3) == 0)
         {
            param1 >>= 2;
            count += 2;
         }
         if((param1 & 1) == 0)
         {
            count++;
         }
         return count;
      }
      
      public function getLowestSetBit() : int
      {
         var count2:int = 0;
         while(count2 < this.t)
         {
            if(this.a[count2] != 0)
            {
               return count2 * DB + this.lbit(this.a[count2]);
            }
            count2++;
         }
         if(this.s < 0)
         {
            return this.t * DB;
         }
         return -1;
      }
      
      private function cbit(param1:int) : int
      {
         var count:uint = 0;
         while(param1 != 0)
         {
            param1 &= param1 - 1;
            count++;
         }
         return count;
      }
      
      public function bitCount() : int
      {
         var count2:int = 0;
         var count:* = this.s & DM;
         var count3:int = 0;
         while(count3 < this.t)
         {
            count2 += this.cbit(this.a[count3] ^ count);
            count3++;
         }
         return count2;
      }
      
      public function testBit(param1:int) : Boolean
      {
         var count:int = Math.floor(param1 / DB);
         if(count >= this.t)
         {
            return this.s != 0;
         }
         return (this.a[count] & 1 << param1 % DB) != 0;
      }
      
      protected function changeBit(param1:int, param2:Function) : BigInteger
      {
         var count3:BigInteger = BigInteger.ONE.shiftLeft(param1);
         this.bitwiseTo(count3,param2,count3);
         return count3;
      }
      
      public function setBit(param1:int) : BigInteger
      {
         return this.changeBit(param1,this.op_or);
      }
      
      public function clearBit(param1:int) : BigInteger
      {
         return this.changeBit(param1,this.op_andnot);
      }
      
      public function flipBit(param1:int) : BigInteger
      {
         return this.changeBit(param1,this.op_xor);
      }
      
      protected function addTo(param1:BigInteger, param2:BigInteger) : void
      {
         var count3:int = 0;
         var count1:* = 0;
         var count2:int = Math.min(param1.t,this.t);
         while(count3 < count2)
         {
            count1 += this.a[count3] + param1.a[count3];
            var count7:*;
            param2.a[count7 = count3++] = count1 & DM;
            count1 >>= DB;
         }
         if(param1.t < this.t)
         {
            count1 += param1.s;
            while(count3 < this.t)
            {
               count1 += this.a[count3];
               param2.a[count7 = count3++] = count1 & DM;
               count1 >>= DB;
            }
            count1 += this.s;
         }
         else
         {
            count1 += this.s;
            while(count3 < param1.t)
            {
               count1 += param1.a[count3];
               param2.a[count7 = count3++] = count1 & DM;
               count1 >>= DB;
            }
            count1 += param1.s;
         }
         param2.s = count1 < 0 ? -1 : 0;
         if(count1 > 0)
         {
            param2.a[count7 = count3++] = count1;
         }
         else if(count1 < -1)
         {
            param2.a[count7 = count3++] = DV + count1;
         }
         param2.t = count3;
         param2.clamp();
      }
      
      public function add(param1:BigInteger) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         this.addTo(param1,count);
         return count;
      }
      
      public function subtract(param1:BigInteger) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         this.subTo(param1,count);
         return count;
      }
      
      public function multiply(param1:BigInteger) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         this.multiplyTo(param1,count);
         return count;
      }
      
      public function divide(param1:BigInteger) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         this.divRemTo(param1,count,null);
         return count;
      }
      
      public function remainder(param1:BigInteger) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         this.divRemTo(param1,null,count);
         return count;
      }
      
      public function divideAndRemainder(param1:BigInteger) : Array
      {
         var count:BigInteger = new BigInteger();
         var count3:BigInteger = new BigInteger();
         this.divRemTo(param1,count,count3);
         return [count,count3];
      }
      
      bi_internal function dMultiply(param1:int) : void
      {
         this.a[this.t] = this.am(0,param1 - 1,this,0,0,this.t);
         ++this.t;
         this.clamp();
      }
      
      bi_internal function dAddOffset(param1:int, param2:int) : void
      {
         while(this.t <= param2)
         {
            this.a[this.t++] = 0;
         }
         this.a[param2] += param1;
         while(this.a[param2] >= DV)
         {
            this.a[param2] -= DV;
            if(++param2 >= this.t)
            {
               this.a[this.t++] = 0;
            }
            ++this.a[param2];
         }
      }
      
      public function pow(param1:int) : BigInteger
      {
         return this.exp(param1,new NullReduction());
      }
      
      bi_internal function multiplyLowerTo(param1:BigInteger, param2:int, param3:BigInteger) : void
      {
         var count2:int = 0;
         var count1:int = Math.min(this.t + param1.t,param2);
         param3.s = 0;
         param3.t = count1;
         while(count1 > 0)
         {
            var count7:*;
            param3.a[count7 = --count1] = 0;
         }
         count2 = param3.t - this.t;
         while(count1 < count2)
         {
            param3.a[count1 + this.t] = this.am(0,param1.a[count1],param3,count1,0,this.t);
            count1++;
         }
         count2 = Math.min(param1.t,param2);
         while(count1 < count2)
         {
            this.am(0,param1.a[count1],param3,count1,0,param2 - count1);
            count1++;
         }
         param3.clamp();
      }
      
      bi_internal function multiplyUpperTo(param1:BigInteger, param2:int, param3:BigInteger) : void
      {
         param2--;
         var count1:int = param3.t = this.t + param1.t - param2;
         param3.s = 0;
         while(--count1 >= 0)
         {
            param3.a[count1] = 0;
         }
         count1 = Math.max(param2 - this.t,0);
         while(count1 < param1.t)
         {
            param3.a[this.t + count1 - param2] = this.am(param2 - count1,param1.a[count1],param3,0,0,this.t + count1 - param2);
            count1++;
         }
         param3.clamp();
         param3.drShiftTo(1,param3);
      }
      
      public function modPow(param1:BigInteger, param2:BigInteger) : BigInteger
      {
         var count1:int = 0;
         var count7:IReduction = null;
         var textString12:* = 0;
         var count17:BigInteger = null;
         var count3:int = param1.bitLength();
         var count2:BigInteger = nbv(1);
         if(count3 <= 0)
         {
            return count2;
         }
         if(count3 < 18)
         {
            count1 = 1;
         }
         else if(count3 < 48)
         {
            count1 = 3;
         }
         else if(count3 < 144)
         {
            count1 = 4;
         }
         else if(count3 < 768)
         {
            count1 = 5;
         }
         else
         {
            count1 = 6;
         }
         if(count3 < 8)
         {
            count7 = new ClassicReduction(param2);
         }
         else if(param2.isEven())
         {
            count7 = new BarrettReduction(param2);
         }
         else
         {
            count7 = new MontgomeryReduction(param2);
         }
         var items:Array = [];
         var count8:int = 3;
         var count6:int = count1 - 1;
         var count:int = (1 << count1) - 1;
         items[1] = count7.convert(this);
         if(count1 > 1)
         {
            count17 = new BigInteger();
            count7.sqrTo(items[1],count17);
            while(count8 <= count)
            {
               items[count8] = new BigInteger();
               count7.mulTo(count17,items[count8 - 2],items[count8]);
               count8 += 2;
            }
         }
         var count10:int = param1.t - 1;
         var textString14:BigInteger = new BigInteger();
         count3 = this.nbits(param1.a[count10]) - 1;
         while(count10 >= 0)
         {
            if(count3 >= count6)
            {
               textString12 = param1.a[count10] >> count3 - count6 & count;
            }
            else
            {
               textString12 = (param1.a[count10] & (1 << count3 + 1) - 1) << count6 - count3;
               if(count10 > 0)
               {
                  textString12 |= param1.a[count10 - 1] >> DB + count3 - count6;
               }
            }
            count8 = count1;
            while((textString12 & 1) == 0)
            {
               textString12 >>= 1;
               count8--;
            }
            count3 = count3 - count8;
            if(count3 < 0)
            {
               count3 += DB;
               count10--;
            }
            items[textString12].copyTo(count2);
            var isEnabled:Boolean = false;
            while(count10 >= 0 && (param1.a[count10] & 1 << count3) == 0)
            {
               count7.sqrTo(count2,textString14);
               var count16:BigInteger = count2;
               count2 = textString14;
               textString14 = null;
               if(--count3 < 0)
               {
                  count3 = DB - 1;
                  count10--;
               }
            }
         }
         return count7.revert(count2);
      }
      
      public function gcd(param1:BigInteger) : BigInteger
      {
         var count7:BigInteger = null;
         var count:BigInteger = this.s < 0 ? this.negate() : this.clone();
         var count3:BigInteger = param1.s < 0 ? param1.negate() : param1.clone();
         if(count.compareTo(count3) < 0)
         {
            count7 = count;
            count = count3;
            count3 = count7;
         }
         var count1:int = count.getLowestSetBit();
         var count2:int = count3.getLowestSetBit();
         if(count2 < 0)
         {
            return count;
         }
         if(count1 < count2)
         {
            count2 = count1;
         }
         if(count2 > 0)
         {
            count.rShiftTo(count2,count);
            count3.rShiftTo(count2,count3);
         }
         while(count.sigNum() > 0)
         {
            count1 = count.getLowestSetBit();
            if(count1 > 0)
            {
               count.rShiftTo(count1,count);
            }
            count1 = count3.getLowestSetBit();
            if(count1 > 0)
            {
               count3.rShiftTo(count1,count3);
            }
            if(count.compareTo(count3) >= 0)
            {
               count.subTo(count3,count);
               count.rShiftTo(1,count);
            }
            else
            {
               count3.subTo(count,count3);
               count3.rShiftTo(1,count3);
            }
         }
         if(count2 > 0)
         {
            count3.lShiftTo(count2,count3);
         }
         return count3;
      }
      
      protected function modInt(param1:int) : int
      {
         var count1:int = 0;
         if(param1 <= 0)
         {
            return 0;
         }
         var count:int = DV % param1;
         var count3:int = this.s < 0 ? param1 - 1 : 0;
         if(this.t > 0)
         {
            if(count == 0)
            {
               count3 = this.a[0] % param1;
            }
            else
            {
               count1 = this.t - 1;
               while(count1 >= 0)
               {
                  count3 = (count * count3 + this.a[count1]) % param1;
                  count1--;
               }
            }
         }
         return count3;
      }
      
      public function modInverse(param1:BigInteger) : BigInteger
      {
         var count:Boolean = Boolean(param1.isEven());
         if(Boolean(this.isEven()) && count || param1.sigNum() == 0)
         {
            return BigInteger.ZERO;
         }
         var count3:BigInteger = param1.clone();
         var count1:BigInteger = this.clone();
         var count2:BigInteger = nbv(1);
         var count7:BigInteger = nbv(0);
         var items:BigInteger = nbv(0);
         var count8:BigInteger = nbv(1);
         while(count3.sigNum() != 0)
         {
            while(count3.isEven())
            {
               count3.rShiftTo(1,count3);
               if(count)
               {
                  if(!count2.isEven() || !count7.isEven())
                  {
                     count2.addTo(this,count2);
                     count7.subTo(param1,count7);
                  }
                  count2.rShiftTo(1,count2);
               }
               else if(!count7.isEven())
               {
                  count7.subTo(param1,count7);
               }
               count7.rShiftTo(1,count7);
            }
            while(count1.isEven())
            {
               count1.rShiftTo(1,count1);
               if(count)
               {
                  if(!items.isEven() || !count8.isEven())
                  {
                     items.addTo(this,items);
                     count8.subTo(param1,count8);
                  }
                  items.rShiftTo(1,items);
               }
               else if(!count8.isEven())
               {
                  count8.subTo(param1,count8);
               }
               count8.rShiftTo(1,count8);
            }
            if(count3.compareTo(count1) >= 0)
            {
               count3.subTo(count1,count3);
               if(count)
               {
                  count2.subTo(items,count2);
               }
               count7.subTo(count8,count7);
            }
            else
            {
               count1.subTo(count3,count1);
               if(count)
               {
                  items.subTo(count2,items);
               }
               count8.subTo(count7,count8);
            }
         }
         if(count1.compareTo(BigInteger.ONE) != 0)
         {
            return BigInteger.ZERO;
         }
         if(count8.compareTo(param1) >= 0)
         {
            return count8.subtract(param1);
         }
         if(count8.sigNum() < 0)
         {
            count8.addTo(param1,count8);
            if(count8.sigNum() < 0)
            {
               return count8.add(param1);
            }
            return count8;
         }
         return count8;
      }
      
      public function isProbablePrime(param1:int) : Boolean
      {
         var count:int = 0;
         var count1:int = 0;
         var count2:int = 0;
         var count3:BigInteger = this.abs();
         if(count3.t == 1 && count3.a[0] <= lowprimes[lowprimes.length - 1])
         {
            count = 0;
            while(count < lowprimes.length)
            {
               if(count3[0] == lowprimes[count])
               {
                  return true;
               }
               count++;
            }
            return false;
         }
         if(count3.isEven())
         {
            return false;
         }
         count = 1;
         while(count < lowprimes.length)
         {
            count1 = int(lowprimes[count]);
            count2 = count + 1;
            while(count2 < lowprimes.length && count1 < lplim)
            {
               count1 *= lowprimes[count2++];
            }
            count1 = int(count3.modInt(count1));
            while(count < count2)
            {
               if(count1 % lowprimes[count++] == 0)
               {
                  return false;
               }
            }
         }
         return count3.millerRabin(param1);
      }
      
      protected function millerRabin(param1:int) : Boolean
      {
         var items:BigInteger = null;
         var count8:int = 0;
         var count:BigInteger = this.subtract(BigInteger.ONE);
         var count3:int = count.getLowestSetBit();
         if(count3 <= 0)
         {
            return false;
         }
         var count1:BigInteger = count.shiftRight(count3);
         param1 = param1 + 1 >> 1;
         if(param1 > lowprimes.length)
         {
            param1 = int(lowprimes.length);
         }
         var count2:BigInteger = new BigInteger();
         var count7:int = 0;
         while(count7 < param1)
         {
            count2.fromInt(lowprimes[count7]);
            items = count2.modPow(count1,this);
            if(items.compareTo(BigInteger.ONE) != 0 && items.compareTo(count) != 0)
            {
               count8 = 1;
               while(count8++ < count3 && items.compareTo(count) != 0)
               {
                  items = items.modPowInt(2,this);
                  if(items.compareTo(BigInteger.ONE) == 0)
                  {
                     return false;
                  }
               }
               if(items.compareTo(count) != 0)
               {
                  return false;
               }
            }
            count7++;
         }
         return true;
      }
      
      public function primify(param1:int, param2:int) : void
      {
         if(!this.testBit(param1 - 1))
         {
            this.bitwiseTo(BigInteger.ONE.shiftLeft(param1 - 1),this.op_or,this);
         }
         if(this.isEven())
         {
            this.dAddOffset(1,0);
         }
         while(!this.isProbablePrime(param2))
         {
            this.dAddOffset(2,0);
            while(this.bitLength() > param1)
            {
               this.subTo(BigInteger.ONE.shiftLeft(param1 - 1),this);
            }
         }
      }
   }
}

