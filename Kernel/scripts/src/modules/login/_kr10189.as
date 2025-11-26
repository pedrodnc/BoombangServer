package src.modules.login
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import flash.ui.*;
   import src.allData.*;
   import src.allData.texts.*;
   import src.config.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _kr10189
   {
      
      private static const _me4511:String = "mcBaseLogin";
      
      private static const _fg7678:String = "mcFacebookLoginError";
      
      private static const _om12405:String = "tfError";
      
      private static const _sl9292:String = "mcBaseGlobo";
      
      private static const _kr8514:String = "mcLogo";
      
      private static const _lh4911:String = "mcLogoChile";
      
      private static const _qm7106:String = "mcLogoIngles";
      
      private static const _kj2169:String = "in1";
      
      private static const _kw12747:String = "in2";
      
      private static const _wv4156:String = "mcBoton";
      
      private static const _yd8080:String = "facebookBtn";
      
      private static const _hj15941:String = "facebookInfoBtn";
      
      private static const _oe11718:String = "facebookExplanation";
      
      private static const _vr3657:String = "tfMenores";
      
      private static const _mi15990:String = "closeBtn";
      
      private static const _ep11853:String = "tfFacebook";
      
      private static const _xc14186:String = "facebookBigTxt";
      
      private static const _ir3714:String = "tfLabel";
      
      private static const _cb6351:String = "tfIn1";
      
      private static const _ht5623:String = "tfIn2";
      
      private static const _ao10473:String = "tfBoton";
      
      private static const _xs7479:String = "mcBotonBack";
      
      private static const _nl898:String = "tfBotonBack";
      
      private static const _rx4299:String = "tfRememberComputer";
      
      private static const _pg2535:String = "tfRememberPass";
      
      private static const _cx7077:String = "mcCheckBoxRememberPass";
      
      private static const _ah8723:String = "mcCheckBoxRememberComputer";
      
      private static const _gw15349:String = "mcButtonContrasena";
      
      private static const _xo11743:String = "tfTitulo";
      
      private static const _ni2809:String = "tfTexto";
      
      private static const _rp7049:String = "mcBotonRecuperar";
      
      private static const _ae1334:String = "mcBotonRegistro";
      
      private static const _hq5846:String = "mcBotonCancel";
      
      private static const _qi13727:String = "mcFichaCreaCuenta";
      
      public static const _bk1795:String = "login";
      
      public static const _hx2255:String = "facebookInfo";
      
      public static const _tv14751:String = "loginVerificando";
      
      public static const _lh10669:String = "recuperar";
      
      public static const _of1993:String = "recuperarVerificando";
      
      public static const _kp2680:String = "mailEnviado";
      
      public static const _le15070:String = "codigo";
      
      public static const _dm882:String = "codigoVerificando";
      
      public static const _gh855:String = "codigoCorrecto";
      
      public static const _bd9003:String = "nuevaPass";
      
      public static const _ld2327:String = "nuevaPassVerificando";
      
      public static const _wf12306:String = "cuentaRecuperada";
      
      public static const _kv7740:String = "maxIntentos";
      
      private static var _dt15977:TextField = null;
      
      private var _pw3452:MovieClip;
      
      private var _np1587:_wi878;
      
      public var _si5141:String;
      
      public var _oa13773:String;
      
      private var _ym12228:_pf11103;
      
      private var _lt4172:InteractiveObject;
      
      private var _st14217:_pj12235;
      
      private var _vh14351:_pj12235;
      
      private var _xk7815:_pj12235;
      
      private var _jc13712:_fj3480;
      
      private var _xv9734:_fj3480;
      
      public var _tc3420:_iu11270;
      
      private var _td14902:_rk6334;
      
      private var _tr10625:_qo7568;
      
      public function _kr10189(param1:MovieClip, param2:_pf11103)
      {
         super();
         this._ym12228 = param2;
         this._np1587 = param2._np1587;
         this._pw3452 = param1[_me4511];
         (this._pw3452[_fg7678] as MovieClip).visible = false;
         (this._pw3452[_yd8080] as MovieClip).visible = false;
         (this._pw3452[_hj15941] as MovieClip).visible = false;
         this._ng15312();
         this._td14902 = new _rk6334(this._pw3452[_qi13727],this._bi11025,this._np1587._fd1531,this._np1587._yb5731);
      }
      
      private static function _ru6802(param1:TextEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:TextField = TextField(param1.target);
         if(_dt15977 == null)
         {
            _dt15977 = new TextField();
            _dt15977.wordWrap = false;
         }
         _dt15977.setTextFormat(_loc3_.getTextFormat());
         _dt15977.text = param1.text;
         var _loc4_:int = int(_dt15977.getLineMetrics(0).width);
         if(_loc3_.textWidth + _loc4_ >= _loc3_.width - 16)
         {
            _dt15977.text = _loc3_.selectedText;
            _loc2_ = int(_dt15977.getLineMetrics(0).width);
            if(_loc3_.textWidth + _loc4_ - _loc2_ >= _loc3_.width - 16)
            {
               param1.preventDefault();
            }
         }
      }
      
      public function _rb12911(param1:String) : void
      {
         _yq8362._xl9503(this._pw3452[_fg7678][_om12405],param1);
         (this._pw3452[_fg7678] as MovieClip).visible = true;
         (this._pw3452[_fg7678] as MovieClip).addEventListener(MouseEvent.CLICK,this._vk14202);
      }
      
      private function _vk14202(param1:MouseEvent) : void
      {
         (this._pw3452[_fg7678] as MovieClip).removeEventListener(MouseEvent.CLICK,this._vk14202);
         (this._pw3452[_fg7678] as MovieClip).visible = false;
      }
      
      private function _ng15312() : void
      {
         _xv14798._dp2863(this._pw3452,this._jw1477);
      }
      
      private function _lj15092() : void
      {
         _xv14798._ff5056(this._pw3452);
      }
      
      public function destroy() : void
      {
         this.removeListeners();
         this._lj15092();
         this._lt4172 = null;
         this._pw3452 = null;
         if(this._td14902 != null)
         {
            this._td14902.destroy();
            this._td14902 = null;
         }
      }
      
      public function _pd1002(param1:String) : void
      {
         if(this._pw3452.currentLabel == param1)
         {
            return;
         }
         this.removeListeners();
         _mc15002._vt11823(this._pw3452,param1);
         (_lh7543.get(_wl11587) as _wl11587)._hv9029("/login/" + param1);
      }
      
      private function addListeners() : void
      {
         MovieClip(this._pw3452[_yd8080]).addEventListener(MouseEvent.CLICK,this._tw15587,false,0,true);
         MovieClip(this._pw3452[_yd8080]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779,false,0,true);
         MovieClip(this._pw3452[_yd8080]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779,false,0,true);
         MovieClip(this._pw3452[_yd8080]).mouseChildren = false;
         MovieClip(this._pw3452[_yd8080]).buttonMode = true;
         if(this._pw3452.currentLabel != _hx2255)
         {
            MovieClip(this._pw3452[_hj15941]).addEventListener(MouseEvent.CLICK,this._bp922,false,0,true);
            MovieClip(this._pw3452[_hj15941]).mouseChildren = false;
            MovieClip(this._pw3452[_hj15941]).buttonMode = true;
         }
         switch(this._pw3452.currentLabel)
         {
            case _bk1795:
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.CLICK,this._jw4048);
               MovieClip(this._pw3452[_wv4156]).mouseChildren = false;
               MovieClip(this._pw3452[_wv4156]).buttonMode = true;
               TextField(this._pw3452[_kj2169]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[_kj2169]).addEventListener(TextEvent.TEXT_INPUT,_ru6802);
               TextField(this._pw3452[_kw12747]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[_kw12747]).addEventListener(TextEvent.TEXT_INPUT,_ru6802);
               this._tr10625 = new _qo7568(this._pw3452[_gw15349],this._fi3087,this._np1587._ub1879,true);
               this._tr10625._lq8071 = 16776960;
               this._tr10625._vd8836 = 16777215;
               this._jc13712 = new _fj3480(this._pw3452[_ah8723],_pf11103._un7641,this._ym12228._rw730);
               this._xv9734 = new _fj3480(this._pw3452[_cx7077],_pf11103._tr4980,this._ym12228._rc302);
               this._tc3420 = new _iu11270(this._pw3452,this._np1587);
               this._pw3452.stage.focus = TextField(this._pw3452[_kj2169]);
               return;
            case _lh10669:
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.CLICK,this._ud3372);
               MovieClip(this._pw3452[_wv4156]).mouseChildren = false;
               MovieClip(this._pw3452[_wv4156]).buttonMode = true;
               TextField(this._pw3452[_kj2169]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[_kw12747]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               this._xk7815 = new _pj12235(this._pw3452[_hq5846],this._np1587._cu2072,this._np1587._pt65,this._pr3349);
               this._pw3452.stage.focus = TextField(this._pw3452[_kj2169]);
               return;
            case _kp2680:
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.CLICK,this._ed10464);
               MovieClip(this._pw3452[_wv4156]).mouseChildren = false;
               MovieClip(this._pw3452[_wv4156]).buttonMode = true;
               MovieClip(this._pw3452[_xs7479]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_xs7479]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_xs7479]).addEventListener(MouseEvent.CLICK,this._fi3087);
               MovieClip(this._pw3452[_xs7479]).mouseChildren = false;
               MovieClip(this._pw3452[_xs7479]).buttonMode = true;
               this._xk7815 = new _pj12235(this._pw3452[_hq5846],this._np1587._cu2072,this._np1587._pt65,this._pr3349);
               return;
            case _le15070:
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.CLICK,this._vp5863);
               MovieClip(this._pw3452[_wv4156]).mouseChildren = false;
               MovieClip(this._pw3452[_wv4156]).buttonMode = true;
               MovieClip(this._pw3452[_xs7479]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_xs7479]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_xs7479]).addEventListener(MouseEvent.CLICK,this._hi1295);
               MovieClip(this._pw3452[_xs7479]).mouseChildren = false;
               TextField(this._pw3452[_kj2169]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               this._xk7815 = new _pj12235(this._pw3452[_hq5846],this._np1587._cu2072,this._np1587._pt65,this._pr3349);
               this._pw3452.stage.focus = TextField(this._pw3452[_kj2169]);
               return;
            case _gh855:
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.CLICK,this._uc8761);
               MovieClip(this._pw3452[_wv4156]).mouseChildren = false;
               MovieClip(this._pw3452[_wv4156]).buttonMode = true;
               return;
            case _bd9003:
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.CLICK,this._va15090);
               MovieClip(this._pw3452[_wv4156]).mouseChildren = false;
               MovieClip(this._pw3452[_wv4156]).buttonMode = true;
               TextField(this._pw3452[_kj2169]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[_kw12747]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               this._pw3452.stage.focus = TextField(this._pw3452[_kj2169]);
               return;
            case _wf12306:
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.CLICK,this._eo9844);
               MovieClip(this._pw3452[_wv4156]).mouseChildren = false;
               MovieClip(this._pw3452[_wv4156]).buttonMode = true;
               return;
            case _kv7740:
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).addEventListener(MouseEvent.CLICK,this._pg12839);
               MovieClip(this._pw3452[_wv4156]).mouseChildren = false;
               MovieClip(this._pw3452[_wv4156]).buttonMode = true;
               return;
            case _hx2255:
               if(_cc7688._qs3725 == _cc7688._gl650)
               {
                  MovieClip(this._pw3452[_oe11718]).gotoAndStop(2);
               }
               MovieClip(this._pw3452[_oe11718][_mi15990]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_oe11718][_mi15990]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_oe11718][_mi15990]).addEventListener(MouseEvent.CLICK,this._cg642);
               MovieClip(this._pw3452[_oe11718][_mi15990]).mouseChildren = false;
               MovieClip(this._pw3452[_oe11718][_mi15990]).buttonMode = true;
               _yq8362._xl9503(this._pw3452[_oe11718][_xc14186],this._np1587._vd8517);
               return;
            case _tv14751:
            case _of1993:
            case _ld2327:
               return;
            default:
               return;
         }
      }
      
      private function removeListeners() : void
      {
         if(this._pw3452.currentLabel != _hx2255)
         {
            MovieClip(this._pw3452[_hj15941]).removeEventListener(MouseEvent.CLICK,this._bp922);
         }
         MovieClip(this._pw3452[_yd8080]).removeEventListener(MouseEvent.CLICK,this._tw15587);
         MovieClip(this._pw3452[_yd8080]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
         MovieClip(this._pw3452[_yd8080]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
         switch(this._pw3452.currentLabel)
         {
            case _bk1795:
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.CLICK,this._jw4048);
               TextField(this._pw3452[_kj2169]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[_kj2169]).removeEventListener(TextEvent.TEXT_INPUT,_ru6802);
               TextField(this._pw3452[_kw12747]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[_kw12747]).removeEventListener(TextEvent.TEXT_INPUT,_ru6802);
               if(this._vh14351 != null)
               {
                  this._vh14351.destroy();
                  this._vh14351 = null;
               }
               if(this._st14217 != null)
               {
                  this._st14217.destroy();
                  this._st14217 = null;
               }
               if(this._jc13712 != null)
               {
                  this._jc13712.destroy();
                  this._jc13712 = null;
               }
               if(this._xv9734 != null)
               {
                  this._xv9734.destroy();
                  this._xv9734 = null;
               }
               if(this._tc3420)
               {
                  this._tc3420.destroy();
                  this._tc3420 = null;
               }
               if(this._tr10625 != null)
               {
                  this._tr10625.destroy();
                  this._tr10625 = null;
               }
               return;
            case _lh10669:
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.CLICK,this._ud3372);
               TextField(this._pw3452[_kj2169]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[_kw12747]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               if(this._xk7815 != null)
               {
                  this._xk7815.destroy();
                  this._xk7815 = null;
               }
               return;
            case _kp2680:
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.CLICK,this._ed10464);
               MovieClip(this._pw3452[_xs7479]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_xs7479]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_xs7479]).removeEventListener(MouseEvent.CLICK,this._fi3087);
               if(this._xk7815 != null)
               {
                  this._xk7815.destroy();
                  this._xk7815 = null;
               }
               return;
            case _le15070:
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.CLICK,this._vp5863);
               MovieClip(this._pw3452[_xs7479]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_xs7479]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_xs7479]).removeEventListener(MouseEvent.CLICK,this._hi1295);
               TextField(this._pw3452[_kj2169]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               if(this._xk7815 != null)
               {
                  this._xk7815.destroy();
                  this._xk7815 = null;
               }
               return;
            case _gh855:
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.CLICK,this._uc8761);
               return;
            case _bd9003:
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.CLICK,this._va15090);
               TextField(this._pw3452[_kj2169]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[_kw12747]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               return;
            case _wf12306:
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.CLICK,this._eo9844);
               return;
            case _kv7740:
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_wv4156]).removeEventListener(MouseEvent.CLICK,this._pg12839);
               return;
            case _hx2255:
               MovieClip(this._pw3452[_oe11718][_mi15990]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[_oe11718][_mi15990]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[_oe11718][_mi15990]).removeEventListener(MouseEvent.CLICK,this._cg642);
               MovieClip(this._pw3452[_oe11718][_mi15990]).mouseChildren = false;
               MovieClip(this._pw3452[_oe11718][_mi15990]).buttonMode = true;
               return;
            case _tv14751:
            case _of1993:
            case _ld2327:
               return;
            default:
               return;
         }
      }
      
      private function _aj13779(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = param1.currentTarget as MovieClip;
         if(_loc2_ == null)
         {
            return;
         }
         switch(param1.type)
         {
            case MouseEvent.ROLL_OUT:
               _loc2_.gotoAndStop(_ax13262._vk6252);
               return;
            case MouseEvent.ROLL_OVER:
               _loc2_.gotoAndStop(_ax13262._jo8252);
               return;
            default:
               return;
         }
      }
      
      private function _jw1477() : void
      {
         this.addListeners();
         switch(this._pw3452.currentLabel)
         {
            case _bk1795:
            case _tv14751:
               this._lq15572();
               return;
            case _lh10669:
            case _of1993:
               this._ow1956();
               return;
            case _kp2680:
            case _le15070:
            case _dm882:
            case _gh855:
            case _kv7740:
               this._ei11232();
               return;
            case _bd9003:
            case _ld2327:
            case _wf12306:
               this._dw11818();
               return;
            default:
               return;
         }
      }
      
      private function _jw4048(param1:MouseEvent = null) : void
      {
         this._ym12228._jw4048(this._pw3452[_kj2169].text,this._pw3452[_kw12747].text);
      }
      
      private function _lq15572() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         _yq8362._xl9503(this._pw3452[_ir3714],this._np1587._kx13602);
         _yq8362._xl9503(this._pw3452[_cb6351],this._np1587._uk6127);
         _yq8362._xl9503(this._pw3452[_ht5623],this._np1587._db14441);
         _yq8362._xl9503(this._pw3452[_rx4299],this._np1587._wq13862);
         _yq8362._xl9503(this._pw3452[_pg2535],this._np1587._mc13887);
         switch(this._pw3452.currentLabel)
         {
            case _bk1795:
               _yq8362._xl9503(this._pw3452[_wv4156][_ao10473],this._np1587._fj14617);
               _yq8362._xl9503(this._pw3452[_yd8080][_ep11853],this._np1587._dl11418);
               _yq8362._xl9503(this._pw3452[_hj15941]["txt"],this._np1587._cq7572);
               TextField(this._pw3452[_kj2169]).restrict = _ei10851._qe9613;
               TextField(this._pw3452[_kj2169]).maxChars = _ei10851._cb8664;
               TextField(this._pw3452[_kw12747]).restrict = _ei10851._di3970;
               TextField(this._pw3452[_kw12747]).maxChars = _ei10851._ik13685;
               _loc1_ = _hv12530.getInstance().name;
               _loc2_ = _hv12530.getInstance()._hw3203;
               if(_loc1_ == null)
               {
                  _loc1_ = "";
               }
               if(_loc2_ == null)
               {
                  _loc2_ = "";
               }
               _yq8362._xl9503(this._pw3452[_kj2169],_loc1_);
               _yq8362._xl9503(this._pw3452[_kw12747],_loc2_);
               TextField(this._pw3452[_kw12747]).displayAsPassword = true;
               return;
            case _tv14751:
               _yq8362._xl9503(this._pw3452[_kj2169],this._si5141);
               _yq8362._xl9503(this._pw3452[_kw12747],this._oa13773);
               TextField(this._pw3452[_kw12747]).displayAsPassword = true;
               return;
            default:
               return;
         }
      }
      
      private function _bp922(param1:MouseEvent) : void
      {
         this._pd1002(_hx2255);
      }
      
      private function _cg642(param1:MouseEvent) : void
      {
         this._pd1002(_bk1795);
      }
      
      private function _tw15587(param1:MouseEvent) : void
      {
         _fg1060.user.authenticate(_sw5071._xt5593);
         this._ym12228._dt7604();
      }
      
      private function _fi3087(param1:MouseEvent = null) : void
      {
         this._ym12228._fi3087();
      }
      
      private function _ud3372(param1:MouseEvent = null) : void
      {
         this._ym12228._ud3372(this._pw3452[_kj2169].text,this._pw3452[_kw12747].text);
      }
      
      private function _pr3349(param1:MouseEvent = null) : void
      {
         this._ym12228._pr3349();
      }
      
      private function _ow1956() : void
      {
         _yq8362._xl9503(this._pw3452[_ir3714],this._np1587._xj9125);
         _yq8362._xl9503(this._pw3452[_cb6351],this._np1587._jc9940);
         _yq8362._xl9503(this._pw3452[_ht5623],this._np1587._ji12688);
         switch(this._pw3452.currentLabel)
         {
            case _lh10669:
               _yq8362._xl9503(this._pw3452[_wv4156][_ao10473],this._np1587._wb5791);
               TextField(this._pw3452[_kj2169]).restrict = _ei10851._qe9613;
               TextField(this._pw3452[_kj2169]).maxChars = _ei10851._cb8664;
               TextField(this._pw3452[_kw12747]).restrict = _ei10851._us7650;
               TextField(this._pw3452[_kw12747]).maxChars = _ei10851._hq223;
               _yq8362._xl9503(this._pw3452[_kj2169],"");
               _yq8362._xl9503(this._pw3452[_kw12747],"");
               return;
            case _of1993:
               _yq8362._xl9503(this._pw3452[_kj2169],this._si5141);
               _yq8362._xl9503(this._pw3452[_kw12747],this._oa13773);
               return;
            default:
               return;
         }
      }
      
      private function _vp5863(param1:MouseEvent = null) : void
      {
         this._ym12228._vp5863(this._pw3452[_kj2169].text);
      }
      
      private function _ei11232() : void
      {
         switch(this._pw3452.currentLabel)
         {
            case _kp2680:
               _yq8362._xl9503(this._pw3452[_ir3714],this._np1587._kc16044);
               _yq8362._xl9503(this._pw3452[_wv4156][_ao10473],this._np1587._wb5791);
               _yq8362._xl9503(this._pw3452[_xs7479][_nl898],this._np1587._yj9637);
               _wg2840._ra15698(this._pw3452);
               return;
            case _le15070:
               _yq8362._xl9503(this._pw3452[_ir3714],this._np1587._nf8348);
               _yq8362._xl9503(this._pw3452[_cb6351],this._np1587._bn7174);
               _yq8362._xl9503(this._pw3452[_wv4156][_ao10473],this._np1587._qd3764);
               _yq8362._xl9503(this._pw3452[_xs7479][_nl898],this._np1587._yj9637);
               TextField(this._pw3452[_kj2169]).restrict = _ei10851._cv15830;
               TextField(this._pw3452[_kj2169]).maxChars = _ei10851._ht9505;
               _yq8362._xl9503(this._pw3452[_kj2169],"");
               _wg2840._ra15698(this._pw3452);
               return;
            case _dm882:
               _yq8362._xl9503(this._pw3452[_ir3714],this._np1587._nf8348);
               _yq8362._xl9503(this._pw3452[_cb6351],this._np1587._bn7174);
               _yq8362._xl9503(this._pw3452[_kj2169],this._si5141);
               TextField(this._pw3452[_kj2169]).restrict = _ei10851._cv15830;
               TextField(this._pw3452[_kj2169]).maxChars = _ei10851._ht9505;
               _wg2840._ra15698(this._pw3452);
               return;
            case _gh855:
               _yq8362._xl9503(this._pw3452[_ir3714],this._np1587._sg6366);
               _yq8362._xl9503(this._pw3452[_wv4156][_ao10473],this._np1587._wb5791);
               return;
            case _kv7740:
               _yq8362._xl9503(this._pw3452[_ir3714],this._np1587._sk5126);
               _yq8362._xl9503(this._pw3452[_wv4156][_ao10473],this._np1587._wb5791);
               return;
            default:
               return;
         }
      }
      
      private function _uc8761(param1:MouseEvent) : void
      {
         this._ym12228._uc8761();
      }
      
      private function _pg12839(param1:MouseEvent) : void
      {
         this._ym12228._pg12839();
      }
      
      private function _va15090(param1:MouseEvent = null) : void
      {
         this._ym12228._va15090(this._pw3452[_kj2169].text,this._pw3452[_kw12747].text);
      }
      
      private function _dw11818() : void
      {
         switch(this._pw3452.currentLabel)
         {
            case _bd9003:
               _yq8362._xl9503(this._pw3452[_ir3714],this._np1587._li4011);
               _yq8362._xl9503(this._pw3452[_cb6351],this._np1587._mr4033);
               _yq8362._xl9503(this._pw3452[_ht5623],this._np1587._ii3333);
               _yq8362._xl9503(this._pw3452[_wv4156][_ao10473],this._np1587._wb5791);
               TextField(this._pw3452[_kj2169]).restrict = _ei10851._di3970;
               TextField(this._pw3452[_kw12747]).restrict = _ei10851._di3970;
               TextField(this._pw3452[_kj2169]).displayAsPassword = true;
               TextField(this._pw3452[_kw12747]).displayAsPassword = true;
               _yq8362._xl9503(this._pw3452[_kj2169],"");
               _yq8362._xl9503(this._pw3452[_kw12747],"");
               return;
            case _ld2327:
               _yq8362._xl9503(this._pw3452[_ir3714],this._np1587._li4011);
               _yq8362._xl9503(this._pw3452[_cb6351],this._np1587._mr4033);
               _yq8362._xl9503(this._pw3452[_ht5623],this._np1587._ii3333);
               _yq8362._xl9503(this._pw3452[_kj2169],this._si5141);
               _yq8362._xl9503(this._pw3452[_kw12747],this._oa13773);
               TextField(this._pw3452[_kj2169]).displayAsPassword = true;
               TextField(this._pw3452[_kw12747]).displayAsPassword = true;
               return;
            case _wf12306:
               _yq8362._xl9503(this._pw3452[_ir3714],this._np1587._bn12565);
               _yq8362._xl9503(this._pw3452[_wv4156][_ao10473],this._np1587._wb5791);
               return;
            default:
               return;
         }
      }
      
      private function _eo9844(param1:MouseEvent = null) : void
      {
         this._ym12228._eo9844();
      }
      
      private function _ed10464(param1:MouseEvent = null) : void
      {
         this._ym12228._ed10464();
      }
      
      private function _hi1295(param1:MouseEvent = null) : void
      {
         this._ym12228._hi1295();
      }
      
      private function _bi11025(param1:MouseEvent = null) : void
      {
         this._ym12228._bi11025();
      }
      
      private function _ot5240(param1:KeyboardEvent) : void
      {
         if(param1.keyCode != Keyboard.ENTER)
         {
            return;
         }
         var _loc2_:int = int(this._ym12228._mp5106());
         switch(_loc2_)
         {
            case _pf11103._ia10448:
            case _pf11103._he11959:
            case _pf11103._qy4488:
               if(param1.target == this._pw3452[_kj2169] && this._pw3452[_kj2169].text.length > 0)
               {
                  this._pw3452[_kw12747].stage.focus = this._pw3452[_kw12747];
               }
               else if(param1.target == this._pw3452[_kw12747] && this._pw3452[_kj2169].text.length > 0 && this._pw3452[_kw12747].text.length > 0)
               {
                  switch(_loc2_)
                  {
                     case _pf11103._ia10448:
                        this._jw4048();
                        break;
                     case _pf11103._he11959:
                        this._ud3372();
                        break;
                     case _pf11103._qy4488:
                        this._va15090();
                  }
               }
               return;
            case _pf11103._hd13967:
               if(this._pw3452[_kj2169].text.length > 0)
               {
                  this._vp5863();
               }
               return;
            default:
               return;
         }
      }
      
      public function loop(param1:int) : void
      {
         switch(param1)
         {
            case _pf11103._ia10448:
            case _pf11103._he11959:
            case _pf11103._qy4488:
               if(this._lt4172 == null)
               {
                  this._lt4172 = this._pw3452[_kj2169];
               }
               else if(this._pw3452.stage.focus is TextField && TextField(this._pw3452.stage.focus).type == TextFieldType.INPUT)
               {
                  this._lt4172 = this._pw3452.stage.focus;
               }
               this._pw3452.stage.focus = this._lt4172;
               return;
            case _pf11103._hd13967:
               this._pw3452.stage.focus = this._pw3452[_kj2169];
               return;
            case _pf11103._qk8597:
            case _pf11103._xk13931:
            case _pf11103._bi8410:
            case _pf11103._mp3575:
               this._pw3452.stage.focus = null;
               return;
            default:
               return;
         }
      }
   }
}

