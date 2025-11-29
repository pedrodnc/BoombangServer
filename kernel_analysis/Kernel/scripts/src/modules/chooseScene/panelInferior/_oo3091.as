package src.modules.chooseScene.panelInferior
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import flash.utils.*;
   import src.*;
   import src.allData.*;
   import src.allData.catObjects.*;
   import src.allData.sceneObjects.*;
   import src.allData.sceneObjects.loadObject.*;
   import src.logs.*;
   import src.modules.chooseScene._ij15863;
   import src.modules.chooseScene._nw11343;
   import src.modules.login.*;
   import src.tv.boombang.commons.utils.*;
   import src.utils.*;
   
   public class _oo3091
   {
      
      private static const _jc4278:String = "tfTiempo";
      
      private static const _sy10352:String = "tfTexto";
      
      private static const _qt699:String = "tfHasGanado";
      
      private static const _vx4262:String = "tfCargando";
      
      private static const _ot2656:String = "tfRegalo";
      
      private static const _rt14032:String = "mcFondoCajaSorpresa";
      
      private static const _ip630:String = "mcAbrirRegalo";
      
      private static const _eu9441:String = "normal";
      
      private static const _pv5829:String = "reloj";
      
      private static const _yu11155:String = "relojRollOver";
      
      private static const _nt12000:String = "abrelo";
      
      private static const _oi12885:String = "recibiendoRegalo";
      
      private static const _bd1516:String = "regalo";
      
      private static const _pl6120:String = "regaloBooms";
      
      private static const _cb9666:String = "noVisible";
      
      public static const _qr5124:int = 1;
      
      public static const _hf14348:int = 2;
      
      public static const _sd10075:int = 3;
      
      public static const _ro790:int = 4;
      
      public static const _et2594:int = 5;
      
      public static const _cy15219:int = 6;
      
      private static const _fh4006:String = "tfTitulo";
      
      private static const _fd4499:String = "tfTexto";
      
      private static const _qw11225:String = "tfCerrar";
      
      private static const _km10107:String = "mcBotonCerrar";
      
      private static const _hb337:String = "mcFondoBotonCerrar";
      
      private static const _xq13902:String = "mcRegaloObjeto";
      
      private static const _lo15479:String = "normal";
      
      private static const _vi13948:String = "rollover";
      
      private static const _ai9570:String = "tfBooms";
      
      public static const _qh11016:Number = 514;
      
      public static const _cj11822:Number = 555;
      
      private var _xc13040:MovieClip;
      
      private var _re3848:int = 6;
      
      private var _mc1411:MovieClip;
      
      private var _gy10361:_nw11343;
      
      private var _vc10957:_ij15863;
      
      private var _im1567:int;
      
      private var _vf6650:int;
      
      private var _kn15965:int;
      
      private var _sv15337:int;
      
      private var logs:_qn13596;
      
      private var _cl12799:int;
      
      public function _oo3091(param1:MovieClip, param2:_nw11343, param3:_ij15863)
      {
         super();
         this._xc13040 = param1;
         this._gy10361 = param2;
         this._vc10957 = param3;
         this._mc1411 = param1[_ip630];
         this._xc13040.visible = false;
         this.logs = _qn13596.getInstance();
         _xv14798._dp2863(param1,this._jv11222);
         param1.hitArea = param1[_rt14032];
         MovieClip(param1[_rt14032]).visible = false;
         MovieClip(this._mc1411[_km10107]).hitArea = MovieClip(this._mc1411[_hb337]);
         MovieClip(this._mc1411[_hb337]).visible = false;
         this._br9114();
         this._mc1411.visible = false;
         this._ps573();
         this._cl12799 = _xw1367._wa4051;
         this.init();
      }
      
      public function get status() : int
      {
         return this._re3848;
      }
      
      public function _ps573() : void
      {
         if(_hv12530.getInstance()._lf431 < 0)
         {
            this._xo11249(_cy15219);
         }
         else if(_hv12530.getInstance()._lf431 == 0)
         {
            this._xo11249(_sd10075);
         }
         else
         {
            this._xo11249(_hf14348);
         }
      }
      
      private function _jv11222() : void
      {
         switch(this._xc13040.currentLabel)
         {
            case _eu9441:
               this._xc13040.buttonMode = false;
               this._wn813();
               return;
            case _pv5829:
               this._xc13040.buttonMode = false;
               this._en11910();
               this._wn813();
               return;
            case _yu11155:
               this._xc13040.buttonMode = false;
               this._ps5293();
               this._wn813();
               return;
            case _nt12000:
               this._xc13040.buttonMode = true;
               this._rc13271();
               this._wn813();
               return;
            case _oi12885:
               this._xc13040.buttonMode = false;
               this._fr171();
               this._ts3682();
               this._wn813();
               return;
            case _bd1516:
               this._xc13040.buttonMode = false;
               this._ae10440();
               this._hn2970();
               this._wn813();
               return;
            case _pl6120:
               this._xc13040.buttonMode = false;
               this._iq9758();
               this._wn813();
               return;
            case _cb9666:
               return;
            default:
               return;
         }
      }
      
      private function init() : void
      {
         this._im1567 = -1;
         this._wn813();
         this._rq15797();
      }
      
      public function destroy() : void
      {
         if(this._re3848 == _ro790)
         {
            _mg605.getInstance().removeEventListener(_jj10306._bs1884,this._hb4573);
         }
         this._nk13032();
         this._vc10957.removeEventListener(_tc13553._tf16043,this._wc8479);
         _xv14798._ff5056(this._xc13040);
         this._hu12389();
      }
      
      public function _db5584() : void
      {
         if(this._xc13040.visible == false)
         {
            this._ps573();
            this._xc13040.x = _qh11016;
            this._xc13040.y = _tq2768._ps6769().stageHeight - 102;
            this._xc13040.visible = true;
         }
      }
      
      public function _hu12389() : void
      {
         if(this._xc13040.visible == true)
         {
            this._xc13040.visible = false;
         }
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this._xc13040.x = param1;
         this._xc13040.y = param2;
      }
      
      private function _hn2970() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:_uq7753 = null;
         var _loc3_:Bitmap = null;
         if(this._vf6650 > 0)
         {
            _loc1_ = MovieClip(this._xc13040[_xq13902]);
            _xv14798.cleanChildsMovieclip(_loc1_);
            _loc2_ = _dp11732.getInstance()._ms14382(this._sv15337);
            _loc3_ = new Bitmap(_loc2_._nk15832.bitmapData);
            _loc3_.x = -_loc3_.width / 2;
            _loc3_.y = -_loc3_.height / 2;
            _loc3_.smoothing = true;
            _loc1_.addChild(_loc3_);
         }
      }
      
      private function _hb4573(param1:_jj10306) : void
      {
         var _loc2_:_uq7753 = param1.obj.obj._sl11700;
         switch(param1.obj.type)
         {
            case _ft6295._tr9213:
               if(_loc2_.id == this._sv15337)
               {
                  _mg605.getInstance().removeEventListener(_jj10306._bs1884,this._hb4573);
                  if(this._re3848 == _ro790)
                  {
                     this._xo11249(_et2594);
                  }
               }
               return;
            default:
               return;
         }
      }
      
      private function _lu7260() : void
      {
         if(this._re3848 == _ro790)
         {
            this._xo11249(_et2594);
         }
      }
      
      private function _ou8955(param1:MouseEvent) : void
      {
         if(this._re3848 == _hf14348)
         {
            _mc15002._vt11823(this._xc13040,_yu11155);
         }
      }
      
      private function _dk5440(param1:MouseEvent) : void
      {
         if(this._re3848 == _hf14348)
         {
            _mc15002._vt11823(this._xc13040,_pv5829);
         }
      }
      
      private function _io1988(param1:MouseEvent) : void
      {
         param1.stopPropagation();
         param1.stopImmediatePropagation();
         if(this._re3848 == _hf14348)
         {
            this._mc1411.visible = true;
         }
         else if(this._re3848 == _sd10075)
         {
            this._xo11249(_ro790);
         }
      }
      
      private function _ts3682() : void
      {
         this._vc10957.addEventListener(_tc13553._tf16043,this._wc8479);
         this._vc10957._od13245();
      }
      
      private function _wc8479(param1:_tc13553) : void
      {
         var _loc3_:uint = uint(String(param1._lv9976[1]).charCodeAt(0));
         if(_loc3_ == _qd13741._ak10346)
         {
            this._vc10957.removeEventListener(_tc13553._tf16043,this._wc8479);
            if(param1._lv9976.length < 4)
            {
               this.logs._kp3815(new _ex15859(_qn13596._ny10327,"CajaSorpresa.onLoginEvent",param1._lv9976.toString()));
               return;
            }
            this._vf6650 = int(param1._lv9976[2]);
            switch(this._vf6650)
            {
               case _qd13741._hr12643:
                  this._kn15965 = int(param1._lv9976[3]);
                  break;
               case _qd13741._cy3725:
                  this._sv15337 = int(param1._lv9976[3]);
                  break;
               default:
                  this.logs._kp3815(new _sy12041(_qn13596._dj10628,"CajaSorpresa.onLoginEvent","tipoPremio invalid=" + this._vf6650));
                  return;
            }
            if(this._re3848 == _ro790)
            {
               if(this._vf6650 == _qd13741._cy3725)
               {
                  var _loc2_:_uq7753 = _dp11732.getInstance()._ms14382(this._sv15337);
                  this.logs._kp3815(new _sy12041(_qn13596._dj10628,"CajaSorpresa.onLoginEvent","idObjeto invalid=" + this._sv15337));
               }
               else
               {
                  this._xo11249(_et2594);
               }
            }
         }
      }
      
      private function _en11910() : void
      {
         var _loc1_:TextField = TextField(this._xc13040[_jc4278]);
         _loc1_.mouseEnabled = false;
         this._rn15568();
      }
      
      private function _ps5293() : void
      {
         var _loc1_:TextField = TextField(this._xc13040[_sy10352]);
         _loc1_.mouseEnabled = false;
         _yq8362._xl9503(_loc1_,this._gy10361._yj2467);
      }
      
      private function _rc13271() : void
      {
         var _loc1_:TextField = TextField(this._xc13040[_sy10352]);
         _loc1_.mouseEnabled = false;
         _yq8362._xl9503(_loc1_,this._gy10361._gx10275);
      }
      
      private function _ae10440() : void
      {
         var _loc1_:TextField = TextField(this._xc13040[_sy10352]);
         _loc1_.mouseEnabled = false;
         _yq8362._xl9503(_loc1_,this._gy10361._pr9075);
         var _loc2_:TextField = TextField(this._xc13040[_qt699]);
         _loc2_.mouseEnabled = false;
         if(this._vf6650 <= 0)
         {
            _yq8362._xl9503(_loc2_,this._gy10361._bo15896);
         }
         else
         {
            _yq8362._xl9503(_loc2_,this._gy10361._bd2711);
         }
      }
      
      private function _iq9758() : void
      {
         this._ae10440();
         var _loc1_:TextField = TextField(this._xc13040[_ai9570]);
         _loc1_.mouseEnabled = false;
         _yq8362._xl9503(_loc1_,this._kn15965.toString());
      }
      
      private function _fr171() : void
      {
         var _loc1_:TextField = TextField(this._xc13040[_vx4262]);
         _loc1_.mouseEnabled = false;
         _yq8362._xl9503(_loc1_,this._gy10361._qi9936);
      }
      
      private function _br9114() : void
      {
         _yq8362._xl9503(TextField(this._mc1411[_fh4006]),this._gy10361._ht5695);
         _yq8362._xl9503(TextField(this._mc1411[_fd4499]),this._gy10361._uo6910);
         _yq8362._xl9503(TextField(this._mc1411[_qw11225]),this._gy10361._ey14590);
      }
      
      private function _wn813() : void
      {
         if(this._xc13040[_ot2656])
         {
            _yq8362._xl9503(TextField(this._xc13040[_ot2656]),this._gy10361._aw15441);
         }
      }
      
      private function _qc1340(param1:MouseEvent) : void
      {
         MovieClip(this._mc1411[_km10107]).gotoAndStop(_vi13948);
      }
      
      private function _rv5621(param1:MouseEvent) : void
      {
         MovieClip(this._mc1411[_km10107]).gotoAndStop(_lo15479);
      }
      
      private function _gr8623(param1:MouseEvent) : void
      {
         param1.stopPropagation();
         param1.stopImmediatePropagation();
         this._mc1411.visible = false;
      }
      
      private function _rn15568() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:int = int(_hv12530.getInstance()._lf431);
         _loc4_ = _loc4_ - (int(getTimer() / 1000) - _hv12530.getInstance()._xj13389);
         if(_loc4_ != this._im1567)
         {
            if(_loc4_ <= 0)
            {
               this._mc1411.visible = false;
               this._xo11249(_sd10075);
            }
            else
            {
               _loc1_ = TextField(this._xc13040[_jc4278]);
               if(_loc1_ != null)
               {
                  _loc2_ = int(_loc4_ / 60).toString();
                  _loc3_ = int(_loc4_ % 60).toString();
                  if(_loc2_.length < 2)
                  {
                     _loc2_ = "0" + _loc2_;
                  }
                  if(_loc3_.length < 2)
                  {
                     _loc3_ = "0" + _loc3_;
                  }
                  _yq8362._xl9503(_loc1_,_loc2_ + ":" + _loc3_);
                  this._im1567 = _loc4_;
               }
            }
         }
      }
      
      public function _xo11249(param1:int) : void
      {
         switch(param1)
         {
            case _cy15219:
               _mc15002._vt11823(this._xc13040,_cb9666);
               break;
            case _qr5124:
               _mc15002._vt11823(this._xc13040,_eu9441);
               break;
            case _hf14348:
               _mc15002._vt11823(this._xc13040,_pv5829);
               break;
            case _sd10075:
               _mc15002._vt11823(this._xc13040,_nt12000);
               break;
            case _ro790:
               _hv12530.getInstance()._lf431 = -1;
               _mc15002._vt11823(this._xc13040,_oi12885);
               break;
            case _et2594:
               if(this._vf6650 == _qd13741._hr12643)
               {
                  _mc15002._vt11823(this._xc13040,_pl6120);
                  break;
               }
               _mc15002._vt11823(this._xc13040,_bd1516);
         }
         this._re3848 = param1;
      }
      
      public function loop() : void
      {
         if(Boolean(this._xc13040.visible) && this._re3848 == _hf14348)
         {
            this._rn15568();
         }
      }
      
      private function _rq15797() : void
      {
         this._xc13040.addEventListener(MouseEvent.ROLL_OVER,this._ou8955);
         this._xc13040.addEventListener(MouseEvent.ROLL_OUT,this._dk5440);
         this._xc13040.addEventListener(MouseEvent.CLICK,this._io1988);
         MovieClip(this._mc1411[_km10107]).addEventListener(MouseEvent.ROLL_OVER,this._qc1340);
         MovieClip(this._mc1411[_km10107]).addEventListener(MouseEvent.ROLL_OUT,this._rv5621);
         MovieClip(this._mc1411[_km10107]).addEventListener(MouseEvent.CLICK,this._gr8623);
      }
      
      private function _nk13032() : void
      {
         this._xc13040.removeEventListener(MouseEvent.ROLL_OVER,this._ou8955);
         this._xc13040.removeEventListener(MouseEvent.ROLL_OUT,this._dk5440);
         this._xc13040.removeEventListener(MouseEvent.CLICK,this._io1988);
         MovieClip(this._mc1411[_km10107]).removeEventListener(MouseEvent.ROLL_OVER,this._qc1340);
         MovieClip(this._mc1411[_km10107]).removeEventListener(MouseEvent.ROLL_OUT,this._rv5621);
         MovieClip(this._mc1411[_km10107]).removeEventListener(MouseEvent.CLICK,this._gr8623);
      }
   }
}

