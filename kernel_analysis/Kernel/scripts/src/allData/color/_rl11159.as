package src.allData.color
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import src.utils.*;
   
   public class _rl11159
   {
      
      private static const _sb5099:String = "rollOver";
      
      private static const _ia2795:String = "rollOut";
      
      private static const _bh13669:String = "press";
      
      private static const _ti12490:String = "mcRueda";
      
      private static const _yh8888:String = "mcRuedaColores";
      
      private static const _ee15633:String = "mcRuedaColoresAlpha";
      
      private static const _dx13338:String = "mcFlechaDeg";
      
      private static const _tt9475:String = "mcOldColor";
      
      private static const _nn9758:String = "mcActualColor";
      
      private static const _he929:String = "mcColDeg";
      
      private static const _aj11100:String = "mcPointColorSel";
      
      private static const _rn5211:String = "mcColRef";
      
      private static const _ao1135:String = "mcColorPreview";
      
      private static const _ca3731:String = "mcTab";
      
      private var _tv12183:MovieClip;
      
      private var colorTransform:ColorTransform;
      
      private var _fj7719:Boolean;
      
      private var _pg5339:Boolean;
      
      private var _ri1865:Function;
      
      private var _gt11843:Function;
      
      private var _dc7086:Boolean;
      
      private var _hc5432:Boolean;
      
      private var _vm8323:_pn12847;
      
      private var _gx10796:_pn12847;
      
      private var _ig10958:_pn12847;
      
      private var _gn15877:int;
      
      private var _li3831:int;
      
      private var _py8782:int;
      
      private var _kn7971:int;
      
      private var _yv9708:Array;
      
      private var _jg1404:int;
      
      public function _rl11159(param1:MovieClip, param2:Function, param3:Function, param4:Boolean, param5:Boolean, param6:_pn12847, param7:int, param8:int = 0, param9:int = 0)
      {
         super();
         var _loc10_:Object = _xv14798._nq1726(param6.color);
         param6._xk1425 = _loc10_[0];
         param6._fp5369 = _loc10_[1];
         param6.alpha = _loc10_[2];
         this._tv12183 = param1;
         this.colorTransform = new ColorTransform();
         this._fj7719 = false;
         this._pg5339 = false;
         this._ri1865 = param2;
         this._gt11843 = param3;
         this._dc7086 = param4;
         this._hc5432 = param5;
         this._vm8323 = param6._iu12125();
         this._gx10796 = param6._iu12125();
         this._ig10958 = param6;
         this._gn15877 = param7;
         this._li3831 = param8;
         this._py8782 = param9;
         this._kn7971 = 0;
         this._jg1404 = 0;
      }
      
      public function init() : void
      {
         this._fo14505();
         this.addListeners();
      }
      
      private function _fq3980() : void
      {
         var _loc2_:Point = null;
         var _loc3_:uint = 0;
         var _loc8_:MovieClip = MovieClip(this._tv12183[_ti12490][_yh8888]);
         _loc2_ = new Point(this._vm8323._xk1425,this._vm8323._fp5369);
         _loc3_ = uint(_xv14798._dv6831(_loc8_,_loc2_));
         _loc3_ = uint(_xv14798._dm1958(_loc3_,Number(this._vm8323.alpha / 100)));
         if(_loc3_ == this._vm8323.color)
         {
            return;
         }
         var _loc4_:BitmapData = new BitmapData(_loc8_.width,_loc8_.height,true,0);
         _loc4_.draw(_loc8_,new Matrix());
         var _loc5_:int = 0;
         while(true)
         {
            var _loc6_:int = 0;
            while(0 <= _loc8_.width)
            {
               var _loc7_:int = 0;
               while(0 <= _loc8_.height)
               {
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  _loc3_ = uint(null.getPixel(_loc2_.x,_loc2_.y));
                  _loc3_ = uint(_xv14798._dm1958(_loc3_,Number(0 / 100)));
                  if(_loc3_ == this._vm8323.color)
                  {
                     this._gx10796._xk1425 = this._ig10958._xk1425 = this._vm8323._xk1425 = 0;
                     this._gx10796._fp5369 = this._ig10958._fp5369 = this._vm8323._fp5369 = 0;
                     this._gx10796.alpha = this._ig10958.alpha = this._vm8323.alpha = 0;
                     break;
                  }
                  _loc7_++;
               }
               _loc6_++;
            }
            _loc5_++;
         }
      }
      
      public function destroy() : void
      {
         this.removeListeners();
      }
      
      private function _fo14505() : void
      {
         this._ma15254();
         this._dk8895();
         this._er3868();
         this._qc1942();
         if(this._dc7086)
         {
            this._ij11002();
         }
         this._jy1420();
      }
      
      public function _rc11984() : _pn12847
      {
         return this._gx10796._iu12125();
      }
      
      public function _pm3274(param1:_pn12847) : void
      {
         this._ig10958 = param1;
         this._fo14505();
         this._ri1865();
      }
      
      public function _ug12278(param1:Array) : void
      {
         if(this._li3831 != param1.length)
         {
            return;
         }
         this._yv9708 = param1;
         this._gw6643();
      }
      
      private function _gw6643() : void
      {
         var _loc2_:int = 0;
         var _loc1_:ColorTransform = new ColorTransform();
         while(_loc2_ < this._li3831)
         {
            _loc1_.color = _pn12847(this._yv9708[_loc2_]).color;
            MovieClip(this._tv12183[_rn5211 + _loc2_][_ao1135]).transform.colorTransform = _loc1_;
            _loc2_++;
         }
      }
      
      private function _sh344(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._li3831)
         {
            if(MovieClip(param1.currentTarget) == this._tv12183[_rn5211 + _loc2_])
            {
               this._ig10958._vq3997(_pn12847(this._yv9708[_loc2_]));
               this._fo14505();
               this._ri1865();
               return;
            }
            _loc2_++;
         }
      }
      
      private function _co5609(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(_sb5099);
      }
      
      private function _xr11366(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(_ia2795);
      }
      
      private function _cw5495(param1:MouseEvent) : void
      {
         this._ig10958._vq3997(this._gx10796);
         this._fo14505();
         this._ri1865();
      }
      
      private function _gy7012(param1:MouseEvent) : void
      {
         this._ig10958._vq3997(this._vm8323);
         this._fo14505();
         this._ri1865();
      }
      
      public function _wf7166() : void
      {
         var _loc1_:int = 0;
         if(this._py8782 == 0)
         {
            return;
         }
         while(_loc1_ < this._py8782)
         {
            MovieClip(this._tv12183[_ca3731 + _loc1_]).visible = true;
            MovieClip(this._tv12183[_ca3731 + _loc1_]).gotoAndStop(_ia2795);
            _loc1_++;
         }
         MovieClip(this._tv12183[_ca3731 + this._kn7971]).gotoAndStop(_sb5099);
      }
      
      public function _nr795() : void
      {
         var _loc1_:int = 0;
         if(this._py8782 == 0)
         {
            return;
         }
         while(_loc1_ < this._py8782)
         {
            MovieClip(this._tv12183[_ca3731 + _loc1_]).visible = false;
            _loc1_++;
         }
      }
      
      private function _ha7192(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._py8782)
         {
            if(MovieClip(param1.currentTarget) == this._tv12183[_ca3731 + _loc2_])
            {
               if(_loc2_ != this._kn7971)
               {
                  MovieClip(this._tv12183[_ca3731 + _loc2_]).gotoAndStop(_sb5099);
               }
            }
            _loc2_++;
         }
      }
      
      private function _sa4638(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._py8782)
         {
            if(MovieClip(param1.currentTarget) == this._tv12183[_ca3731 + _loc2_])
            {
               if(_loc2_ != this._kn7971)
               {
                  MovieClip(this._tv12183[_ca3731 + _loc2_]).gotoAndStop(_ia2795);
               }
            }
            _loc2_++;
         }
      }
      
      private function _gk7776(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._py8782)
         {
            if(MovieClip(param1.currentTarget) == this._tv12183[_ca3731 + _loc2_])
            {
               if(_loc2_ != this._kn7971)
               {
                  this._kn7971 = _loc2_;
                  this._wf7166();
               }
            }
            _loc2_++;
         }
      }
      
      public function _iv7667() : int
      {
         return this._kn7971;
      }
      
      private function _kr1377(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(_xv14798._gl15973(MovieClip(param1.target),new Point(param1.stageX,param1.stageY)))
         {
            this._qm16096();
            this._de8325(param1.localX,param1.localY);
            this._fj7719 = true;
         }
      }
      
      private function _cp5470(param1:MouseEvent) : void
      {
         this._fj7719 = false;
      }
      
      private function _fh15566(param1:MouseEvent) : void
      {
         if(!this._fj7719)
         {
            return;
         }
         if(_xv14798._gl15973(MovieClip(param1.target),new Point(param1.stageX,param1.stageY)))
         {
            this._qm16096();
            this._de8325(param1.localX,param1.localY);
         }
      }
      
      private function _od8361(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this._pg5339 = true;
      }
      
      private function _lv2853(param1:MouseEvent) : void
      {
         this._pg5339 = false;
      }
      
      private function _iw4473(param1:MouseEvent) : void
      {
         if(!this._pg5339)
         {
            return;
         }
         var _loc2_:int = int(MovieClip(this._tv12183[_he929]).x);
         var _loc3_:int = param1.stageX - this._gn15877 - MovieClip(this._tv12183[_dx13338]).width / 2;
         if(_loc3_ < _loc2_ + this._jg1404)
         {
            _loc3_ = _loc2_ + this._jg1404;
         }
         if(_loc3_ > _loc2_ + 100)
         {
            _loc3_ = _loc2_ + 100;
         }
         this._ig10958.alpha = _loc3_ - _loc2_;
         this._ig10958.color = this._cs5773();
         this._vm8323 = this._ig10958._iu12125();
         this._qc1942();
         this._ma15254();
         this._jy1420();
         this._ri1865();
      }
      
      private function _gy13775(param1:MouseEvent) : void
      {
      }
      
      private function _vy12843(param1:MouseEvent) : void
      {
      }
      
      public function _kb449(param1:int) : void
      {
         this._jg1404 = param1;
      }
      
      private function _qm16096() : void
      {
         var _loc1_:int = int(this._ig10958.alpha);
         if(_loc1_ < this._jg1404)
         {
            _loc1_ = int(this._jg1404);
            this._ig10958.alpha = _loc1_;
            this._ig10958.color = this._cs5773();
            this._vm8323 = this._ig10958._iu12125();
            this._qc1942();
            this._ma15254();
            this._jy1420();
            this._ri1865();
         }
      }
      
      private function _de8325(param1:int, param2:int) : void
      {
         this._ig10958._xk1425 = param1;
         this._ig10958._fp5369 = param2;
         this._ig10958.color = this._cs5773();
         this._vm8323 = this._ig10958._iu12125();
         this._dk8895();
         this._er3868();
         this._jy1420();
         this._ri1865();
      }
      
      private function _ma15254() : void
      {
         MovieClip(this._tv12183[_ti12490][_ee15633]).alpha = (100 - this._ig10958.alpha) / 100;
      }
      
      private function _dk8895() : void
      {
         MovieClip(this._tv12183[_ti12490][_aj11100]).x = this._ig10958._xk1425;
         MovieClip(this._tv12183[_ti12490][_aj11100]).y = this._ig10958._fp5369;
      }
      
      private function _er3868() : void
      {
         this.colorTransform.color = this._yc10510();
         MovieClip(this._tv12183[_he929]).transform.colorTransform = this.colorTransform;
      }
      
      private function _qc1942() : void
      {
         MovieClip(this._tv12183[_dx13338]).x = MovieClip(this._tv12183[_he929]).x + this._ig10958.alpha;
      }
      
      private function _ij11002() : void
      {
         this.colorTransform.color = this._gx10796.color;
         MovieClip(this._tv12183[_tt9475]).transform.colorTransform = this.colorTransform;
      }
      
      private function _jy1420() : void
      {
         this.colorTransform.color = this._vm8323.color;
         if(this._hc5432)
         {
            MovieClip(this._tv12183[_nn9758]).transform.colorTransform = this.colorTransform;
         }
      }
      
      private function _cs5773() : uint
      {
         var _loc1_:uint = 0;
         var _loc2_:MovieClip = MovieClip(this._tv12183[_ti12490][_yh8888]);
         var _loc3_:Point = new Point(this._ig10958._xk1425,this._ig10958._fp5369);
         _loc1_ = uint(_xv14798._dv6831(_loc2_,_loc3_));
         return _xv14798._dm1958(_loc1_,Number(this._ig10958.alpha / 100));
      }
      
      private function _yc10510() : uint
      {
         var _loc2_:MovieClip = MovieClip(this._tv12183[_ti12490][_yh8888]);
         var _loc3_:Point = new Point(this._ig10958._xk1425,this._ig10958._fp5369);
         return _xv14798._dv6831(_loc2_,_loc3_);
      }
      
      private function addListeners() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         MovieClip(this._tv12183[_dx13338]).addEventListener(MouseEvent.MOUSE_DOWN,this._od8361);
         MovieClip(this._tv12183[_dx13338]).addEventListener(MouseEvent.MOUSE_DOWN,this._od8361);
         MovieClip(this._tv12183[_ti12490][_aj11100]).mouseEnabled = false;
         MovieClip(this._tv12183[_ti12490][_ee15633]).addEventListener(MouseEvent.MOUSE_DOWN,this._kr1377);
         MovieClip(this._tv12183[_ti12490][_ee15633]).addEventListener(MouseEvent.MOUSE_MOVE,this._fh15566);
         MovieClip(this._tv12183[_ti12490][_ee15633]).stage.addEventListener(MouseEvent.MOUSE_UP,this._cp5470);
         MovieClip(this._tv12183[_dx13338]).addEventListener(MouseEvent.MOUSE_DOWN,this._od8361);
         MovieClip(this._tv12183[_dx13338]).stage.addEventListener(MouseEvent.MOUSE_UP,this._lv2853);
         MovieClip(this._tv12183[_dx13338]).stage.addEventListener(MouseEvent.MOUSE_MOVE,this._iw4473);
         MovieClip(this._tv12183[_dx13338]).addEventListener(MouseEvent.MOUSE_OVER,this._gy13775);
         MovieClip(this._tv12183[_dx13338]).addEventListener(MouseEvent.MOUSE_OUT,this._vy12843);
         if(this._dc7086)
         {
            MovieClip(this._tv12183[_tt9475]).addEventListener(MouseEvent.MOUSE_DOWN,this._cw5495);
         }
         if(this._hc5432)
         {
            MovieClip(this._tv12183[_nn9758]).addEventListener(MouseEvent.MOUSE_DOWN,this._gy7012);
         }
         while(_loc1_ < this._li3831)
         {
            MovieClip(this._tv12183[_rn5211 + _loc1_]).mouseChildren = false;
            MovieClip(this._tv12183[_rn5211 + _loc1_]).addEventListener(MouseEvent.MOUSE_DOWN,this._sh344);
            MovieClip(this._tv12183[_rn5211 + _loc1_]).addEventListener(MouseEvent.MOUSE_OVER,this._co5609);
            MovieClip(this._tv12183[_rn5211 + _loc1_]).addEventListener(MouseEvent.MOUSE_OUT,this._xr11366);
            _loc1_++;
         }
         while(_loc2_ < this._py8782)
         {
            MovieClip(this._tv12183[_ca3731 + _loc2_]).addEventListener(MouseEvent.MOUSE_DOWN,this._gk7776);
            MovieClip(this._tv12183[_ca3731 + _loc2_]).addEventListener(MouseEvent.MOUSE_OVER,this._ha7192);
            MovieClip(this._tv12183[_ca3731 + _loc2_]).addEventListener(MouseEvent.MOUSE_OUT,this._sa4638);
            _loc2_++;
         }
      }
      
      private function removeListeners() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         MovieClip(this._tv12183[_ti12490][_ee15633]).removeEventListener(MouseEvent.MOUSE_DOWN,this._kr1377);
         MovieClip(this._tv12183[_ti12490][_ee15633]).removeEventListener(MouseEvent.MOUSE_MOVE,this._fh15566);
         MovieClip(this._tv12183[_ti12490][_ee15633]).stage.removeEventListener(MouseEvent.MOUSE_UP,this._cp5470);
         MovieClip(this._tv12183[_dx13338]).removeEventListener(MouseEvent.MOUSE_DOWN,this._od8361);
         MovieClip(this._tv12183[_dx13338]).stage.removeEventListener(MouseEvent.MOUSE_UP,this._lv2853);
         MovieClip(this._tv12183[_dx13338]).stage.removeEventListener(MouseEvent.MOUSE_MOVE,this._iw4473);
         MovieClip(this._tv12183[_dx13338]).removeEventListener(MouseEvent.MOUSE_OVER,this._gy13775);
         MovieClip(this._tv12183[_dx13338]).removeEventListener(MouseEvent.MOUSE_OUT,this._vy12843);
         if(this._dc7086)
         {
            MovieClip(this._tv12183[_tt9475]).removeEventListener(MouseEvent.MOUSE_DOWN,this._cw5495);
         }
         if(this._hc5432)
         {
            MovieClip(this._tv12183[_nn9758]).removeEventListener(MouseEvent.MOUSE_DOWN,this._gy7012);
         }
         while(_loc1_ < this._li3831)
         {
            MovieClip(this._tv12183[_rn5211 + _loc1_]).removeEventListener(MouseEvent.MOUSE_DOWN,this._sh344);
            MovieClip(this._tv12183[_rn5211 + _loc1_]).removeEventListener(MouseEvent.MOUSE_OVER,this._co5609);
            MovieClip(this._tv12183[_rn5211 + _loc1_]).removeEventListener(MouseEvent.MOUSE_OUT,this._xr11366);
            _loc1_++;
         }
         while(_loc2_ < this._py8782)
         {
            MovieClip(this._tv12183[_ca3731 + _loc2_]).removeEventListener(MouseEvent.MOUSE_DOWN,this._gk7776);
            MovieClip(this._tv12183[_ca3731 + _loc2_]).removeEventListener(MouseEvent.MOUSE_OVER,this._ha7192);
            MovieClip(this._tv12183[_ca3731 + _loc2_]).removeEventListener(MouseEvent.MOUSE_OUT,this._sa4638);
            _loc2_++;
         }
      }
   }
}

