package src.modules.login.choosePerson
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import src.*;
   import src.allData.*;
   import src.allData.color.*;
   import src.config.*;
   import src.modules.login.choosePerson.Registro.*;
   import src.modules.login.choosePerson.colorear.*;
   import src.person.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.utils.*;
   
   public class _lq11338
   {
      
      private static var _fk11031:int;
      
      private static const _ub9574:String = "waitingChoosePerson";
      
      private static const _ar6424:String = "choose";
      
      private static const _tp6610:String = "mouseIn";
      
      private static const _ur9763:String = "mouseOut";
      
      private static const _db6861:String = "mouseClick";
      
      private static const _ke1076:String = "waitingClickPerson";
      
      private static const _eq7474:String = "back";
      
      private static const _wo1465:String = "start";
      
      private static const _im8185:String = "ok";
      
      private static const _hk3590:String = "finOk";
      
      private static const _yp13585:String = "pez1";
      
      private static const _rp645:String = "pez2";
      
      private static const _ss8999:String = "tortuga1";
      
      private static const _ms5564:String = "tortuga2";
      
      private static const _an13283:String = "tukan1";
      
      private static const _ii3680:String = "tukan2";
      
      private static const _dk4405:String = "huevos1";
      
      private static const _fh12226:String = "huevos2";
      
      private static const _gy7344:String = "mariposa1";
      
      private static const _hh6241:String = "mariposa2";
      
      private static const _iw6881:String = "fin1";
      
      private static const _sx7905:String = "fin2";
      
      private static const _ca5948:String = "fin3";
      
      private static const _yg10229:String = "log";
      
      private static const _ww4211:String = "finishShortIntro";
      
      private static const _ne16158:String = "exp_base";
      
      private static const _pk2152:String = "exp1";
      
      private static const _me8413:String = "normVel";
      
      private static const _nv8142:Array = [_yp13585,_yp13585,_yp13585,_yp13585,_ss8999,_ss8999,_yp13585,_yp13585,_yp13585,_yp13585,_yp13585];
      
      private static const _kj2405:String = "mcRolloverPerson";
      
      private static const _vx4328:String = "mcPressPerson";
      
      private static const _rb8702:String = "cloud_png_01";
      
      private static const _ur12165:String = "cloud_png_02";
      
      private static const _uc128:String = "cloud";
      
      private static const _iw6046:String = "pez";
      
      private static const _lg1652:String = "turtle";
      
      private static const _qk12681:String = "toukan";
      
      private static const _qy8692:String = "flores";
      
      private static const _lc5976:String = "mcHuevos";
      
      private static const _hj289:String = "pap";
      
      private static const _en9177:String = "mcDioss";
      
      private static const _qw15812:String = "mcColores";
      
      private static const _nh15839:String = "txt";
      
      private static const _kr8514:String = "mcLogo";
      
      private static const _lh4911:String = "mcLogoChile";
      
      private static const _qm7106:String = "mcLogoIngles";
      
      private static const _qr11963:String = "mcCircleStep";
      
      private static const _bn5205:String = "colorTrans";
      
      public static const _ln13779:Array = [0,"E","L","R","Y","I","C","N","G","B","M","J"];
      
      private static const _yh2630:int = 0;
      
      private static const _hq5248:int = 1;
      
      private static const _tj4707:int = 2;
      
      private static const _ln10962:int = 3;
      
      private static const _kt15928:int = 4;
      
      public static const _cy15219:int = -1;
      
      public static const _fd12447:int = 1;
      
      public static const _mf5749:int = 2;
      
      public static const _od861:int = 3;
      
      public static const _dm13327:int = 5;
      
      private var _re3848:int = -1;
      
      private var _py15642:MovieClip;
      
      private var _hn9515:MovieClip;
      
      private var _so13485:MovieClip;
      
      private var _fw10518:MovieClip;
      
      private var _ra15194:Boolean;
      
      private var _pl6821:int;
      
      private var _ha7925:int;
      
      private var _jl14817:Boolean;
      
      private var _te8717:_rl11159;
      
      private var _io6762:_pn12847;
      
      private var _th15358:String;
      
      private var _yl9167:String;
      
      private var _xm14140:_iw11828;
      
      private var _cc3953:_ol5641;
      
      private var _xu650:_er12801;
      
      private var _ox13241:_re8882;
      
      private var _ao6200:_gk13785;
      
      private var _bw5190:_qy9375;
      
      private var vRange:Number = ExternalInterface.call("fRange");
      
      public function _lq11338(param1:MovieClip, param2:MovieClip)
      {
         super();
         this._py15642 = param1;
         this._hn9515 = param2;
         param1.tabChildren = true;
         this._fw10518 = MovieClip(param1[_qw15812]);
         this._ao6200 = new _gk13785(param1["stepBtns"],this._pv5568,this._wb9030);
         this._xu650 = new _er12801(this.init);
         param1.addChild(this._xu650);
         var _temp_1:* = this._xu650;
         this._xu650.y = 10;
         _temp_1.x = 10;
         _xw1367.getInstance()._uc3178(param2,_xw1367._wa4051);
         _xw1367.getInstance()._uc3178(param1,_xw1367._wa4051);
         MovieClip(param1[_rb8702]).mouseEnabled = false;
         MovieClip(param1[_ur12165]).mouseEnabled = false;
         MovieClip(param1[_rb8702]).mouseChildren = false;
         MovieClip(param1[_ur12165]).mouseChildren = false;
         this._bw5190 = new _qy9375(param1["exitBtn"]);
         this._bw5190.addEventListener(MouseEvent.CLICK,this._kj14213);
         _yq8362._xl9503(param1["exitBtn"]["elements"]["txt"],"button.cancel");
         this._jl14817 = false;
         this._hj2893();
         this.init();
      }
      
      public static function _vt12942(param1:int) : void
      {
         _fk11031 = param1;
      }
      
      public static function _qx15566() : int
      {
         return _fk11031;
      }
      
      private function _kj14213(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         this._pl6821 = _hv12530.getInstance()._jn11596;
         while(_loc2_ < _ga7956._vr7101)
         {
            this._py15642[_ln13779[this._pl6821] + _bn5205 + (_loc2_ + 1)].color = _hv12530.getInstance().colors.getColor(_loc2_);
            _loc2_++;
         }
         this._ra15194 = true;
      }
      
      private function init() : void
      {
         var _loc1_:int = 0;
         if(this._xm14140)
         {
            this._xm14140.destroy();
            this._xm14140 = null;
         }
         if(this._cc3953)
         {
            this._cc3953.removeEventListener(_ol5641._ba9444,this._he119);
            this._cc3953.removeEventListener(_ol5641._mt14482,this._ry8116);
            this._cc3953.destroy();
            this._cc3953 = null;
         }
         this._xm14140 = new _iw11828(MovieClip(this._py15642[_en9177]),this._lv12660,this._ey15606,this._ut5441);
         this._py15642.gotoAndPlay(_ar6424);
         this._xu650.visible = false;
         this._fw10518.visible = false;
         this._ao6200.visible = false;
         this._bw5190.visible = true;
         this._pl6821 = -1;
         this._ha7925 = -1;
         _xv14798._dp2863(this._py15642,this._yu14477);
         this._ra15194 = false;
         switch(_fk11031)
         {
            case _fd12447:
               this._pl6821 = _hv12530.getInstance()._jn11596;
               this._xm14140._gb8984(this._pl6821);
               this._py15642.gotoAndStop(_ga7956._cd13929[this._pl6821]);
               _loc1_ = 0;
               while(_loc1_ < _ga7956._vr7101)
               {
                  this._py15642[_ln13779[this._pl6821] + _bn5205 + (_loc1_ + 1)].color = _hv12530.getInstance().colors.getColor(_loc1_);
                  _loc1_++;
               }
               return;
            case _mf5749:
               this._xm14140._bx5761(_iw11828._lc6885);
               return;
            case _od861:
               (_lh7543.get(_wl11587) as _wl11587)._hv9029("/registration/firstStep/");
               this._bw5190.visible = false;
               this._cc3953 = new _ol5641(this._py15642["getMovieClip"]("_mcFichaRegistro"),this._xm14140);
               this._cc3953.addEventListener(_ol5641._ba9444,this._he119,false,0,true);
               this._cc3953.addEventListener(_ol5641._mt14482,this._ry8116,false,0,true);
               this._xu650._yt1537();
               this._xu650.visible = true;
               _hv12530.getInstance()._ma12295 = true;
               this._xm14140._bx5761(_iw11828._lc6885);
               return;
            default:
               return;
         }
      }
      
      private function _he119(param1:Event) : void
      {
         (_lh7543.get(_wl11587) as _wl11587)._hv9029("/registration/complete/");
         this._so13485.gotoAndPlay(_ww4211);
      }
      
      private function _ry8116(param1:Event) : void
      {
         var _loc2_:_hv12530 = _hv12530.getInstance();
         _loc2_.colors = new _qm1392(this._rd844());
         _loc2_._ll5517 = new _qm1392(this._rd844());
         _loc2_._jn11596 = this._qm8597();
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
         if(this._bw5190)
         {
            this._bw5190.removeEventListener(MouseEvent.CLICK,this._kj14213);
            this._bw5190.destroy();
         }
         if(this._xm14140 != null)
         {
            this._xm14140.destroy();
            this._xm14140 = null;
         }
         if(this._cc3953 != null)
         {
            this._cc3953.removeEventListener(_ol5641._ba9444,this._he119);
            this._cc3953.removeEventListener(_ol5641._mt14482,this._ry8116);
            this._cc3953.destroy();
            this._cc3953 = null;
         }
         if(this._ox13241 != null)
         {
            this._ox13241.destroy();
            this._ox13241 = null;
         }
         this._xu650.destroy();
         this._ao6200.destroy();
         this._ok15076();
         this._nv14076();
         _xw1367.getInstance()._na10792(this._hn9515,_xw1367._wa4051);
         _xw1367.getInstance()._na10792(this._py15642,_xw1367._wa4051);
         _xv14798._ff5056(this._py15642);
         _xv14798._vb14910(this._py15642);
      }
      
      public function _al1166() : Boolean
      {
         return this._ra15194;
      }
      
      private function _rd844() : String
      {
         var _loc1_:String = null;
         while(0 < _ga7956._vr7101)
         {
            _loc1_ = uint(this._py15642[_ln13779[this._pl6821] + _bn5205 + (0 + 1)].color).toString(16).toUpperCase();
            while(_loc1_.length < 6)
            {
               _loc1_ = "0" + _loc1_;
            }
            var _loc2_:* = "" + _loc1_;
            _loc3_++;
         }
         return "";
      }
      
      public function _ca15733() : _qm1392
      {
         var _loc1_:_qm1392 = new _qm1392(this._rd844());
         var _loc2_:_ga7956 = _ga7956.getInstance();
         return _loc1_;
      }
      
      public function _qm8597() : int
      {
         return this._pl6821;
      }
      
      private function _hj2893() : void
      {
         MovieClip(this._py15642[_kr8514]).visible = false;
         MovieClip(this._py15642[_lh4911]).visible = false;
         MovieClip(this._py15642[_qm7106]).visible = false;
         switch(_cc7688._qs3725)
         {
            case _cc7688._gk8815:
               MovieClip(this._py15642[_kr8514]).visible = false;
               return;
            case _cc7688._uo6813:
               MovieClip(this._py15642[_lh4911]).visible = false;
               return;
            case _cc7688._gl650:
               MovieClip(this._py15642[_qm7106]).visible = false;
               return;
            default:
               return;
         }
      }
      
      private function _yu14477() : void
      {
         switch(this._py15642.currentLabel)
         {
            case _ub9574:
               this._ml14386();
               this._fe9643();
               return;
            case _ga7956._cd13929[_ga7956._em12430]:
            case _ga7956._cd13929[_ga7956._ls4857]:
            case _ga7956._cd13929[_ga7956._kg10292]:
            case _ga7956._cd13929[_ga7956._cs8341]:
            case _ga7956._cd13929[_ga7956._jj10590]:
            case _ga7956._cd13929[_ga7956._mc16026]:
            case _ga7956._cd13929[_ga7956._la2836]:
            case _ga7956._cd13929[_ga7956._us9431]:
            case _ga7956._cd13929[_ga7956._yw1197]:
            case _ga7956._cd13929[_ga7956._jd1213]:
            case _ga7956._cd13929[_ga7956._mh6719]:
               this._so13485 = MovieClip(this._py15642[_ga7956._cd13929[this._pl6821]]);
               if(_fk11031 == _fd12447)
               {
                  this._so13485.gotoAndPlay(_yg10229);
               }
               else
               {
                  this._so13485.gotoAndPlay(_im8185);
               }
               this._is9477(this._pl6821);
               return;
            default:
               return;
         }
      }
      
      private function _ni1437() : void
      {
         if(this._pl6821 != -1)
         {
            switch(MovieClip(this._py15642[_ga7956._cd13929[this._pl6821]]).currentLabel)
            {
               case _ke1076:
                  this._qe11671(this._pl6821);
            }
         }
         if(this._ha7925 != -1)
         {
            switch(MovieClip(this._py15642[_ga7956._cd13929[this._ha7925]]).currentLabel)
            {
               case _wo1465:
                  this._dc10072(this._ha7925);
                  return;
            }
         }
      }
      
      private function _xc13670() : void
      {
         this._ao6200.visible = false;
         this._fw10518.visible = false;
         this._ao6200._qa11462 = true;
         switch(this._so13485.currentLabel)
         {
            case _hk3590:
               switch(_fk11031)
               {
                  case _fd12447:
                  case _mf5749:
                     this._jt12584();
                     this._so13485.gotoAndPlay(_nv8142[this._pl6821 - 1]);
                     break;
                  case _od861:
                     this._hd20();
                     this._xm14140._bx5761(_iw11828._hy15711);
               }
               return;
            case _rp645:
               this._ao6200.visible = true;
               this._fw10518.visible = true;
               this._ox13241 = new _ea2690(MovieClip(this._so13485[_iw6046]),this._py15642,this._pl6821,this._xm14140._bx5761,this._pv5568);
               this._ag9419(_yh2630);
               this._ao6200._qa11462 = false;
               return;
            case _ms5564:
               this._ao6200.visible = true;
               this._fw10518.visible = true;
               this._ox13241 = new _rp1057(MovieClip(this._so13485[_lg1652]),this._py15642,this._pl6821,this._xm14140._bx5761,this._pv5568);
               this._ag9419(_hq5248);
               if(!this._rg12995(this._so13485,_yp13585))
               {
                  this._ao6200._qa11462 = false;
               }
               return;
            case _ii3680:
               this._ao6200.visible = true;
               this._fw10518.visible = true;
               this._ox13241 = new _is1972(MovieClip(this._so13485[_qk12681][_qy8692]),this._py15642,this._pl6821,this._xm14140._bx5761,this._pv5568);
               this._ag9419(_tj4707);
               return;
            case _fh12226:
               this._ao6200.visible = true;
               this._fw10518.visible = true;
               this._ox13241 = new _lw10200(MovieClip(this._so13485[_lc5976]),this._py15642,this._pl6821,this._xm14140._bx5761,this._pv5568);
               this._ag9419(_ln10962);
               return;
            case _hh6241:
               this._ao6200.visible = true;
               this._fw10518.visible = true;
               this._ox13241 = new _ml143(MovieClip(this._so13485[_hj289]),this._py15642,this._pl6821,this._xm14140._bx5761,this._pv5568,this._te8717);
               this._ag9419(_kt15928);
               return;
            case _iw6881:
               this._ok15076();
               return;
            case _sx7905:
               this._io149(this._pl6821);
               this._ra15194 = true;
               return;
            case _ca5948:
               this._io149(this._pl6821);
               this._ra15194 = true;
               return;
            default:
               return;
         }
      }
      
      private function _jt12584() : void
      {
         this._io6762 = new _pn12847(0,16777215,50,50,50);
         this._te8717 = new _rl11159(this._fw10518,this.updateColor,null,false,false,this._io6762,this._fw10518.x,0,2);
         _yq8362._xl9503(this._fw10518[_nh15839],"title.colores");
         this._te8717.init();
         this._te8717._nr795();
      }
      
      private function _ok15076() : void
      {
         if(this._te8717 != null)
         {
            this._te8717.destroy();
         }
         if(this._fw10518 != null)
         {
            this._fw10518.visible = false;
         }
      }
      
      private function _ag9419(param1:int) : void
      {
         var _loc2_:Boolean = false;
         this._fw10518.visible = true;
         this._io6762._un11300 = param1;
         if(param1 == _kt15928)
         {
            if(this._pl6821 == _ga7956._kg10292 || this._pl6821 == _ga7956._jj10590 || this._pl6821 == _ga7956._la2836 || this._pl6821 == _ga7956._us9431 || this._pl6821 == _ga7956._yw1197 || this._pl6821 == _ga7956._jd1213 || this._pl6821 == _ga7956._mh6719)
            {
               _loc2_ = true;
            }
         }
         this._te8717._kb449(0);
         if(param1 == _ln10962)
         {
            this._te8717._kb449(this.vRange);
         }
         if(_loc2_)
         {
            this._te8717._wf7166();
         }
         else
         {
            this._te8717._nr795();
         }
      }
      
      public function updateColor() : void
      {
         if(this._ox13241 != null)
         {
            this._ox13241.updateColor(this._io6762);
         }
      }
      
      public function _lh4081() : void
      {
      }
      
      private function _hd20() : void
      {
         this._xu650._dw9470();
         this._xu650.visible = true;
         this._cc3953._db5584(218,174);
         (_lh7543.get(_wl11587) as _wl11587)._hv9029("/registration/secondStep/");
      }
      
      public function _da9243() : String
      {
         return this._th15358;
      }
      
      public function _jb8620() : String
      {
         return this._yl9167;
      }
      
      private function _pv5568(param1:Event = null) : void
      {
         if(this._ox13241 is _ea2690)
         {
            this._so13485.gotoAndPlay(_ss8999);
         }
         else if(this._ox13241 is _rp1057)
         {
            this._so13485.gotoAndPlay(_an13283);
         }
         else if(this._ox13241 is _is1972)
         {
            this._so13485.gotoAndPlay(_dk4405);
         }
         else if(this._ox13241 is _lw10200)
         {
            this._so13485.gotoAndPlay(_gy7344);
         }
         else if(this._ox13241 is _ml143)
         {
            this._so13485.gotoAndPlay(_iw6881);
         }
         this._ox13241.destroy();
         this._ox13241 = null;
         this._xm14140._xd12761();
      }
      
      private function _rg12995(param1:MovieClip, param2:String) : Boolean
      {
         var _loc3_:FrameLabel = null;
         var _loc4_:Boolean = false;
         for each(_loc3_ in param1.currentLabels)
         {
            if(_loc3_.name == param2)
            {
               _loc4_ = true;
               break;
            }
         }
         return _loc4_;
      }
      
      private function _wb9030(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         if(this._ox13241 is _rp1057)
         {
            if(this._rg12995(this._so13485,_yp13585))
            {
               this._so13485.gotoAndPlay(_yp13585);
               _loc2_ = true;
            }
         }
         else if(this._ox13241 is _is1972)
         {
            if(this._rg12995(this._so13485,_ss8999))
            {
               this._so13485.gotoAndPlay(_ss8999);
               _loc2_ = true;
            }
         }
         else if(this._ox13241 is _lw10200)
         {
            if(this._rg12995(this._so13485,_an13283))
            {
               this._so13485.gotoAndPlay(_an13283);
               _loc2_ = true;
            }
         }
         else if(this._ox13241 is _ml143)
         {
            if(this._rg12995(this._so13485,_dk4405))
            {
               this._so13485.gotoAndPlay(_dk4405);
               _loc2_ = true;
            }
         }
         if(Boolean(this._ox13241) && _loc2_)
         {
            this._ox13241.destroy();
            this._ox13241 = null;
            this._xm14140._xd12761();
         }
      }
      
      private function _st11985(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < _ga7956._wk4913.length)
         {
            if(_ga7956._wk4913[_loc2_])
            {
               if(MovieClip(this._py15642[_ga7956._cd13929[_loc2_]][_kj2405]) == MovieClip(param1.target))
               {
                  MovieClip(this._py15642[_ga7956._cd13929[_loc2_]]).gotoAndPlay(_tp6610);
               }
            }
            _loc2_++;
         }
      }
      
      private function _nm7878(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < _ga7956._wk4913.length)
         {
            if(_ga7956._wk4913[_loc2_])
            {
               if(MovieClip(this._py15642[_ga7956._cd13929[_loc2_]][_kj2405]) == MovieClip(param1.target))
               {
                  MovieClip(this._py15642[_ga7956._cd13929[_loc2_]]).gotoAndPlay(_ur9763);
               }
            }
            _loc2_++;
         }
      }
      
      private function _oy623(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         if(!this._xm14140._ro12706())
         {
            return;
         }
         if(this._pl6821 != -1)
         {
            _loc2_ = MovieClip(this._py15642[_ga7956._cd13929[this._pl6821]]).getChildByName(_vx4328) as MovieClip;
            if(_loc2_ == null)
            {
               return;
            }
            this._px3080(this._pl6821);
            MovieClip(this._py15642[_ga7956._cd13929[this._pl6821]]).gotoAndPlay(_eq7474);
         }
         while(_loc3_ < _ga7956._ve5642)
         {
            if(MovieClip(this._py15642[_ga7956._cd13929[_loc3_ + 1]][_kj2405]) == MovieClip(param1.target))
            {
               this._ha7925 = this._pl6821;
               this._pl6821 = _loc3_ + 1;
               this._xm14140._gb8984(this._pl6821);
               this._xd10854(this._pl6821);
               this._so13485 = MovieClip(this._py15642[_ga7956._cd13929[this._pl6821]]);
               this._ut5441(null);
               return;
            }
            _loc3_++;
         }
      }
      
      private function _lv12660(param1:MouseEvent) : void
      {
         MovieClip(this._py15642[_ga7956._cd13929[this._pl6821]]).mvt.play();
         MovieClip(this._py15642[_ga7956._cd13929[this._pl6821]]).mvt.exp.gotoAndPlay(_ne16158);
      }
      
      private function _ey15606(param1:MouseEvent) : void
      {
         MovieClip(this._py15642[_ga7956._cd13929[this._pl6821]]).mvt.stop();
         MovieClip(this._py15642[_ga7956._cd13929[this._pl6821]]).mvt.exp.gotoAndPlay(_pk2152);
      }
      
      private function _ut5441(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < _ga7956._wk4913.length)
         {
            if(_ga7956._wk4913[_loc2_])
            {
               if(_loc2_ != this._pl6821)
               {
                  this._xd10854(_loc2_);
               }
            }
            _loc2_++;
         }
         this._nv14076();
         this._py15642.gotoAndStop(_ga7956._cd13929[this._pl6821]);
         this._xm14140._xd12761();
      }
      
      private function _ml14386() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < _ga7956._wk4913.length)
         {
            if(_ga7956._wk4913[_loc1_])
            {
               this._dc10072(_loc1_);
            }
            _loc1_++;
         }
      }
      
      private function _dc10072(param1:int) : void
      {
         MovieClip(this._py15642[_ga7956._cd13929[param1]][_kj2405]).addEventListener(MouseEvent.ROLL_OVER,this._st11985);
         MovieClip(this._py15642[_ga7956._cd13929[param1]][_kj2405]).addEventListener(MouseEvent.ROLL_OUT,this._nm7878);
         MovieClip(this._py15642[_ga7956._cd13929[param1]][_kj2405]).addEventListener(MouseEvent.MOUSE_DOWN,this._oy623);
      }
      
      private function _qw11760() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < _ga7956._wk4913.length)
         {
            if(_ga7956._wk4913[_loc1_])
            {
               this._xd10854(_loc1_);
            }
            _loc1_++;
         }
      }
      
      private function _xd10854(param1:int) : void
      {
         MovieClip(this._py15642[_ga7956._cd13929[param1]][_kj2405]).removeEventListener(MouseEvent.ROLL_OVER,this._st11985);
         MovieClip(this._py15642[_ga7956._cd13929[param1]][_kj2405]).removeEventListener(MouseEvent.ROLL_OUT,this._nm7878);
         MovieClip(this._py15642[_ga7956._cd13929[param1]][_kj2405]).removeEventListener(MouseEvent.MOUSE_DOWN,this._oy623);
      }
      
      private function _qe11671(param1:int) : void
      {
         MovieClip(this._py15642[_ga7956._cd13929[param1]][_vx4328]).addEventListener(MouseEvent.ROLL_OVER,this._lv12660);
         MovieClip(this._py15642[_ga7956._cd13929[param1]][_vx4328]).addEventListener(MouseEvent.ROLL_OUT,this._ey15606);
         MovieClip(this._py15642[_ga7956._cd13929[param1]][_vx4328]).addEventListener(MouseEvent.MOUSE_DOWN,this._ut5441);
      }
      
      private function _px3080(param1:int) : void
      {
         MovieClip(this._py15642[_ga7956._cd13929[param1]][_vx4328]).removeEventListener(MouseEvent.ROLL_OVER,this._lv12660);
         MovieClip(this._py15642[_ga7956._cd13929[param1]][_vx4328]).removeEventListener(MouseEvent.ROLL_OUT,this._ey15606);
         MovieClip(this._py15642[_ga7956._cd13929[param1]][_vx4328]).removeEventListener(MouseEvent.MOUSE_DOWN,this._ut5441);
      }
      
      private function _fe9643() : void
      {
         var _loc1_:int = 0;
         if(this._jl14817)
         {
            return;
         }
         this._jl14817 = true;
         while(_loc1_ < _ga7956._wk4913.length)
         {
            if(_ga7956._wk4913[_loc1_])
            {
               this._qq2081(_loc1_);
            }
            _loc1_++;
         }
      }
      
      private function _qq2081(param1:int) : void
      {
         _xv14798._dp2863(MovieClip(this._py15642[_ga7956._cd13929[param1]]),this._ni1437);
      }
      
      private function _nv14076() : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < _ga7956._wk4913.length)
         {
            if(_ga7956._wk4913[_loc2_])
            {
               var _loc1_:MovieClip = MovieClip(this._py15642[_ga7956._cd13929[_loc2_]]);
            }
            _loc2_++;
         }
      }
      
      private function _is9477(param1:int) : void
      {
         _xv14798._dp2863(MovieClip(this._py15642[_ga7956._cd13929[param1]]),this._xc13670);
      }
      
      private function _io149(param1:int) : void
      {
         _xv14798._ff5056(MovieClip(this._py15642[_ga7956._cd13929[param1]]));
      }
   }
}

