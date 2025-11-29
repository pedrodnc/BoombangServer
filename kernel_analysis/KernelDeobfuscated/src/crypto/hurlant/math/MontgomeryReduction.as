package src.crypto.hurlant.math
{
   use namespace bi_internal;
   
   internal class MontgomeryReduction implements IReduction
   {
      
      private var m:BigInteger;
      
      private var mp:int;
      
      private var mpl:int;
      
      private var mph:int;
      
      private var um:int;
      
      private var mt2:int;
      
      public function MontgomeryReduction(param1:BigInteger)
      {
         super();
         this.m = param1;
         this.mp = param1.invDigit();
         this.mpl = this.mp & 0x7FFF;
         this.mph = this.mp >> 15;
         this.um = (1 << BigInteger.DB - 15) - 1;
         this.mt2 = 2 * param1.t;
      }
      
      public function convert(param1:BigInteger) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         param1.abs().dlShiftTo(this.m.t,count);
         count.divRemTo(this.m,null,count);
         if(param1.s < 0 && count.compareTo(BigInteger.ZERO) > 0)
         {
            this.m.subTo(count,count);
         }
         return count;
      }
      
      public function revert(param1:BigInteger) : BigInteger
      {
         var count:BigInteger = new BigInteger();
         param1.copyTo(count);
         this.reduce(count);
         return count;
      }
      
      public function reduce(param1:BigInteger) : void
      {
         var count3:* = 0;
         var count1:* = 0;
         while(param1.t <= this.mt2)
         {
            var count2:*;
            param1.a[count2 = param1.t++] = 0;
         }
         var count:int = 0;
         while(count < this.m.t)
         {
            count3 = param1.a[count] & 0x7FFF;
            count1 = count3 * this.mpl + ((count3 * this.mph + (param1.a[count] >> 15) * this.mpl & this.um) << 15) & BigInteger.DM;
            count3 = count + this.m.t;
            param1.a[count3] += this.m.am(0,count1,param1,count,0,this.m.t);
            while(param1.a[count3] >= BigInteger.DV)
            {
               param1.a[count3] -= BigInteger.DV;
               ++param1.a[++count3];
            }
            count++;
         }
         param1.clamp();
         param1.drShiftTo(this.m.t,param1);
         if(param1.compareTo(this.m) >= 0)
         {
            param1.subTo(this.m,param1);
         }
      }
      
      public function sqrTo(param1:BigInteger, param2:BigInteger) : void
      {
         param1.squareTo(param2);
         this.reduce(param2);
      }
      
      public function mulTo(param1:BigInteger, param2:BigInteger, param3:BigInteger) : void
      {
         param1.multiplyTo(param2,param3);
         this.reduce(param3);
      }
   }
}

