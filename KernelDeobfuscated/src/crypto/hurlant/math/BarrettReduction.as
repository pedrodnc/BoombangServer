package src.crypto.hurlant.math
{
   use namespace bi_internal;
   
   internal class BarrettReduction implements IReduction
   {
      
      private var m:BigInteger;
      
      private var r2:BigInteger;
      
      private var q3:BigInteger;
      
      private var mu:BigInteger;
      
      public function BarrettReduction(param1:BigInteger)
      {
         super();
         this.r2 = new BigInteger();
         this.q3 = new BigInteger();
         BigInteger.ONE.dlShiftTo(2 * param1.t,this.r2);
         this.mu = this.r2.divide(param1);
         this.m = param1;
      }
      
      public function revert(param1:BigInteger) : BigInteger
      {
         return param1;
      }
      
      public function mulTo(param1:BigInteger, param2:BigInteger, param3:BigInteger) : void
      {
         param1.multiplyTo(param2,param3);
         this.reduce(param3);
      }
      
      public function sqrTo(param1:BigInteger, param2:BigInteger) : void
      {
         param1.squareTo(param2);
         this.reduce(param2);
      }
      
      public function convert(param1:BigInteger) : BigInteger
      {
         var count:BigInteger = null;
         if(param1.s < 0 || param1.t > 2 * this.m.t)
         {
            return param1.mod(this.m);
         }
         if(param1.compareTo(this.m) < 0)
         {
            return param1;
         }
         count = new BigInteger();
         param1.copyTo(count);
         this.reduce(count);
         return count;
      }
      
      public function reduce(param1:BigInteger) : void
      {
         var count:BigInteger = param1 as BigInteger;
         count.drShiftTo(this.m.t - 1,this.r2);
         if(count.t > this.m.t + 1)
         {
            count.t = this.m.t + 1;
            count.clamp();
         }
         this.mu.multiplyUpperTo(this.r2,this.m.t + 1,this.q3);
         this.m.multiplyLowerTo(this.q3,this.m.t + 1,this.r2);
         while(count.compareTo(this.r2) < 0)
         {
            count.dAddOffset(1,this.m.t + 1);
         }
         count.subTo(this.r2,count);
         while(count.compareTo(this.m) >= 0)
         {
            count.subTo(this.m,count);
         }
      }
   }
}

