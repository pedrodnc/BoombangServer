package src.utils.images
{
   import flash.display.BitmapData;
   import flash.geom.*;
   import flash.utils.*;
   
   public class PNGEncoder
   {
      
      private static var items:Array;
      
      private static var isEnabled:Boolean = false;
      
      public function PNGEncoder()
      {
         super();
      }
      
      public static function encode(param1:BitmapData) : ByteArray
      {
         var count:uint = 0;
         var count3:int = 0;
         var items:int = 0;
         var count1:ByteArray = new ByteArray();
         count1.writeUnsignedInt(2303741511);
         count1.writeUnsignedInt(218765834);
         var count2:ByteArray = new ByteArray();
         count2.writeInt(param1.width);
         count2.writeInt(param1.height);
         count2.writeUnsignedInt(134610944);
         count2.writeByte(0);
         writeChunk(count1,1229472850,count2);
         var count7:ByteArray = new ByteArray();
         while(items < param1.height)
         {
            count7.writeByte(0);
            if(!param1.transparent)
            {
               count3 = 0;
               while(count3 < param1.width)
               {
                  count = param1.getPixel(count3,items);
                  count7.writeUnsignedInt(uint((count & 0xFFFFFF) << 8 | 0xFF));
                  count3++;
               }
            }
            else
            {
               count3 = 0;
               while(count3 < param1.width)
               {
                  count = param1.getPixel32(count3,items);
                  count7.writeUnsignedInt(uint((count & 0xFFFFFF) << 8 | count >>> 24));
                  count3++;
               }
            }
            items++;
         }
         count7.compress();
         writeChunk(count1,1229209940,count7);
         writeChunk(count1,1229278788,null);
         return count1;
      }
      
      private static function writeChunk(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var count1:uint = 0;
         var count2:uint = 0;
         var count7:uint = 0;
         var items:uint = 0;
         var count:int = 0;
         if(!isEnabled)
         {
            isEnabled = true;
            items = [];
            count2 = 0;
            while(count2 < 256)
            {
               count1 = count2;
               count7 = 0;
               while(count7 < 8)
               {
                  if(count1 & 1)
                  {
                     count1 = uint(uint(3988292384) ^ uint(count1 >>> 1));
                  }
                  else
                  {
                     count1 = uint(count1 >>> 1);
                  }
                  count7++;
               }
               items[count2] = count1;
               count2++;
            }
         }
         if(param3 != null)
         {
            items = param3.length;
         }
         param1.writeUnsignedInt(items);
         var count8:uint = param1.position;
         param1.writeUnsignedInt(param2);
         if(param3 != null)
         {
            param1.writeBytes(param3);
         }
         var count6:uint = param1.position;
         param1.position = count8;
         count1 = 4294967295;
         while(count < count6 - count8)
         {
            count1 = uint(items[(count1 ^ param1.readUnsignedByte()) & uint(255)] ^ uint(count1 >>> 8));
            count++;
         }
         count1 = uint(count1 ^ uint(4294967295));
         param1.position = count6;
         param1.writeUnsignedInt(count1);
      }
   }
}

