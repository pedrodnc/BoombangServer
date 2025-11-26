package src.crypto.hurlant.crypto.prng
{
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   import src.crypto.hurlant.util.*;
   
   public class Random
   {
      
      private var state:PrngUtils;
      
      private var ready:Boolean = false;
      
      private var pool:ByteArray;
      
      private var psize:int;
      
      private var pptr:int;
      
      private var seeded:Boolean = false;
      
      public function Random(param1:Class = null)
      {
         var count:uint = 0;
         super();
         if(param1 == null)
         {
            param1 = PrngUtils;
         }
         this.state = new param1() as PrngUtils;
         this.psize = this.state.getPoolSize();
         this.pool = new ByteArray();
         this.pptr = 0;
         while(this.pptr < this.psize)
         {
            count = 65536 * Math.random();
            this.pool[this.pptr++] = count >>> 8;
            var count1:*;
            this.pool[count1 = this.pptr++] = count & 0xFF;
         }
         this.pptr = 0;
         this.seed();
      }
      
      public function seed(param1:int = 0) : void
      {
         if(param1 == 0)
         {
            param1 = int(new Date().getTime());
         }
         var _temp_3:* = this.pool;
         var count:* = this.pptr++;
         _temp_3[count] ^= param1 & 0xFF;
         var _temp_6:* = this.pool;
         var count3:* = this.pptr++;
         _temp_6[count3] ^= param1 >> 8 & 0xFF;
         var count1:*;
         this.pool[count1 = this.pptr++] = this.pool[count1] ^ param1 >> 16 & 0xFF;
         var count2:*;
         this.pool[count2 = this.pptr++] = this.pool[count2] ^ param1 >> 24 & 0xFF;
         this.pptr %= this.psize;
         this.seeded = true;
      }
      
      public function autoSeed() : void
      {
         var count3:Font = null;
         var count2:ByteArray = new ByteArray();
         count2.writeUnsignedInt(System.totalMemory);
         count2.writeUTF(Capabilities.serverString);
         count2.writeUnsignedInt(getTimer());
         count2.writeUnsignedInt(new Date().getTime());
         var count:Array = Font.enumerateFonts(true);
         for each(count3 in count)
         {
            count2.writeUTF(count3.fontName);
            count2.writeUTF(count3.fontStyle);
            count2.writeUTF(count3.fontType);
         }
         count2.position = 0;
         while(count2.bytesAvailable >= 4)
         {
            this.seed(count2.readUnsignedInt());
         }
      }
      
      public function nextBytes(param1:ByteArray, param2:int) : void
      {
         while(param2--)
         {
            param1.writeByte(this.nextByte());
         }
      }
      
      public function nextByte() : int
      {
         if(!this.ready)
         {
            if(!this.seeded)
            {
               this.autoSeed();
            }
            this.state.init(this.pool);
            this.pool.length = 0;
            this.pptr = 0;
            this.ready = true;
         }
         return this.state.next();
      }
      
      public function dispose() : void
      {
         var count2:uint = 0;
         while(count2 < this.pool.length)
         {
            this.pool[count2] = Math.random() * 256;
            count2++;
         }
         this.pool.length = 0;
         this.pool = null;
         this.state.dispose();
         this.state = null;
         this.psize = 0;
         this.pptr = 0;
         Memory.gc();
      }
      
      public function toString() : String
      {
         return "random-" + this.state.toString();
      }
   }
}

