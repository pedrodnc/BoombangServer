package src.allData.scene.typeEscenarios
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.allData.catObjects.*;
   import src.allData.color.*;
   import src.allData.scene.*;
   import src.allData.sceneObjects.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.modules.doors.*;
   import src.modules.interfaz._je14031;
   import src.multiuser.*;
   import src.person.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.utils.*;
   
   public class _il6324 extends MovieClip
   {
      
      public static var _uj6635:int;
      
      public static var y0:int;
      
      public static var scale:Number;
      
      public static var _ov5002:int;
      
      public static var _eg2257:int;
      
      public static var _si11487:int = 80;
      
      public static var _yc11936:int = 40;
      
      public var _nr6929:_kn4108;
      
      public var matrix:Array;
      
      public var _ey7962:Array;
      
      public var _ma6863:Array;
      
      public var _pe5591:Boolean;
      
      public var _bw12803:Number;
      
      public var _ek6850:int;
      
      public var _hb91:int;
      
      public var _xn7478:Boolean;
      
      public var _ir13656:XML;
      
      public var _wy2643:MovieClip;
      
      public var _go7360:Number;
      
      public var objects:Array;
      
      public var _mx5402:uint;
      
      public var _er14789:Array;
      
      public var _pu4970:Boolean;
      
      public var _jy15712:Boolean;
      
      public var _rk6325:Boolean;
      
      public var _kq3779:Boolean;
      
      public var _dq5994:Array;
      
      public var _oo2966:int;
      
      public var _fm15421:Array;
      
      public var _bt12883:Array;
      
      public var _cp8442:_je14031;
      
      protected var _hl8190:_mg605;
      
      private var _bl526:Array;
      
      public var _dl1597:Number;
      
      public function _il6324(param1:_kn4108, param2:int, param3:MovieClip, param4:XML)
      {
         super();
         this._nr6929 = param1;
         this._wy2643 = param3;
         this._ir13656 = param4;
         this._oo2966 = param2;
         this.init();
      }
      
      public static function getPlotXY(param1:Point) : Point
      {
         var _loc2_:Number = _il6324._uj6635 + _il6324._ov5002 / 2 * param1.x + _il6324._ov5002 / 2 * param1.y;
         var _loc3_:Number = _il6324.y0 - _il6324._eg2257 / 2 * param1.x + _il6324._eg2257 / 2 * param1.y;
         return new Point(_loc2_,_loc3_);
      }
      
      public static function _bi7400(param1:Point) : Point
      {
         var _loc2_:int = Math.round((param1.x - _il6324._uj6635) / _il6324._ov5002 + (_il6324.y0 - param1.y) / _il6324._eg2257);
         var _loc3_:int = Math.round((param1.y - _il6324.y0) / _il6324._eg2257 + (param1.x - _il6324._uj6635) / _il6324._ov5002);
         return new Point(_loc2_,_loc3_);
      }
      
      public static function _as10446() : Number
      {
         return scale;
      }
      
      public function init() : void
      {
         this._hl8190 = _mg605.getInstance();
         this.matrix = _mq2583._jv3843(this._ir13656);
         if(this.matrix == null || this.matrix.length == 0)
         {
            this.matrix = new Array();
            this._ey7962 = new Array();
            this._ma6863 = new Array();
         }
         else
         {
            this._ey7962 = _xv14798._vd15929(this.matrix);
            this._ma6863 = _xv14798._vd15929(this.matrix);
         }
         this._pu4970 = false;
         this._pe5591 = true;
         var _loc1_:Point = _mq2583._ic5429(this._ir13656);
         _il6324._uj6635 = _loc1_.x;
         _il6324.y0 = _loc1_.y;
         this._er14789 = _mq2583._qg10619(this._ir13656);
         this._go7360 = _mq2583._bn14023(this._ir13656);
         this._dl1597 = _mq2583._ja1725(this._ir13656);
         this._mx5402 = 0;
         if(this._go7360 < 0.3 || this._go7360 > 1)
         {
            this._go7360 = 1;
         }
         this._ek6850 = this.matrix[0].length;
         this._hb91 = this.matrix.length;
         this._xn7478 = false;
         scale = this._go7360;
         _il6324._ov5002 = _si11487 * this._go7360;
         _il6324._eg2257 = _yc11936 * this._go7360;
         _ga7956.getInstance()._ur2050(this._go7360);
         this._rk6325 = _mq2583._vn7285(this._ir13656);
         this._jy15712 = _mq2583._lx8005(this._ir13656);
         this._kq3779 = _mq2583._ed171(this._ir13656);
         this._dq5994 = null;
         this.objects = new Array();
         this._bt12883 = new Array();
         this._kd2897();
         this._ph8598();
         this._fw9577();
      }
      
      private function _fw9577() : void
      {
         var _loc1_:int = 0;
         this._bl526 = _mq2583._xk2967(this._ir13656);
         if(this._wy2643 as BaseEscenario)
         {
            _loc1_ = 0;
            while(_loc1_ < this._bl526.length)
            {
               this._wy2643.addSound(this._bl526[_loc1_]);
               _loc1_++;
            }
            this._wy2643.playSounds();
         }
      }
      
      public function _pr4733() : void
      {
      }
      
      public function _qk13047() : void
      {
      }
      
      public function destroy() : void
      {
         this._kr6895();
         this._qk13047();
      }
      
      public function _gs5509(param1:Array) : void
      {
         if(param1.length >= 6)
         {
            this._dq5994 = param1.splice(0,6);
            var _loc2_:Array = param1.splice(0,param1.length);
            while(null.length >= 2)
            {
               var _loc3_:Array = null.splice(0,2);
               var _loc4_:int = int(null[0]);
               var _loc5_:int = int(null[1]);
               for each(var _loc6_ in this.objects)
               {
                  if(_loc6_._sl11700._dv13852 == _uq7753._pc8528)
                  {
                     if(null._cs7497.length >= 1)
                     {
                        if(int(null._cs7497[0]) == 0)
                        {
                           null._cs7497.push(0);
                           break;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function _kw13142(param1:_tl4091) : void
      {
         var _loc3_:int = 0;
         this._ey7962 = _xv14798._vd15929(this.matrix);
         while(_loc3_ < _ga7956._sj2270)
         {
            if(param1._pf8204[_loc3_] != null)
            {
               var _loc2_:Point = _ta2443(param1._pf8204[_loc3_])._md8722._gn15250;
               this._ey7962[null.y][null.x] = _loc3_ + 1000;
            }
            _loc3_++;
         }
      }
      
      public function _hc2542(param1:int) : int
      {
         var _loc2_:_jl16088 = null;
         for each(_loc2_ in this._er14789)
         {
            if(param1 >= _loc2_.xFrom && param1 < _loc2_.xTo)
            {
               return _loc2_._gl10041;
            }
         }
         return 0;
      }
      
      public function _ih5473() : Boolean
      {
         return false;
      }
      
      public function _co7364() : Boolean
      {
         return false;
      }
      
      public function _qo15934(param1:Boolean) : void
      {
         this._pe5591 = param1;
      }
      
      public function _kd2897() : void
      {
         this._bw12803 = _mq2583._ms15992(this._ir13656);
      }
      
      public function get _lg6512() : Object
      {
         return _mq2583._vh1503(this._ir13656);
      }
      
      public function _ct15269() : String
      {
         return "";
      }
      
      public function _ja1725() : Number
      {
         return this._dl1597;
      }
      
      public function _qh9465(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:Array, param9:Array, param10:String) : void
      {
         var _loc11_:_uq7753 = _dp11732.getInstance()._ms14382(param2);
         this.objects.push(new _hl15578(this._go7360,this._dl1597,param1,param2,param3,param4,param5,param6,param7,param8,param9,_loc11_,param10,_loc11_._dv13852));
         if(_loc11_._dv13852 == _uq7753._km4276)
         {
            ++this._mx5402;
         }
      }
      
      public function _vt14030(param1:_hl15578) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = int(this.objects.length);
         while(_loc3_ < _loc2_)
         {
            if(_hl15578(this.objects[_loc3_]) == param1)
            {
               if((this.objects[_loc3_] as _hl15578)._sl11700._dv13852 == _uq7753._km4276)
               {
                  --this._mx5402;
               }
               this.objects.splice(_loc3_,1);
               return;
            }
            _loc3_++;
         }
      }
      
      public function _ju14482(param1:_il6324, param2:Array) : void
      {
         var _loc3_:int = int(param2[0]);
         var _loc4_:int = int(param2[1]);
         var _loc5_:int = int(param2[2]);
         var _loc6_:int = int(param2[3]);
         var _loc7_:int = int(param2[4]);
         var _loc8_:int = int(_uq7753._iw2544(param2[5]));
         var _loc9_:String = param2[6];
         var _loc10_:Array = _yq8362.splitInt(String(param2[7]),",");
         var _loc11_:Array = _pn12847._kl14169(param2[8],param2[9]);
         var _loc12_:Array = _jl5367._go4983(param2[10]);
         this._qh9465(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc10_,_loc11_,_loc12_,_loc9_);
      }
      
      public function _dc11123(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:_eu1325 = null;
         var _loc13_:int = 0;
         if(param1[0] == null)
         {
            return;
         }
         while(_loc13_ < param1[0].length)
         {
            _loc2_ = int(param1[0][_loc13_]);
            _loc3_ = 0;
            while(_loc3_ < this._bt12883.length)
            {
               _loc4_ = _eu1325(this._bt12883[_loc3_]);
               if(_loc4_._ap9953 == _loc2_)
               {
                  var _loc5_:int = int(param1[1][_loc13_]);
                  var _loc6_:int = int(param1[2][_loc13_]);
                  var _loc7_:int = int(param1[3][_loc13_]);
                  var _loc8_:int = int(param1[4][_loc13_]);
                  var _loc9_:Boolean = Boolean(0 != -1);
                  var _loc10_:int = int(param1[5][_loc13_]);
                  var _loc11_:int = int(param1[6][_loc13_]);
                  var _loc12_:_kn4108 = _loc4_._ol8098();
                  _loc12_._kb5211 = _rj12650._bn928(0);
                  null._eb11619 = 0;
                  null._fq658 = 0;
                  _loc4_._cj15551(false,null,0,0);
               }
               _loc3_++;
            }
            _loc13_++;
         }
      }
      
      public function _mg3593(param1:Array) : void
      {
         var _loc2_:_kn4108 = null;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc14_:int = 0;
         this._bt12883 = [];
         if(param1[0] == [])
         {
            return;
         }
         if(param1[0][0] == "")
         {
            return;
         }
         if(param1[0][0] == -1)
         {
            return;
         }
         var _loc13_:Array = _mq2583._xw9881(this._ir13656);
         while(_loc14_ < _loc13_.length)
         {
            _loc3_ = false;
            _loc4_ = 0;
            while(_loc4_ < param1[0].length)
            {
               if(_fe9942(_loc13_[_loc14_]).id == param1[0][_loc4_])
               {
                  var _loc5_:int = int(param1[0][_loc4_]);
                  var _loc6_:int = int(param1[1][_loc4_]);
                  var _loc7_:int = int(param1[2][_loc4_]);
                  var _loc8_:int = int(param1[3][_loc4_]);
                  var _loc9_:int = int(param1[4][_loc4_]);
                  var _loc10_:Boolean = Boolean(0 != -1);
                  var _loc11_:int = int(param1[5][_loc4_]);
                  var _loc12_:int = int(param1[6][_loc4_]);
                  _loc2_ = new _kn4108();
                  _loc2_._ls5877 = _hj3512._bn928(0);
                  _loc2_._kb5211 = _rj12650._bn928(0);
                  _loc2_._vn12441 = 0;
                  _loc2_._un6586 = 0;
                  _loc2_._eb11619 = 0;
                  _loc2_._fq658 = 0;
                  _loc2_.name = "";
                  if(_loc13_[_loc14_]._gi10236)
                  {
                     this._bt12883.unshift(new _eu1325(0,_loc2_,_fe9942(_loc13_[_loc14_]),this._cp8442,false,0,0,true));
                  }
                  else
                  {
                     this._bt12883.push(new _eu1325(0,_loc2_,_fe9942(_loc13_[_loc14_]),this._cp8442,false,0,0));
                  }
                  _loc3_ = true;
               }
               _loc4_++;
            }
            if(!_loc3_)
            {
               _loc2_ = new _kn4108();
               this._bt12883.push(new _eu1325(_fe9942(_loc13_[_loc14_]).id,_loc2_,_fe9942(_loc13_[_loc14_]),this._cp8442,false,0,0));
            }
            _loc14_++;
         }
      }
      
      public function _do10975() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._bt12883.length)
         {
            _eu1325(this._bt12883[_loc1_])._ug14374();
            _loc1_++;
         }
      }
      
      public function _cy13400() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._bt12883.length)
         {
            _eu1325(this._bt12883[_loc1_])._lq897();
            _loc1_++;
         }
      }
      
      public function _kr6895() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._bt12883.length)
         {
            _eu1325(this._bt12883[_loc1_]).destroy();
            _loc1_++;
         }
         this._bt12883 = new Array();
      }
      
      private function _ph8598() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this._fm15421 = new Array();
         while(_loc4_ < this.matrix.length)
         {
            _loc1_ = this.matrix[_loc4_];
            _loc2_ = 0;
            while(_loc2_ < _loc1_.length)
            {
               _loc3_ = int(_loc1_[_loc2_]);
               if(!this._gy7472(_loc3_))
               {
                  this._fm15421.push(_loc3_);
               }
               _loc2_++;
            }
            _loc4_++;
         }
      }
      
      private function _gy7472(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._fm15421.length)
         {
            if(param1 == this._fm15421[_loc2_])
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function _ie14377(param1:Array, param2:Array) : Boolean
      {
         var _loc3_:int = 0;
         if(param2.indexOf(this._oo2966) == -1)
         {
            return false;
         }
         while(_loc3_ < this._fm15421.length)
         {
            if(param1.indexOf(this._fm15421[_loc3_]) != -1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function _xu8432(param1:int) : void
      {
         var _loc2_:_hl15578 = this._yk9656(param1);
         if(_loc2_ != null)
         {
            this._di5973(_loc2_);
         }
      }
      
      public function _rw14016() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = int(this.objects.length);
         while(_loc2_ < _loc1_)
         {
            this._di5973(_hl15578(this.objects[_loc2_]));
            _loc2_++;
         }
      }
      
      public function _di5973(param1:_hl15578) : void
      {
         this._hl8190._di5973(param1);
         this._in8371(param1._vf11740,param1._sl11700._vm6245);
      }
      
      public function _xp2686() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.objects != null)
         {
            _loc1_ = int(this.objects.length);
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               if(this.objects[_loc2_] != null)
               {
                  this._xu10900(_hl15578(this.objects[_loc2_]));
               }
               _loc2_++;
            }
            this.objects = new Array();
         }
         if(this._hl8190 != null)
         {
            this._hl8190._lb15133(0);
         }
      }
      
      public function _xu10900(param1:_hl15578) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._hl8190._xu10900(param1);
         if(param1._vf11740 != null)
         {
            this._ca9348(param1._vf11740);
         }
      }
      
      public function _yk9656(param1:int) : _hl15578
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.objects != null)
         {
            _loc2_ = int(this.objects.length);
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               if(_hl15578(this.objects[_loc3_])._hw14129 == param1)
               {
                  return _hl15578(this.objects[_loc3_]);
               }
               _loc3_++;
            }
         }
         return null;
      }
      
      public function _in8371(param1:Array, param2:int = 1) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         if(this._ma6863 == null)
         {
            return;
         }
         if(param1 == null || param1.length == 0)
         {
            return;
         }
         var _loc5_:int = param1.length / 2;
         while(_loc6_ < _loc5_)
         {
            _loc3_ = int(param1[_loc6_ * 2 + 1]);
            _loc4_ = int(param1[_loc6_ * 2]);
            if(_loc3_ >= 0 && _loc3_ < this._ma6863.length && this._ma6863[_loc3_] != null && _loc4_ >= 0 && _loc4_ < this._ma6863[_loc3_].length)
            {
               this._ma6863[_loc3_][_loc4_] = param2;
            }
            _loc6_++;
         }
      }
      
      public function _ca9348(param1:Array, param2:_hl15578 = null) : void
      {
         var _loc3_:_hl15578 = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(this._ma6863 == null || this.matrix == null)
         {
            return;
         }
         if(param1 == null || param1.length == 0)
         {
            return;
         }
         if(Boolean(param2) && this.objects != null)
         {
            for each(_loc3_ in this.objects)
            {
               if(_loc3_.x == param2.x && _loc3_.y == param2.y && _loc3_ != param2)
               {
                  if(_loc3_._dd6502 < 3)
                  {
                     return;
                  }
               }
            }
         }
         var _loc4_:int = param1.length / 2;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = int(param1[_loc5_ * 2 + 1]);
            _loc7_ = int(param1[_loc5_ * 2]);
            if(_loc6_ >= 0 && _loc6_ < this._ma6863.length && this._ma6863[_loc6_] != null && _loc7_ >= 0 && _loc7_ < this._ma6863[_loc6_].length && _loc6_ >= 0 && _loc6_ < this.matrix.length && this.matrix[_loc6_] != null && _loc7_ >= 0 && _loc7_ < this.matrix[_loc6_].length)
            {
               this._ma6863[_loc6_][_loc7_] = this.matrix[_loc6_][_loc7_];
            }
            _loc5_++;
         }
      }
      
      public function _qe12871(param1:Array, param2:Point, param3:int, param4:Array) : Boolean
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc9_:int = 0;
         var _loc8_:int = param1.length / 2;
         while(_loc9_ < _loc8_)
         {
            if(param3 == 0)
            {
               _loc5_ = int(param1[_loc9_ * 2]);
               _loc6_ = int(param1[_loc9_ * 2 + 1]);
            }
            else
            {
               _loc5_ = -param1[_loc9_ * 2 + 1];
               _loc6_ = -param1[_loc9_ * 2];
            }
            if(this._ma6863[param2.y + _loc6_])
            {
               var _loc7_:int = int(this._ma6863[param2.y + _loc6_][param2.x + _loc5_]);
               if(param4.indexOf(0) == -1)
               {
                  return false;
               }
            }
            _loc9_++;
         }
         if(_loc8_ == 0)
         {
            _loc7_ = int(this._ma6863[param2.y][param2.x]);
            if(param4.indexOf(0) == -1)
            {
               return false;
            }
         }
         return true;
      }
      
      public function _qm13780(param1:Point, param2:Array, param3:int) : String
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc8_:int = 0;
         var _loc6_:int = param2.length / 2;
         var _loc7_:* = "";
         while(_loc8_ < _loc6_)
         {
            if(param3 == 0)
            {
               _loc4_ = int(param2[_loc8_ * 2]);
               _loc5_ = int(param2[_loc8_ * 2 + 1]);
            }
            else
            {
               _loc4_ = -param2[_loc8_ * 2 + 1];
               _loc5_ = -param2[_loc8_ * 2];
            }
            _loc7_ += param1.x + _loc4_ + "," + (param1.y + _loc5_);
            if(_loc8_ < _loc6_ - 1)
            {
               _loc7_ += ",";
            }
            _loc8_++;
         }
         return _loc7_;
      }
      
      public function _jc1693(param1:Point) : int
      {
         if(this.matrix == null)
         {
            return -1;
         }
         var _loc2_:int = int((this.matrix[0] as Array).length);
         var _loc3_:int = int((this.matrix as Array).length);
         if(param1.x < _loc2_ && param1.y < _loc3_)
         {
            return this.matrix[param1.y][param1.x];
         }
         return -1;
      }
   }
}

