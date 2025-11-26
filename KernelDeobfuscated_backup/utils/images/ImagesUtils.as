package src.utils.images
{
   import flash.display.*;
   import flash.geom.*;
   import flash.utils.*;
   
   public class _fx12363
   {
      
      private var _cm8390:Array;
      
      private var _sk15337:Array;
      
      private var _ox1866:Array;
      
      private var _mb2410:Array;
      
      private var _ll8551:Array;
      
      private var _pa7953:Array;
      
      private var _ab78:Array;
      
      private var _va10216:Array;
      
      private var _ta10585:Array;
      
      private var _uo12791:Array;
      
      private var _np11318:Array;
      
      private var _gq1412:Array;
      
      private var _ww9629:Array;
      
      private var _qh14511:Array;
      
      private var _rh4471:Array;
      
      private var _bx696:Array;
      
      private var _ky8409:Array;
      
      private var _mw15002:Array;
      
      private var category:Array;
      
      private var _sw3411:ByteArray;
      
      private var _du14485:int = 0;
      
      private var _md6830:int = 7;
      
      private var _qn14004:Array;
      
      private var _vs5389:Array;
      
      private var _gs9273:Array;
      
      private var _wq8947:Array;
      
      public function _fx12363(param1:Number = 50)
      {
         var _loc2_:int = 0;
         this._cm8390 = [0,1,5,6,14,15,27,28,2,4,7,13,16,26,29,42,3,8,12,17,25,30,41,43,9,11,18,24,31,40,44,53,10,19,23,32,39,45,52,54,20,22,33,38,46,51,55,60,21,34,37,47,50,56,59,61,35,36,48,49,57,58,62,63];
         this._sk15337 = new Array(64);
         this._ox1866 = new Array(64);
         this._mb2410 = new Array(64);
         this._ll8551 = new Array(64);
         this._uo12791 = [0,0,1,5,1,1,1,1,1,1,0,0,0,0,0,0,0];
         this._np11318 = [0,1,2,3,4,5,6,7,8,9,10,11];
         this._gq1412 = [0,0,2,1,3,3,2,4,3,5,5,4,4,0,0,1,125];
         this._ww9629 = [1,2,3,0,4,17,5,18,33,49,65,6,19,81,97,7,34,113,20,50,129,145,161,8,35,66,177,193,21,82,209,240,36,51,98,114,130,9,10,22,23,24,25,26,37,38,39,40,41,42,52,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,225,226,227,228,229,230,231,232,233,234,241,242,243,244,245,246,247,248,249,250];
         this._qh14511 = [0,0,3,1,1,1,1,1,1,1,1,1,0,0,0,0,0];
         this._rh4471 = [0,1,2,3,4,5,6,7,8,9,10,11];
         this._bx696 = [0,0,2,1,2,4,4,3,4,7,5,4,4,0,1,2,119];
         this._ky8409 = [0,1,2,3,17,4,5,33,49,6,18,65,81,7,97,113,19,34,50,129,8,20,66,145,161,177,193,9,35,51,82,240,21,98,114,209,10,22,36,52,225,37,241,23,24,25,26,38,39,40,41,42,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,130,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,226,227,228,229,230,231,232,233,234,242,243,244,245,246,247,248,249,250];
         this._mw15002 = new Array(65535);
         this.category = new Array(65535);
         this._qn14004 = new Array(64);
         this._vs5389 = new Array(64);
         this._gs9273 = new Array(64);
         this._wq8947 = new Array(64);
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
            _loc2_ = int(5000 / param1);
         }
         else
         {
            _loc2_ = int(200 - param1 * 2);
         }
         this.initHuffmanTbl();
         this.initCategoryNumber();
         this.initQuantTables(_loc2_);
      }
      
      private function initQuantTables(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc8_:int = 0;
         var _loc5_:Array = [16,11,10,16,24,40,51,61,12,12,14,19,26,58,60,55,14,13,16,24,40,57,69,56,14,17,22,29,51,87,80,62,18,22,37,56,68,109,103,77,24,35,55,64,81,104,113,92,49,64,78,87,103,121,120,101,72,92,95,98,112,100,103,99];
         _loc2_ = 0;
         while(_loc2_ < 64)
         {
            _loc3_ = Math.floor((_loc5_[_loc2_] * param1 + 50) / 100);
            if(_loc3_ < 1)
            {
               _loc3_ = 1;
            }
            else if(_loc3_ > 255)
            {
               _loc3_ = 255;
            }
            this._sk15337[this._cm8390[_loc2_]] = _loc3_;
            _loc2_++;
         }
         var _loc6_:Array = [17,18,24,47,99,99,99,99,18,21,26,66,99,99,99,99,24,26,56,99,99,99,99,99,47,66,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99];
         _loc2_ = 0;
         while(_loc2_ < 64)
         {
            _loc3_ = Math.floor((_loc6_[_loc2_] * param1 + 50) / 100);
            if(_loc3_ < 1)
            {
               _loc3_ = 1;
            }
            else if(_loc3_ > 255)
            {
               _loc3_ = 255;
            }
            this._ox1866[this._cm8390[_loc2_]] = _loc3_;
            _loc2_++;
         }
         var _loc7_:Array = [1,1.387039845,1.306562965,1.175875602,1,0.785694958,0.5411961,0.275899379];
         _loc2_ = 0;
         while(_loc8_ < 8)
         {
            _loc4_ = 0;
            while(_loc4_ < 8)
            {
               this._mb2410[_loc2_] = 1 / (this._sk15337[this._cm8390[_loc2_]] * _loc7_[_loc8_] * _loc7_[_loc4_] * 8);
               this._ll8551[_loc2_] = 1 / (this._ox1866[this._cm8390[_loc2_]] * _loc7_[_loc8_] * _loc7_[_loc4_] * 8);
               _loc2_++;
               _loc4_++;
            }
            _loc8_++;
         }
      }
      
      private function computeHuffmanTbl(param1:Array, param2:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = new Array();
         var _loc7_:int = 1;
         while(_loc7_ <= 16)
         {
            _loc3_ = 1;
            while(_loc3_ <= param1[_loc7_])
            {
               _loc6_[param2[_loc5_]] = new BitString();
               _loc6_[param2[_loc5_]]._ay11850 = _loc4_;
               _loc6_[param2[_loc5_]].len = _loc7_;
               _loc5_++;
               _loc4_++;
               _loc3_++;
            }
            _loc4_ *= 2;
            _loc7_++;
         }
         return _loc6_;
      }
      
      private function initHuffmanTbl() : void
      {
         this._pa7953 = this.computeHuffmanTbl(this._uo12791,this._np11318);
         this._ab78 = this.computeHuffmanTbl(this._qh14511,this._rh4471);
         this._va10216 = this.computeHuffmanTbl(this._gq1412,this._ww9629);
         this._ta10585 = this.computeHuffmanTbl(this._bx696,this._ky8409);
      }
      
      private function initCategoryNumber() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = 1;
         var _loc3_:* = 2;
         var _loc4_:int = 1;
         while(_loc4_ <= 15)
         {
            _loc1_ = _loc2_;
            while(_loc1_ < _loc3_)
            {
               this.category[32767 + _loc1_] = _loc4_;
               this._mw15002[32767 + _loc1_] = new BitString();
               this._mw15002[32767 + _loc1_].len = _loc4_;
               this._mw15002[32767 + _loc1_]._ay11850 = _loc1_;
               _loc1_++;
            }
            _loc1_ = -(_loc3_ - 1);
            while(_loc1_ <= -_loc2_)
            {
               this.category[32767 + _loc1_] = _loc4_;
               this._mw15002[32767 + _loc1_] = new BitString();
               this._mw15002[32767 + _loc1_].len = _loc4_;
               this._mw15002[32767 + _loc1_]._ay11850 = _loc3_ - 1 + _loc1_;
               _loc1_++;
            }
            _loc2_ <<= 1;
            _loc3_ <<= 1;
            _loc4_++;
         }
      }
      
      private function writeBits(param1:BitString) : void
      {
         var _loc2_:int = param1._ay11850;
         var _loc3_:int = param1.len - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_ & uint(1 << _loc3_))
            {
               this._du14485 |= uint(1 << this._md6830);
            }
            _loc3_--;
            --this._md6830;
            if(this._md6830 < 0)
            {
               if(this._du14485 == 255)
               {
                  this.writeByte(255);
                  this.writeByte(0);
               }
               else
               {
                  this.writeByte(this._du14485);
               }
               this._md6830 = 7;
               this._du14485 = 0;
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
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         _loc22_ = 0;
         while(_loc22_ < 8)
         {
            _loc3_ = param1[_loc23_ + 0] + param1[_loc23_ + 7];
            _loc10_ = param1[_loc23_ + 0] - param1[_loc23_ + 7];
            _loc4_ = param1[_loc23_ + 1] + param1[_loc23_ + 6];
            _loc9_ = param1[_loc23_ + 1] - param1[_loc23_ + 6];
            _loc5_ = param1[_loc23_ + 2] + param1[_loc23_ + 5];
            _loc8_ = param1[_loc23_ + 2] - param1[_loc23_ + 5];
            _loc6_ = param1[_loc23_ + 3] + param1[_loc23_ + 4];
            _loc7_ = param1[_loc23_ + 3] - param1[_loc23_ + 4];
            _loc11_ = _loc3_ + _loc6_;
            _loc14_ = _loc3_ - _loc6_;
            _loc12_ = _loc4_ + _loc5_;
            _loc13_ = _loc4_ - _loc5_;
            param1[_loc23_ + 0] = _loc11_ + _loc12_;
            param1[_loc23_ + 4] = _loc11_ - _loc12_;
            _loc15_ = (_loc13_ + _loc14_) * 0.707106781;
            param1[_loc23_ + 2] = _loc14_ + _loc15_;
            param1[_loc23_ + 6] = _loc14_ - _loc15_;
            _loc11_ = _loc7_ + _loc8_;
            _loc12_ = _loc8_ + _loc9_;
            _loc13_ = _loc9_ + _loc10_;
            _loc19_ = (_loc11_ - _loc13_) * 0.382683433;
            _loc16_ = 0.5411961 * _loc11_ + _loc19_;
            _loc18_ = 1.306562965 * _loc13_ + _loc19_;
            _loc17_ = _loc12_ * 0.707106781;
            _loc20_ = _loc10_ + _loc17_;
            _loc21_ = _loc10_ - _loc17_;
            param1[_loc23_ + 5] = _loc21_ + _loc16_;
            param1[_loc23_ + 3] = _loc21_ - _loc16_;
            param1[_loc23_ + 1] = _loc20_ + _loc18_;
            param1[_loc23_ + 7] = _loc20_ - _loc18_;
            _loc23_ += 8;
            _loc22_++;
         }
         _loc23_ = 0;
         _loc22_ = 0;
         while(_loc22_ < 8)
         {
            _loc3_ = param1[_loc23_ + 0] + param1[_loc23_ + 56];
            _loc10_ = param1[_loc23_ + 0] - param1[_loc23_ + 56];
            _loc4_ = param1[_loc23_ + 8] + param1[_loc23_ + 48];
            _loc9_ = param1[_loc23_ + 8] - param1[_loc23_ + 48];
            _loc5_ = param1[_loc23_ + 16] + param1[_loc23_ + 40];
            _loc8_ = param1[_loc23_ + 16] - param1[_loc23_ + 40];
            _loc6_ = param1[_loc23_ + 24] + param1[_loc23_ + 32];
            _loc7_ = param1[_loc23_ + 24] - param1[_loc23_ + 32];
            _loc11_ = _loc3_ + _loc6_;
            _loc14_ = _loc3_ - _loc6_;
            _loc12_ = _loc4_ + _loc5_;
            _loc13_ = _loc4_ - _loc5_;
            param1[_loc23_ + 0] = _loc11_ + _loc12_;
            param1[_loc23_ + 32] = _loc11_ - _loc12_;
            _loc15_ = (_loc13_ + _loc14_) * 0.707106781;
            param1[_loc23_ + 16] = _loc14_ + _loc15_;
            param1[_loc23_ + 48] = _loc14_ - _loc15_;
            _loc11_ = _loc7_ + _loc8_;
            _loc12_ = _loc8_ + _loc9_;
            _loc13_ = _loc9_ + _loc10_;
            _loc19_ = (_loc11_ - _loc13_) * 0.382683433;
            _loc16_ = 0.5411961 * _loc11_ + _loc19_;
            _loc18_ = 1.306562965 * _loc13_ + _loc19_;
            _loc17_ = _loc12_ * 0.707106781;
            _loc20_ = _loc10_ + _loc17_;
            _loc21_ = _loc10_ - _loc17_;
            param1[_loc23_ + 40] = _loc21_ + _loc16_;
            param1[_loc23_ + 24] = _loc21_ - _loc16_;
            param1[_loc23_ + 8] = _loc20_ + _loc18_;
            param1[_loc23_ + 56] = _loc20_ - _loc18_;
            _loc23_++;
            _loc22_++;
         }
         _loc22_ = 0;
         while(_loc22_ < 64)
         {
            param1[_loc22_] = Math.round(param1[_loc22_] * param2[_loc22_]);
            _loc22_++;
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
         var _loc1_:int = 0;
         this.writeWord(65499);
         this.writeWord(132);
         this.writeByte(0);
         _loc1_ = 0;
         while(_loc1_ < 64)
         {
            this.writeByte(this._sk15337[_loc1_]);
            _loc1_++;
         }
         this.writeByte(1);
         _loc1_ = 0;
         while(_loc1_ < 64)
         {
            this.writeByte(this._ox1866[_loc1_]);
            _loc1_++;
         }
      }
      
      private function writeDHT() : void
      {
         var _loc1_:int = 0;
         this.writeWord(65476);
         this.writeWord(418);
         this.writeByte(0);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this._uo12791[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this.writeByte(this._np11318[_loc1_]);
            _loc1_++;
         }
         this.writeByte(16);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this._gq1412[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 161)
         {
            this.writeByte(this._ww9629[_loc1_]);
            _loc1_++;
         }
         this.writeByte(1);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this._qh14511[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this.writeByte(this._rh4471[_loc1_]);
            _loc1_++;
         }
         this.writeByte(17);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this._bx696[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 161)
         {
            this.writeByte(this._ky8409[_loc1_]);
            _loc1_++;
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
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitString = param5[0];
         var _loc11_:BitString = param5[240];
         var _loc12_:Array = this.fDCTQuant(param1,param2);
         _loc6_ = 0;
         while(_loc6_ < 64)
         {
            this._qn14004[this._cm8390[_loc6_]] = _loc12_[_loc6_];
            _loc6_++;
         }
         var _loc13_:int = this._qn14004[0] - param3;
         param3 = Number(this._qn14004[0]);
         if(_loc13_ == 0)
         {
            this.writeBits(param4[0]);
         }
         else
         {
            this.writeBits(param4[this.category[32767 + _loc13_]]);
            this.writeBits(this._mw15002[32767 + _loc13_]);
         }
         var _loc14_:int = 63;
         while(_loc14_ > 0 && this._qn14004[_loc14_] == 0)
         {
            _loc14_--;
         }
         if(_loc14_ == 0)
         {
            this.writeBits(_loc10_);
            return param3;
         }
         _loc6_ = 1;
         while(_loc6_ <= _loc14_)
         {
            _loc7_ = _loc6_;
            while(this._qn14004[_loc6_] == 0 && _loc6_ <= _loc14_)
            {
               _loc6_++;
            }
            _loc8_ = _loc6_ - _loc7_;
            if(_loc8_ >= 16)
            {
               _loc9_ = 1;
               while(_loc9_ <= _loc8_ / 16)
               {
                  this.writeBits(_loc11_);
                  _loc9_++;
               }
               _loc8_ = int(_loc8_ & 0x0F);
            }
            this.writeBits(param5[_loc8_ * 16 + this.category[32767 + this._qn14004[_loc6_]]]);
            this.writeBits(this._mw15002[32767 + this._qn14004[_loc6_]]);
            _loc6_++;
         }
         if(_loc14_ != 63)
         {
            this.writeBits(_loc10_);
         }
         return param3;
      }
      
      private function RGB2YUV(param1:BitmapData, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:uint = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         while(_loc10_ < 8)
         {
            _loc4_ = 0;
            while(_loc4_ < 8)
            {
               _loc5_ = param1.getPixel32(param2 + _loc4_,param3 + _loc10_);
               _loc6_ = Number(_loc5_ >> 16 & 0xFF);
               _loc7_ = Number(_loc5_ >> 8 & 0xFF);
               _loc8_ = Number(_loc5_ & 0xFF);
               this._vs5389[_loc9_] = 0.299 * _loc6_ + 0.587 * _loc7_ + 0.114 * _loc8_ - 128;
               this._gs9273[_loc9_] = -0.16874 * _loc6_ + -0.33126 * _loc7_ + 0.5 * _loc8_;
               this._wq8947[_loc9_] = 0.5 * _loc6_ + -0.41869 * _loc7_ + -0.08131 * _loc8_;
               _loc9_++;
               _loc4_++;
            }
            _loc10_++;
         }
      }
      
      public function encode(param1:BitmapData) : ByteArray
      {
         var _loc2_:int = 0;
         var _loc3_:BitString = null;
         var _loc7_:int = 0;
         this._sw3411 = new ByteArray();
         this._du14485 = 0;
         this._md6830 = 7;
         this.writeWord(65496);
         this.writeAPP0();
         this.writeDQT();
         this.writeSOF0(param1.width,param1.height);
         this.writeDHT();
         this.writeSOS();
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         this._du14485 = 0;
         this._md6830 = 7;
         while(_loc7_ < param1.height)
         {
            _loc2_ = 0;
            while(_loc2_ < param1.width)
            {
               this.RGB2YUV(param1,_loc2_,_loc7_);
               _loc4_ = Number(this.processDU(this._vs5389,this._mb2410,_loc4_,this._pa7953,this._va10216));
               _loc5_ = Number(this.processDU(this._gs9273,this._ll8551,_loc5_,this._ab78,this._ta10585));
               _loc6_ = Number(this.processDU(this._wq8947,this._ll8551,_loc6_,this._ab78,this._ta10585));
               _loc2_ += 8;
            }
            _loc7_ += 8;
         }
         if(this._md6830 >= 0)
         {
            _loc3_ = new BitString();
            _loc3_.len = this._md6830 + 1;
            _loc3_._ay11850 = (1 << this._md6830 + 1) - 1;
            this.writeBits(_loc3_);
         }
         this.writeWord(65497);
         return this._sw3411;
      }
   }
}

