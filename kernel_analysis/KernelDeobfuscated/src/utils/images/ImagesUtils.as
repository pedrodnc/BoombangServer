package src.utils.images
{
   import flash.display.*;
   import flash.geom.*;
   import flash.utils.*;
   
   public class ImagesUtils
   {
      
      private var items:Array;
      
      private var items1:Array;
      
      private var items2:Array;
      
      private var items3:Array;
      
      private var items4:Array;
      
      private var items5:Array;
      
      private var items6:Array;
      
      private var items7:Array;
      
      private var items8:Array;
      
      private var items9:Array;
      
      private var items10:Array;
      
      private var items11:Array;
      
      private var items12:Array;
      
      private var items13:Array;
      
      private var items14:Array;
      
      private var items15:Array;
      
      private var items16:Array;
      
      private var items17:Array;
      
      private var category:Array;
      
      private var _sw3411:ByteArray;
      
      private var count:int = 0;
      
      private var count1:int = 7;
      
      private var items18:Array;
      
      private var items19:Array;
      
      private var items20:Array;
      
      private var items21:Array;
      
      public function ImagesUtils(param1:Number = 50)
      {
         var count:int = 0;
         this.items = [0,1,5,6,14,15,27,28,2,4,7,13,16,26,29,42,3,8,12,17,25,30,41,43,9,11,18,24,31,40,44,53,10,19,23,32,39,45,52,54,20,22,33,38,46,51,55,60,21,34,37,47,50,56,59,61,35,36,48,49,57,58,62,63];
         this.items1 = new Array(64);
         this.items2 = new Array(64);
         this.items3 = new Array(64);
         this.items4 = new Array(64);
         this.items9 = [0,0,1,5,1,1,1,1,1,1,0,0,0,0,0,0,0];
         this.items10 = [0,1,2,3,4,5,6,7,8,9,10,11];
         this.items11 = [0,0,2,1,3,3,2,4,3,5,5,4,4,0,0,1,125];
         this.items12 = [1,2,3,0,4,17,5,18,33,49,65,6,19,81,97,7,34,113,20,50,129,145,161,8,35,66,177,193,21,82,209,240,36,51,98,114,130,9,10,22,23,24,25,26,37,38,39,40,41,42,52,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,225,226,227,228,229,230,231,232,233,234,241,242,243,244,245,246,247,248,249,250];
         this.items13 = [0,0,3,1,1,1,1,1,1,1,1,1,0,0,0,0,0];
         this.items14 = [0,1,2,3,4,5,6,7,8,9,10,11];
         this.items15 = [0,0,2,1,2,4,4,3,4,7,5,4,4,0,1,2,119];
         this.items16 = [0,1,2,3,17,4,5,33,49,6,18,65,81,7,97,113,19,34,50,129,8,20,66,145,161,177,193,9,35,51,82,240,21,98,114,209,10,22,36,52,225,37,241,23,24,25,26,38,39,40,41,42,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,130,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,226,227,228,229,230,231,232,233,234,242,243,244,245,246,247,248,249,250];
         this.items17 = new Array(65535);
         this.category = new Array(65535);
         this.items18 = new Array(64);
         this.items19 = new Array(64);
         this.items20 = new Array(64);
         this.items21 = new Array(64);
         super();
         if(param1 <= 0)
         {
            param1 = 1;
         }
         if(param1 > 100)
         {
            param1 = 100;
         }
         if(param1 < 50)
         {
            count = int(5000 / param1);
         }
         else
         {
            count = int(200 - param1 * 2);
         }
         this.initHuffmanTbl();
         this.initCategoryNumber();
         this.initQuantTables(count);
      }
      
      private function initQuantTables(param1:int) : void
      {
         var count:int = 0;
         var count3:Number = NaN;
         var count1:int = 0;
         var count8:int = 0;
         var count2:Array = [16,11,10,16,24,40,51,61,12,12,14,19,26,58,60,55,14,13,16,24,40,57,69,56,14,17,22,29,51,87,80,62,18,22,37,56,68,109,103,77,24,35,55,64,81,104,113,92,49,64,78,87,103,121,120,101,72,92,95,98,112,100,103,99];
         count = 0;
         while(count < 64)
         {
            count3 = Math.floor((count2[count] * param1 + 50) / 100);
            if(count3 < 1)
            {
               count3 = 1;
            }
            else if(count3 > 255)
            {
               count3 = 255;
            }
            this.items1[this.items[count]] = count3;
            count++;
         }
         var count7:Array = [17,18,24,47,99,99,99,99,18,21,26,66,99,99,99,99,24,26,56,99,99,99,99,99,47,66,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99];
         count = 0;
         while(count < 64)
         {
            count3 = Math.floor((count7[count] * param1 + 50) / 100);
            if(count3 < 1)
            {
               count3 = 1;
            }
            else if(count3 > 255)
            {
               count3 = 255;
            }
            this.items2[this.items[count]] = count3;
            count++;
         }
         var items:Array = [1,1.387039845,1.306562965,1.175875602,1,0.785694958,0.5411961,0.275899379];
         count = 0;
         while(count8 < 8)
         {
            count1 = 0;
            while(count1 < 8)
            {
               this.items3[count] = 1 / (this.items1[this.items[count]] * items[count8] * items[count1] * 8);
               this.items4[count] = 1 / (this.items2[this.items[count]] * items[count8] * items[count1] * 8);
               count++;
               count1++;
            }
            count8++;
         }
      }
      
      private function computeHuffmanTbl(param1:Array, param2:Array) : Array
      {
         var count3:int = 0;
         var count1:int = 0;
         var count2:int = 0;
         var count7:Array = new Array();
         var items:int = 1;
         while(items <= 16)
         {
            count3 = 1;
            while(count3 <= param1[items])
            {
               count7[param2[count2]] = new BitString();
               count7[param2[count2]].count = count1;
               count7[param2[count2]].len = items;
               count2++;
               count1++;
               count3++;
            }
            count1 *= 2;
            items++;
         }
         return count7;
      }
      
      private function initHuffmanTbl() : void
      {
         this.items5 = this.computeHuffmanTbl(this.items9,this.items10);
         this.items6 = this.computeHuffmanTbl(this.items13,this.items14);
         this.items7 = this.computeHuffmanTbl(this.items11,this.items12);
         this.items8 = this.computeHuffmanTbl(this.items15,this.items16);
      }
      
      private function initCategoryNumber() : void
      {
         var count2:int = 0;
         var count:* = 1;
         var count3:* = 2;
         var count1:int = 1;
         while(count1 <= 15)
         {
            count2 = count;
            while(count2 < count3)
            {
               this.category[32767 + count2] = count1;
               this.items17[32767 + count2] = new BitString();
               this.items17[32767 + count2].len = count1;
               this.items17[32767 + count2].count = count2;
               count2++;
            }
            count2 = -(count3 - 1);
            while(count2 <= -count)
            {
               this.category[32767 + count2] = count1;
               this.items17[32767 + count2] = new BitString();
               this.items17[32767 + count2].len = count1;
               this.items17[32767 + count2].count = count3 - 1 + count2;
               count2++;
            }
            count <<= 1;
            count3 <<= 1;
            count1++;
         }
      }
      
      private function writeBits(param1:BitString) : void
      {
         var count:int = param1.count;
         var count3:int = param1.len - 1;
         while(count3 >= 0)
         {
            if(count & uint(1 << count3))
            {
               this.count |= uint(1 << this.count1);
            }
            count3--;
            --this.count1;
            if(this.count1 < 0)
            {
               if(this.count == 255)
               {
                  this.writeByte(255);
                  this.writeByte(0);
               }
               else
               {
                  this.writeByte(this.count);
               }
               this.count1 = 7;
               this.count = 0;
            }
         }
      }
      
      private function writeByte(param1:int) : void
      {
         this._sw3411.writeByte(param1);
      }
      
      private function writeWord(param1:int) : void
      {
         this.writeByte(param1 >> 8 & 0xFF);
         this.writeByte(param1 & 0xFF);
      }
      
      private function fDCTQuant(param1:Array, param2:Array) : Array
      {
         var count3:Number = NaN;
         var count1:Number = NaN;
         var count2:Number = NaN;
         var count7:Number = NaN;
         var items:Number = NaN;
         var count8:Number = NaN;
         var count6:Number = NaN;
         var count:Number = NaN;
         var count10:Number = NaN;
         var textString12:Number = NaN;
         var isEnabled:Number = NaN;
         var textString14:Number = NaN;
         var count16:Number = NaN;
         var count17:Number = NaN;
         var count18:Number = NaN;
         var count19:Number = NaN;
         var count20:Number = NaN;
         var count21:Number = NaN;
         var count22:Number = NaN;
         var count23:int = 0;
         var count24:int = 0;
         count23 = 0;
         while(count23 < 8)
         {
            count3 = param1[count24 + 0] + param1[count24 + 7];
            count = param1[count24 + 0] - param1[count24 + 7];
            count1 = param1[count24 + 1] + param1[count24 + 6];
            count6 = param1[count24 + 1] - param1[count24 + 6];
            count2 = param1[count24 + 2] + param1[count24 + 5];
            count8 = param1[count24 + 2] - param1[count24 + 5];
            count7 = param1[count24 + 3] + param1[count24 + 4];
            items = param1[count24 + 3] - param1[count24 + 4];
            count10 = count3 + count7;
            textString14 = count3 - count7;
            textString12 = count1 + count2;
            isEnabled = count1 - count2;
            param1[count24 + 0] = count10 + textString12;
            param1[count24 + 4] = count10 - textString12;
            count16 = (isEnabled + textString14) * 0.707106781;
            param1[count24 + 2] = textString14 + count16;
            param1[count24 + 6] = textString14 - count16;
            count10 = items + count8;
            textString12 = count8 + count6;
            isEnabled = count6 + count;
            count20 = (count10 - isEnabled) * 0.382683433;
            count17 = 0.5411961 * count10 + count20;
            count19 = 1.306562965 * isEnabled + count20;
            count18 = textString12 * 0.707106781;
            count21 = count + count18;
            count22 = count - count18;
            param1[count24 + 5] = count22 + count17;
            param1[count24 + 3] = count22 - count17;
            param1[count24 + 1] = count21 + count19;
            param1[count24 + 7] = count21 - count19;
            count24 += 8;
            count23++;
         }
         count24 = 0;
         count23 = 0;
         while(count23 < 8)
         {
            count3 = param1[count24 + 0] + param1[count24 + 56];
            count = param1[count24 + 0] - param1[count24 + 56];
            count1 = param1[count24 + 8] + param1[count24 + 48];
            count6 = param1[count24 + 8] - param1[count24 + 48];
            count2 = param1[count24 + 16] + param1[count24 + 40];
            count8 = param1[count24 + 16] - param1[count24 + 40];
            count7 = param1[count24 + 24] + param1[count24 + 32];
            items = param1[count24 + 24] - param1[count24 + 32];
            count10 = count3 + count7;
            textString14 = count3 - count7;
            textString12 = count1 + count2;
            isEnabled = count1 - count2;
            param1[count24 + 0] = count10 + textString12;
            param1[count24 + 32] = count10 - textString12;
            count16 = (isEnabled + textString14) * 0.707106781;
            param1[count24 + 16] = textString14 + count16;
            param1[count24 + 48] = textString14 - count16;
            count10 = items + count8;
            textString12 = count8 + count6;
            isEnabled = count6 + count;
            count20 = (count10 - isEnabled) * 0.382683433;
            count17 = 0.5411961 * count10 + count20;
            count19 = 1.306562965 * isEnabled + count20;
            count18 = textString12 * 0.707106781;
            count21 = count + count18;
            count22 = count - count18;
            param1[count24 + 40] = count22 + count17;
            param1[count24 + 24] = count22 - count17;
            param1[count24 + 8] = count21 + count19;
            param1[count24 + 56] = count21 - count19;
            count24++;
            count23++;
         }
         count23 = 0;
         while(count23 < 64)
         {
            param1[count23] = Math.round(param1[count23] * param2[count23]);
            count23++;
         }
         return param1;
      }
      
      private function writeAPP0() : void
      {
         this.writeWord(65504);
         this.writeWord(16);
         this.writeByte(74);
         this.writeByte(70);
         this.writeByte(73);
         this.writeByte(70);
         this.writeByte(0);
         this.writeByte(1);
         this.writeByte(1);
         this.writeByte(0);
         this.writeWord(1);
         this.writeWord(1);
         this.writeByte(0);
         this.writeByte(0);
      }
      
      private function writeSOF0(param1:int, param2:int) : void
      {
         this.writeWord(65472);
         this.writeWord(17);
         this.writeByte(8);
         this.writeWord(param2);
         this.writeWord(param1);
         this.writeByte(3);
         this.writeByte(1);
         this.writeByte(17);
         this.writeByte(0);
         this.writeByte(2);
         this.writeByte(17);
         this.writeByte(1);
         this.writeByte(3);
         this.writeByte(17);
         this.writeByte(1);
      }
      
      private function writeDQT() : void
      {
         var count2:int = 0;
         this.writeWord(65499);
         this.writeWord(132);
         this.writeByte(0);
         count2 = 0;
         while(count2 < 64)
         {
            this.writeByte(this.items1[count2]);
            count2++;
         }
         this.writeByte(1);
         count2 = 0;
         while(count2 < 64)
         {
            this.writeByte(this.items2[count2]);
            count2++;
         }
      }
      
      private function writeDHT() : void
      {
         var count2:int = 0;
         this.writeWord(65476);
         this.writeWord(418);
         this.writeByte(0);
         count2 = 0;
         while(count2 < 16)
         {
            this.writeByte(this.items9[count2 + 1]);
            count2++;
         }
         count2 = 0;
         while(count2 <= 11)
         {
            this.writeByte(this.items10[count2]);
            count2++;
         }
         this.writeByte(16);
         count2 = 0;
         while(count2 < 16)
         {
            this.writeByte(this.items11[count2 + 1]);
            count2++;
         }
         count2 = 0;
         while(count2 <= 161)
         {
            this.writeByte(this.items12[count2]);
            count2++;
         }
         this.writeByte(1);
         count2 = 0;
         while(count2 < 16)
         {
            this.writeByte(this.items13[count2 + 1]);
            count2++;
         }
         count2 = 0;
         while(count2 <= 11)
         {
            this.writeByte(this.items14[count2]);
            count2++;
         }
         this.writeByte(17);
         count2 = 0;
         while(count2 < 16)
         {
            this.writeByte(this.items15[count2 + 1]);
            count2++;
         }
         count2 = 0;
         while(count2 <= 161)
         {
            this.writeByte(this.items16[count2]);
            count2++;
         }
      }
      
      private function writeSOS() : void
      {
         this.writeWord(65498);
         this.writeWord(12);
         this.writeByte(3);
         this.writeByte(1);
         this.writeByte(0);
         this.writeByte(2);
         this.writeByte(17);
         this.writeByte(3);
         this.writeByte(17);
         this.writeByte(0);
         this.writeByte(63);
         this.writeByte(0);
      }
      
      private function processDU(param1:Array, param2:Array, param3:Number, param4:Array, param5:Array) : Number
      {
         var count7:int = 0;
         var items:int = 0;
         var count8:int = 0;
         var count6:int = 0;
         var count:BitString = param5[0];
         var count10:BitString = param5[240];
         var textString12:Array = this.fDCTQuant(param1,param2);
         count7 = 0;
         while(count7 < 64)
         {
            this.items18[this.items[count7]] = textString12[count7];
            count7++;
         }
         var isEnabled:int = this.items18[0] - param3;
         param3 = Number(this.items18[0]);
         if(isEnabled == 0)
         {
            this.writeBits(param4[0]);
         }
         else
         {
            this.writeBits(param4[this.category[32767 + isEnabled]]);
            this.writeBits(this.items17[32767 + isEnabled]);
         }
         var textString14:int = 63;
         while(textString14 > 0 && this.items18[textString14] == 0)
         {
            textString14--;
         }
         if(textString14 == 0)
         {
            this.writeBits(count);
            return param3;
         }
         count7 = 1;
         while(count7 <= textString14)
         {
            items = count7;
            while(this.items18[count7] == 0 && count7 <= textString14)
            {
               count7++;
            }
            count8 = count7 - items;
            if(count8 >= 16)
            {
               count6 = 1;
               while(count6 <= count8 / 16)
               {
                  this.writeBits(count10);
                  count6++;
               }
               count8 = int(count8 & 0x0F);
            }
            this.writeBits(param5[count8 * 16 + this.category[32767 + this.items18[count7]]]);
            this.writeBits(this.items17[32767 + this.items18[count7]]);
            count7++;
         }
         if(textString14 != 63)
         {
            this.writeBits(count);
         }
         return param3;
      }
      
      private function RGB2YUV(param1:BitmapData, param2:int, param3:int) : void
      {
         var count1:int = 0;
         var count2:uint = 0;
         var count7:Number = NaN;
         var items:Number = NaN;
         var count8:Number = NaN;
         var count6:int = 0;
         var count:int = 0;
         while(count < 8)
         {
            count1 = 0;
            while(count1 < 8)
            {
               count2 = param1.getPixel32(param2 + count1,param3 + count);
               count7 = Number(count2 >> 16 & 0xFF);
               items = Number(count2 >> 8 & 0xFF);
               count8 = Number(count2 & 0xFF);
               this.items19[count6] = 0.299 * count7 + 0.587 * items + 0.114 * count8 - 128;
               this.items20[count6] = -0.16874 * count7 + -0.33126 * items + 0.5 * count8;
               this.items21[count6] = 0.5 * count7 + -0.41869 * items + -0.08131 * count8;
               count6++;
               count1++;
            }
            count++;
         }
      }
      
      public function encode(param1:BitmapData) : ByteArray
      {
         var count:int = 0;
         var count3:BitString = null;
         var items:int = 0;
         this._sw3411 = new ByteArray();
         this.count = 0;
         this.count1 = 7;
         this.writeWord(65496);
         this.writeAPP0();
         this.writeDQT();
         this.writeSOF0(param1.width,param1.height);
         this.writeDHT();
         this.writeSOS();
         var count1:Number = 0;
         var count2:Number = 0;
         var count7:Number = 0;
         this.count = 0;
         this.count1 = 7;
         while(items < param1.height)
         {
            count = 0;
            while(count < param1.width)
            {
               this.RGB2YUV(param1,count,items);
               count1 = Number(this.processDU(this.items19,this.items3,count1,this.items5,this.items7));
               count2 = Number(this.processDU(this.items20,this.items4,count2,this.items6,this.items8));
               count7 = Number(this.processDU(this.items21,this.items4,count7,this.items6,this.items8));
               count += 8;
            }
            items += 8;
         }
         if(this.count1 >= 0)
         {
            count3 = new BitString();
            count3.len = this.count1 + 1;
            count3.count = (1 << this.count1 + 1) - 1;
            this.writeBits(count3);
         }
         this.writeWord(65497);
         return this._sw3411;
      }
   }
}

