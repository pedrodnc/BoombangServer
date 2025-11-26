package src.modules.chooseScene.panelSuperiorDerecho
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import src.*;
   import src.allData.*;
   import src.allData.texts.*;
   import src.logs.*;
   import src.modules.ModuleLoader;
   import src.modules.chooseScene.ChoosesceneController;
   import src.modules.chooseScene.ChoosesceneModel;
   import src.modules.login.*;
   import src.multiuser.*;
   import src.utils.*;
   
   public class PanelsuperiorderechoModel
   {
      
      private static const TF_TITULO:String = "tfTituloMarketingViral";
      
      private static const _pe15955:String = "mcFondoTituloMV";
      
      private static const _su9206:String = "mcBotonSiguienteMV";
      
      private static const _qv10006:String = "tfBotonSiguienteMV";
      
      private static const _jj4855:String = "mcBotonCerrarMV";
      
      private static const _pk1756:String = "mcBotonCerrarHitAreaMV";
      
      private static const _tw13764:String = "tfTexto1MarketingViral";
      
      private static const _ff6956:String = "tfTexto2MarketingViral";
      
      private static const _py15494:String = "tfTexto3MarketingViral";
      
      private static const _wx259:String = "tfCantidadPostales";
      
      private static const _as6718:String = "tfEnviarPostal";
      
      private static const _tl8459:String = "tfEscribeNombre";
      
      private static const _jw9379:String = "tfEscribeEmails";
      
      private static const _bs6388:String = "tfNombreMV";
      
      private static const _np7472:String = "tfEmailMV";
      
      private static const _ie517:String = "mcFondoTextoMV";
      
      private static const _vi3551:String = "mcNumero";
      
      private static const _eg8871:String = "mcEstadoEmailMV";
      
      private static const _qe15924:String = "inicio";
      
      private static const _sh2387:String = "invitar";
      
      private static const _ut3271:String = "enviadas";
      
      private static const _ua15733:String = "limiteEnviadas";
      
      private static const _cb9666:String = "noVisible";
      
      private static const _hy6251:String = "normal";
      
      private static const _di2741:String = "rollover";
      
      private static const _pf5671:String = "envio";
      
      private static const _yw10797:String = "normal";
      
      private static const _oc14407:String = "rollover";
      
      private static const _gv7046:String = "amarillo";
      
      private static const _gx12922:String = "azul";
      
      private static const _ih3416:String = "ok";
      
      private static const _tx8737:String = "warning";
      
      private static const _oh1535:String = "ninguno";
      
      private static const _jw4941:String = "gris";
      
      private static const _kb12732:String = "verde";
      
      private static const _yw8683:String = "azul";
      
      public static const _cy15219:int = -1;
      
      public static const _wj8144:int = 1;
      
      public static const _ug16097:int = 2;
      
      public static const _pn8357:int = 3;
      
      public static const _ae390:int = 4;
      
      private static const _uy12951:int = 5;
      
      private static const _so2479:int = 1;
      
      private static const _tr12308:int = 2;
      
      private static const _ha15953:int = 3;
      
      private static const _sn15904:int = 4;
      
      private static const _qq13772:int = 5;
      
      private var _ic10204:MovieClip;
      
      private var _re3848:int;
      
      private var _qh1795:Function;
      
      private var _gy10361:ChoosesceneModel;
      
      private var _vc10957:ChoosesceneController;
      
      private var logs:Logger;
      
      private var _wg10997:int;
      
      private var _yn7822:int;
      
      private var _ji3746:Array;
      
      private var _cf3560:Array;
      
      private var _cl12799:int;
      
      public function PanelsuperiorderechoModel(param1:MovieClip, param2:Function, param3:ChoosesceneModel, param4:ChoosesceneController)
      {
         super();
         this._ic10204 = param1;
         this._qh1795 = param2;
         this._gy10361 = param3;
         this._vc10957 = param4;
         this._vc10957.addEventListener(LoginEvents._tf16043,this._bw11981);
         this.logs = Logger.getInstance();
         StringUtils._dp2863(this._ic10204,this._un8075);
         this._yn7822 = _uy12951 - UserSession.getInstance()._tc16118;
         this._wg10997 = UserSession.getInstance()._ec10230;
         if(this._ic10204.currentLabel == _qe15924)
         {
            this._od2018();
            this._hv7449();
         }
         this._ic10204.visible = false;
         this._re3848 = _cy15219;
         UtilsUtils._vt11823(this._ic10204,_cb9666);
         this._cl12799 = _xw1367._wa4051;
      }
      
      public function get status() : int
      {
         return this._re3848;
      }
      
      private function _un8075() : void
      {
         var _loc1_:int = 0;
         switch(this._ic10204.currentLabel)
         {
            case _qe15924:
               this._hv7449();
               this._od2018();
               this._mc12371();
               MovieClip(this._ic10204[_su9206]).visible = true;
               MovieClip(this._ic10204[_su9206]).gotoAndStop(_yw10797);
               TextField(this._ic10204[_qv10006]).visible = true;
               return;
            case _sh2387:
               this._yb10035();
               this._mc12371();
               this._na15403();
               this._xp9663(true);
               this._gk15598();
               MovieClip(this._ic10204[_su9206]).visible = true;
               this._ji3746 = new Array();
               _loc1_ = 0;
               while(_loc1_ < _uy12951)
               {
                  this._ji3746.push(_tr12308);
                  _loc1_++;
               }
               return;
            case _ua15733:
               this._fq10744();
               this._mc12371();
               MovieClip(this._ic10204[_su9206]).visible = false;
               return;
            case _ut3271:
               this._iq6594();
               this._mc12371();
               MovieClip(this._ic10204[_su9206]).visible = false;
               this._xp9663(false);
               this._hr7950();
               this._xd8053();
               return;
            default:
               return;
         }
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         StringUtils._ff5056(this._ic10204);
         this._vc10957.removeEventListener(LoginEvents._tf16043,this._bw11981);
         if(this._re3848 != _cy15219)
         {
            this._ve13073();
         }
      }
      
      public function _db5584(param1:int, param2:int) : Boolean
      {
         if(this._ic10204.visible == false)
         {
            this._yn7822 = _uy12951 - UserSession.getInstance()._tc16118;
            _xw1367.getInstance()._uc3178(this._ic10204,this._cl12799);
            this._ic10204.visible = true;
            this._ic10204.x = param1;
            this._ic10204.y = param2;
            this._xo11249(_wj8144);
            return true;
         }
         return false;
      }
      
      public function _hu12389() : Boolean
      {
         if(this._ic10204.visible == true)
         {
            _xw1367.getInstance()._na10792(this._ic10204,this._cl12799);
            this._ic10204.visible = false;
            this._xo11249(_cy15219);
            if(this._qh1795 != null)
            {
               this._qh1795();
            }
            return true;
         }
         return false;
      }
      
      private function _na15403() : void
      {
         var _loc1_:* = false;
         var _loc2_:int = 0;
         while(_loc2_ < _uy12951)
         {
            _loc1_ = _loc2_ < _uy12951 - this._yn7822;
            TextField(this._ic10204[_np7472 + _loc2_]).visible = _loc1_;
            MovieClip(this._ic10204[_ie517 + _loc2_]).visible = _loc1_;
            MovieClip(this._ic10204[_vi3551 + _loc2_]).visible = _loc1_;
            _loc2_++;
         }
      }
      
      private function _gk15598() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < _uy12951)
         {
            TextField(this._ic10204[_np7472 + _loc1_]).restrict = TextLocalizer._us7650;
            TextField(this._ic10204[_np7472 + _loc1_]).maxChars = TextLocalizer._hq223;
            _loc1_++;
         }
         TextField(this._ic10204[_bs6388]).restrict = " " + TextLocalizer._qe9613;
      }
      
      private function _xp9663(param1:Boolean) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         if(param1)
         {
            _loc2_ = TextFieldType.INPUT;
         }
         else
         {
            _loc2_ = TextFieldType.DYNAMIC;
         }
         TextField(this._ic10204[_bs6388]).type = _loc2_;
         TextField(this._ic10204[_bs6388]).mouseEnabled = param1;
         while(_loc3_ < _uy12951)
         {
            TextField(this._ic10204[_np7472 + _loc3_]).mouseEnabled = param1;
            TextField(this._ic10204[_np7472 + _loc3_]).type = _loc2_;
            _loc3_++;
         }
      }
      
      private function _cb3012() : Boolean
      {
         var _loc1_:TextField = null;
         var _loc2_:String = null;
         var _loc5_:int = 0;
         this._cf3560 = new Array();
         while(_loc5_ < _uy12951)
         {
            _loc1_ = TextField(this._ic10204[_np7472 + _loc5_]);
            _loc2_ = _loc1_.text;
            if(_loc1_.visible)
            {
               if(_loc2_ != "")
               {
                  var _loc3_:Boolean = Boolean(UtilsUtils._gv3731(_loc2_));
                  this._ji3746[_loc5_] = _qq13772;
               }
               else
               {
                  this._ji3746[_loc5_] = _tr12308;
               }
            }
            else
            {
               this._ji3746[_loc5_] = _tr12308;
            }
            this._cf3560.push(_loc2_);
            _loc5_++;
         }
         return 0 > 0;
      }
      
      private function _hr7950() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < _uy12951)
         {
            _loc1_ = int(this._ji3746[_loc2_]);
            MovieClip(this._ic10204[_vi3551 + _loc2_]).visible = false;
            switch(_loc1_)
            {
               case _ha15953:
                  MovieClip(this._ic10204[_eg8871 + _loc2_]).gotoAndStop(_ih3416);
                  break;
               case _sn15904:
               case _qq13772:
                  MovieClip(this._ic10204[_eg8871 + _loc2_]).gotoAndStop(_tx8737);
                  break;
               default:
                  MovieClip(this._ic10204[_eg8871 + _loc2_]).gotoAndStop(_oh1535);
            }
            _loc2_++;
         }
      }
      
      private function _pn12344(param1:MovieClip) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < _uy12951)
         {
            if(MovieClip(this._ic10204[_ie517 + _loc2_]) == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      private function _vc4919(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         var _loc4_:String = null;
         var _loc3_:int = int(this._pn12344(MovieClip(param1.target)));
         switch(this._ji3746[_loc3_])
         {
            case _ha15953:
               _loc4_ = _kb12732;
               _loc2_ = this._gy10361._pv13766;
               break;
            case _qq13772:
               _loc4_ = _yw8683;
               _loc2_ = this._gy10361._fy6436;
               break;
            case _sn15904:
               _loc4_ = _yw8683;
               _loc2_ = this._gy10361._xt12365;
         }
         if(_loc4_ != null)
         {
            MovieClip(this._ic10204[_ie517 + _loc3_]).gotoAndStop(_loc4_);
            TextField(this._ic10204[_np7472 + _loc3_]).text = _loc2_;
         }
      }
      
      private function _sp11693(param1:MouseEvent) : void
      {
         var _loc2_:int = int(this._pn12344(MovieClip(param1.target)));
         switch(this._ji3746[_loc2_])
         {
            case _ha15953:
            case _qq13772:
            case _sn15904:
               MovieClip(this._ic10204[_ie517 + _loc2_]).gotoAndStop(_jw4941);
               TextField(this._ic10204[_np7472 + _loc2_]).text = this._cf3560[_loc2_];
               return;
            default:
               return;
         }
      }
      
      private function _od2018() : void
      {
         TextField(this._ic10204[_qv10006]).mouseEnabled = false;
         MovieClip(this._ic10204[_jj4855]).hitArea = MovieClip(this._ic10204[_pk1756]);
         MovieClip(this._ic10204[_pk1756]).visible = false;
      }
      
      private function _is5031(param1:MouseEvent) : void
      {
         if(this._re3848 != _pn8357)
         {
            MovieClip(this._ic10204[_su9206]).gotoAndStop(_di2741);
         }
      }
      
      private function _gs13309(param1:MouseEvent) : void
      {
         if(this._re3848 != _pn8357)
         {
            MovieClip(this._ic10204[_su9206]).gotoAndStop(_hy6251);
         }
      }
      
      private function _da3339(param1:MouseEvent) : void
      {
         switch(this._re3848)
         {
            case _wj8144:
               this._xo11249(_ug16097);
               return;
            case _ug16097:
               if(this._cb3012())
               {
                  this._xo11249(_pn8357);
               }
               return;
            case _pn8357:
               return;
            case _ae390:
               return;
            default:
               return;
         }
      }
      
      private function _xc9000(param1:MouseEvent) : void
      {
         MovieClip(this._ic10204[_jj4855]).gotoAndStop(_oc14407);
      }
      
      private function _eq2366(param1:MouseEvent) : void
      {
         MovieClip(this._ic10204[_jj4855]).gotoAndStop(_yw10797);
      }
      
      private function _kp15909(param1:MouseEvent) : void
      {
         MovieClip(this._ic10204[_jj4855]).dispatchEvent(new MouseEvent(MouseEvent.ROLL_OUT));
         this._hu12389();
      }
      
      private function _hv7449() : void
      {
         MovieClip(this._ic10204[_pe15955]).gotoAndStop(_gv7046);
         UtilsUtils._xl9503(this._ic10204[TF_TITULO],this._gy10361._ig12538);
         UtilsUtils._xl9503(this._ic10204[_qv10006],this._gy10361._yr5403);
         UtilsUtils._xl9503(this._ic10204[_tw13764],this._gy10361._fd11851);
         UtilsUtils._xl9503(this._ic10204[_ff6956],this._gy10361._hl15547);
         UtilsUtils._xl9503(this._ic10204[_py15494],this._gy10361._sn14441);
         UtilsUtils._xl9503(this._ic10204[_wx259],this._wg10997.toString());
      }
      
      private function _yb10035() : void
      {
         if(this._yn7822 > 0)
         {
            UtilsUtils._bj8346(this._ic10204[TF_TITULO],this._gy10361._ed205.replace("CANTENVIADAS",this._yn7822.toString()));
            MovieClip(this._ic10204[_pe15955]).gotoAndStop(_gx12922);
         }
         else
         {
            UtilsUtils._xl9503(this._ic10204[TF_TITULO],this._gy10361._ig12538);
            MovieClip(this._ic10204[_pe15955]).gotoAndStop(_gv7046);
         }
         UtilsUtils._xl9503(this._ic10204[_qv10006],this._gy10361._yi2726);
         if(this._yn7822 < _uy12951)
         {
            UtilsUtils._xl9503(this._ic10204[_as6718],this._gy10361._jq249);
         }
         else
         {
            UtilsUtils._bj8346(this._ic10204[_as6718],this._gy10361._wu9397);
         }
         UtilsUtils._xl9503(this._ic10204[_tl8459],this._gy10361._em15093);
         UtilsUtils._xl9503(this._ic10204[_jw9379],this._gy10361._ns11561);
      }
      
      private function _fq10744() : void
      {
         UtilsUtils._bj8346(this._ic10204[TF_TITULO],this._gy10361._ed205.replace("CANTENVIADAS",this._yn7822.toString()));
         MovieClip(this._ic10204[_pe15955]).gotoAndStop(_gx12922);
         UtilsUtils._bj8346(this._ic10204[_as6718],this._gy10361._wu9397);
      }
      
      private function _iq6594() : void
      {
         UtilsUtils._bj8346(this._ic10204[TF_TITULO],this._gy10361._ed205.replace("CANTENVIADAS",this._yn7822.toString()));
         MovieClip(this._ic10204[_pe15955]).gotoAndStop(_gx12922);
         UtilsUtils._bj8346(this._ic10204[_as6718],this._gy10361._ft9637);
      }
      
      public function _xo11249(param1:int) : void
      {
         if(this._re3848 == _ae390)
         {
            this._lx11082();
         }
         if(this._re3848 != _cy15219)
         {
            this._ve13073();
         }
         switch(param1)
         {
            case _wj8144:
               UtilsUtils._vt11823(this._ic10204,_qe15924);
               break;
            case _ug16097:
               if(this._yn7822 < _uy12951)
               {
                  UtilsUtils._vt11823(this._ic10204,_sh2387);
                  break;
               }
               UtilsUtils._vt11823(this._ic10204,_ua15733);
               break;
            case _pn8357:
               MovieClip(this._ic10204[_su9206]).gotoAndPlay(_pf5671);
               TextField(this._ic10204[_qv10006]).visible = false;
               this._xp9663(false);
               this._ng10555();
               break;
            case _ae390:
               UtilsUtils._vt11823(this._ic10204,_ut3271);
               break;
            case _cy15219:
               UtilsUtils._vt11823(this._ic10204,_cb9666);
         }
         this._re3848 = param1;
      }
      
      private function _ng10555() : void
      {
         var _loc1_:TextField = null;
         var _loc5_:int = 0;
         var _loc2_:Array = new Array();
         var _loc3_:String = "BoomBang";
         var _loc4_:TextField = TextField(this._ic10204[_bs6388]);
         if(_loc4_.text != "")
         {
            _loc3_ = _loc4_.text;
         }
         while(_loc5_ < _uy12951)
         {
            _loc1_ = TextField(this._ic10204[_np7472 + _loc5_]);
            if(this._ji3746[_loc5_] == _so2479)
            {
               _loc2_.push(_loc1_.text);
            }
            _loc5_++;
         }
         this._vc10957._ql11937(_loc3_,_loc2_);
      }
      
      public function _yp12555(param1:Array) : void
      {
         this._ne8926(param1);
         if(this.status == _pn8357)
         {
            this._xo11249(_ae390);
         }
      }
      
      private function _ne8926(param1:Array) : void
      {
         var _loc4_:int = 0;
         while(_loc4_ < _uy12951)
         {
            if(this._ji3746[_loc4_] == _so2479)
            {
               if(0 + 2 < param1.length)
               {
                  if(param1.length < 0 + 2 + 1)
                  {
                     this.logs._kp3815(new Logs(Logger._ny10327,"FichaMarketingViral.procesarTramaMarketingViral",param1.toString()));
                     return;
                  }
                  var _loc2_:uint = uint(param1[0 + 2]);
                  this._ji3746[_loc4_] = _qq13772;
               }
               else
               {
                  this._ji3746[_loc4_] = _qq13772;
               }
               _loc3_++;
            }
            _loc4_++;
         }
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:uint = 0;
         var _loc4_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc4_[0]).charCodeAt(0));
         switch(_loc2_)
         {
            case SocketManager._bl4651:
               var _loc3_:uint = uint(String(_loc4_[1]).charCodeAt(0));
               switch(0)
               {
                  case LoginProtocol._bc6971:
                     if(this._ic10204.visible)
                     {
                        this._yp12555(_loc4_);
                     }
               }
               return;
            default:
               return;
         }
      }
      
      private function _mc12371() : void
      {
         MovieClip(this._ic10204[_su9206]).addEventListener(MouseEvent.ROLL_OVER,this._is5031);
         MovieClip(this._ic10204[_su9206]).addEventListener(MouseEvent.ROLL_OUT,this._gs13309);
         MovieClip(this._ic10204[_su9206]).addEventListener(MouseEvent.CLICK,this._da3339);
         MovieClip(this._ic10204[_su9206]).tabEnabled = false;
         MovieClip(this._ic10204[_jj4855]).addEventListener(MouseEvent.ROLL_OVER,this._xc9000);
         MovieClip(this._ic10204[_jj4855]).addEventListener(MouseEvent.ROLL_OUT,this._eq2366);
         MovieClip(this._ic10204[_jj4855]).addEventListener(MouseEvent.CLICK,this._kp15909);
         MovieClip(this._ic10204[_jj4855]).tabEnabled = false;
      }
      
      private function _ve13073() : void
      {
         if(this._ic10204[_su9206] != null)
         {
            MovieClip(this._ic10204[_su9206]).removeEventListener(MouseEvent.ROLL_OVER,this._is5031);
            MovieClip(this._ic10204[_su9206]).removeEventListener(MouseEvent.ROLL_OUT,this._gs13309);
            MovieClip(this._ic10204[_su9206]).removeEventListener(MouseEvent.CLICK,this._da3339);
         }
         if(this._ic10204[_jj4855] != null)
         {
            MovieClip(this._ic10204[_jj4855]).removeEventListener(MouseEvent.ROLL_OVER,this._xc9000);
            MovieClip(this._ic10204[_jj4855]).removeEventListener(MouseEvent.ROLL_OUT,this._eq2366);
            MovieClip(this._ic10204[_jj4855]).removeEventListener(MouseEvent.CLICK,this._kp15909);
         }
      }
      
      private function _xd8053() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         while(_loc2_ < _uy12951)
         {
            _loc1_ = MovieClip(this._ic10204[_ie517 + _loc2_]);
            _loc1_.addEventListener(MouseEvent.ROLL_OVER,this._vc4919);
            _loc1_.addEventListener(MouseEvent.ROLL_OUT,this._sp11693);
            _loc2_++;
         }
      }
      
      private function _lx11082() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         while(_loc2_ < _uy12951)
         {
            _loc1_ = MovieClip(this._ic10204[_ie517 + _loc2_]);
            _loc1_.removeEventListener(MouseEvent.ROLL_OVER,this._vc4919);
            _loc1_.removeEventListener(MouseEvent.ROLL_OUT,this._sp11693);
            _loc2_++;
         }
      }
   }
}

