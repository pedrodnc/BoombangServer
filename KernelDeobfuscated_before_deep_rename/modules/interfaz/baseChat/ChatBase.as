package src.modules.interfaz.baseChat
{
   import com.hurlant.util.*;
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.Sound;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import mx.utils.*;
   import src.*;
   import src.allData.*;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.dataObjects.SceneObjectRenderer;
   import src.allData.texts.*;
   import src.config.*;
   import src.logs.*;
   import src.modules.bpad.*;
   import src.modules.creditos.*;
   import src.modules.interfaz.*;
   import src.modules.interfaz.baseChat.skin.*;
   import src.person.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.tutorial.*;
   import src.tv.boombang.application.tutorial.gui.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.windows.*;
   import src.utils.*;
   import src.utils.crypto.*;
   import src.utils.fichas.*;
   
   public class ChatBase extends EventDispatcher
   {
      
      public static var Instance:ChatBase;
      
      public static var _yf4801:String;
      
      private static const _gh10679:String = "mcBarraChat";
      
      private static const _yf5584:String = "mcBotonExit";
      
      private static const _ve7652:String = "mcBotonMochila";
      
      private static const _ow11854:String = "mcMarikita";
      
      private static const _jp1776:String = "mcChatPrivado";
      
      private static const _om14190:String = "mcBotonElegirPrivado";
      
      private static const _ki15335:String = "mcCompraCreditos";
      
      private static const _nr2697:String = "mcCompraObjetos";
      
      private static const _rh12400:String = "mcEditObject";
      
      private static const _bi5183:String = "mcCandado";
      
      private static const _xr12845:String = "mcHabilitarIntercambios";
      
      private static const _sy10352:String = "tfTexto";
      
      private static const _do7788:String = "mcBotonPrivadoPublico";
      
      private static const _fm12308:String = "mcBotonPrivado";
      
      private static const _bs6388:String = "tfNombre";
      
      private static const _dg11185:String = "tfChat";
      
      private static const _str_tfBooms:String = "tfBooms";
      
      private static const _str_tfBoomsDiamante:String = "tfBoomsDiamante";
      
      private static const _ph11237:String = "tfBoomsPlata";
      
      private static const _wf8684:String = "tfTimeNextMonedaPlata";
      
      private static const _us14195:String = "tfRolloverCambios";
      
      private static const _hu12559:String = "mcTooltipMochila";
      
      private static const _ib12631:String = "tfTooltip";
      
      private static const _str_mcMoneda:String = "mcMoneda";
      
      private static const _str_mcMonedaDiamante:String = "mcMonedaDiamante";
      
      private static const _xg11439:String = "mcMonedaPlata";
      
      private static const _xc10620:String = "mcDecoration";
      
      private static const _rm1507:String = "mcRolloverMonedaPlata";
      
      private static const _ln4198:String = "mcBaseFichaMonedasPlata";
      
      private static const _gu10471:String = "mcClose";
      
      private static const _dd1223:String = "mcRolloverCambios";
      
      private static const _ew11866:String = "mcFondoBotonLateral";
      
      private static const _hj763:String = "mcSelectorFrase";
      
      private static const _jy4608:String = "mcSkinBarraChat";
      
      private static const _vozbtn:String = "vozbtn";
      
      private static const _ci10972:String = "come";
      
      private static const _ig6277:String = "comeStop";
      
      private static const _vs9519:String = "leave";
      
      private static const _ue4696:String = "leaveStop";
      
      private static const _ng979:String = "normal";
      
      private static const _lt11018:String = "rollover";
      
      private static const _mm15769:String = "sinTildar";
      
      private static const _pt6691:String = "tildado";
      
      private static const _fh8779:String = "on";
      
      private static const _rf10568:String = "off";
      
      private static const _jg9977:String = "cerrado";
      
      private static const _or3649:String = "abierto";
      
      private static const _sg6807:String = "rollover";
      
      private static const _ed5265:String = "rollout";
      
      private static const _co3115:String = "normal";
      
      private static const _pf2938:String = "magic";
      
      private static const _mc5293:int = 509;
      
      private static const _dy953:int = 611;
      
      private static const _ts12331:Number = 79;
      
      private static const _oe2894:Number = 38;
      
      private static const _yd13144:Number = 21;
      
      private static const _ey12557:int = 4;
      
      private static const _xf3962:int = 2;
      
      private static const _og1947:int = 3;
      
      private static const _ia9577:int = _xf3962 + _og1947;
      
      private static const _iv11677:int = 1;
      
      private static const _dt14121:int = 3;
      
      private static const _tp2228:int = 14221386;
      
      public static const _uc10511:int = -1;
      
      public static const _mc12875:int = 1500;
      
      private static var _dt15977:TextField = null;
      
      private var logs:Logger;
      
      public var _fx14191:ChatManager;
      
      private var _dv14621:InterfazController;
      
      private var _sv11952:MovieClip;
      
      private var _sp11096:UIButton;
      
      private var _cs11070:ChatDataModel;
      
      private var _lb15725:MovieClip;
      
      private var _gk10581:MovieClip;
      
      private var _mc_mcMoneda:MovieClip;
      
      private var _mc_mcMonedaDiamante:MovieClip;
      
      private var _tx6279:MovieClip;
      
      private var _oh14426:MovieClip;
      
      private var _ik983:MovieClip;
      
      private var _gk3499:MovieClip;
      
      private var _oh12883:MovieClip;
      
      private var _mm11019:MovieClip;
      
      private var _lh1803:Function;
      
      private var _vj7170:MovieClip;
      
      private var _tf_tfBooms:TextField;
      
      private var _tf_tfBoomsDiamante:TextField;
      
      private var _xt11784:TextField;
      
      public var _ac10872:TextField;
      
      private var _txt_Monedad:TextField;
      
      private var _ct10320:MovieClip;
      
      private var _nx12652:PersonAnimation = null;
      
      private var privados:Array;
      
      private var _lp469:InterfazManager;
      
      private var _ix11826:PersonBase;
      
      private var _bl11315:SceneType;
      
      private var _ql2951:MovieClip;
      
      private var _xj6941:MovieClip;
      
      private var _ty11535:Array;
      
      private var _fj5204:int;
      
      private var _ty4826:int;
      
      private var _dg11769:Number;
      
      private var _nt664:Number;
      
      private var _wy14677:int;
      
      private var _ff4906:int;
      
      private var _jt12697:int;
      
      private var _jt2393:int;
      
      private var _xs12582:int;
      
      private var _du2403:int;
      
      private var _chatHiddenMessage:MovieClip;
      
      private var _chatHiddenCloseBtn:MovieClip;
      
      private var _nb142:Number;
      
      private var _nx617:int;
      
      private var _qn3968:BasechatUtils;
      
      private var editObject:Boolean;
      
      private var _yd14192:String = "";
      
      private var _td15827:int;
      
      private var _vr14476:BasechatUtils;
      
      private var _eb13358:Boolean;
      
      private var _mc12543:int;
      
      private var _hb8795:Skin;
      
      private var _kh6882:BasechatModel;
      
      private var _vh5154:FichasController;
      
      private var _rx15332:MovieClip;
      
      private var _my15681:UIPanel;
      
      private var _ta13947:UIPanel;
      
      private var _ic5874:UIPanel;
      
      private var _sj7721:UIPanel;
      
      private var _voiceTooltip:UIPanel;
      
      private var _wm15641:MovieClip;
      
      private var _actualcreditosDiamante:int;
      
      private var _totalcreditosDiamante:int;
      
      private var _sumadoscreditosDiamante:int;
      
      public function ChatBase(param1:InterfazController, param2:MovieClip, param3:MovieClip, param4:Function, param5:InterfazManager, param6:PersonBase, param7:SceneType)
      {
         this.privados = new Array();
         this._vr14476 = new BasechatUtils();
         super();
         if(Configuration._bd8175)
         {
            this._hb8795 = new Skin();
         }
         else if(Configuration._dg9983)
         {
            this._hb8795 = new Skin();
         }
         else if(Configuration._gc1387)
         {
            this._hb8795 = new Skin();
         }
         else
         {
            this._hb8795 = new Skin();
         }
         this._sp11096 = new UIButton();
         this._sp11096._np5723 = new Point(0.5,1);
         this._sp11096._wg2951 = new Point(0,-45);
         this._vj7170 = param2;
         this._dv14621 = param1;
         this._sv11952 = param2[_gh10679];
         this._lb15725 = MovieClip(this._sv11952[_ve7652]);
         this._tf_tfBooms = TextField(this._sv11952[_str_tfBooms]);
         this._tf_tfBoomsDiamante = TextField(this._sv11952[_str_tfBoomsDiamante]);
         this._xt11784 = TextField(this._sv11952[_ph11237]);
         this._ac10872 = TextField(this._sv11952[_dg11185]);
         this._mc_mcMoneda = MovieClip(this._sv11952[_str_mcMoneda]);
         this._tx6279 = MovieClip(this._sv11952[_xg11439]);
         this._oh14426 = MovieClip(this._sv11952[_xc10620]);
         this._ik983 = MovieClip(this._sv11952[_dd1223]);
         this._gk3499 = MovieClip(this._sv11952[_rm1507]);
         this._mm11019 = MovieClip(this._sv11952[_xr12845]);
         this._oh12883 = MovieClip(this._sv11952[_hu12559]);
         this._fx14191 = new ChatManager();
         this._lp469 = param5;
         this._ct10320 = MovieClip(this._sv11952[_om14190]);
         this._gk10581 = MovieClip(this._sv11952[_jp1776]);
         this._cs11070 = new ChatDataModel(param3,this._op12359);
         this._ql2951 = MovieClip(this._sv11952[_jy4608]);
         this._rx15332 = this._sv11952["privateMask"] as MovieClip;
         this._gk10581.mask = this._rx15332;
         this._ql2951.gotoAndStop(_co3115);
         this._lh1803 = param4;
         this._lb15725.buttonMode = true;
         this._ix11826 = param6;
         this._bl11315 = param7;
         this._bn14384();
         this._gk10581.visible = false;
         this._vh5154 = new FichasController(param2[_ln4198],new FichasUtils(this._fx14191._jd4780,this._fx14191._je15197,this._fx14191._yc11865),null,false);
         this._ik983.visible = false;
         this._dr8440(UserSession.getInstance()._nw13075);
         MovieClip(this._sv11952[_xr12845]).buttonMode = true;
         TextField(this._sv11952[_str_tfBooms]).mouseEnabled = false;
         TextField(this._sv11952[_str_tfBoomsDiamante]).mouseEnabled = false;
         TextField(this._sv11952[_ph11237]).mouseEnabled = false;
         this._mc_mcMoneda.buttonMode = true;
         this._tx6279.buttonMode = true;
         this._lt3356();
         this._bd15626();
         this._du10593();
         this._tp10773();
         this._qc3804();
         this._nb142 = 0;
         this._xj6941 = MovieClip(this._sv11952[_ew11866]);
         this._xj6941.visible = false;
         this._ty11535 = new Array();
         MovieClip(this._sv11952[_hu12559]).visible = Configuration._qp14200;
         MovieClip(this._sv11952[_hu12559]).mouseEnabled = false;
         MovieClip(this._sv11952[_hu12559]).mouseChildren = false;
         this._sv11952.tabEnabled = false;
         this._sv11952.tabChildren = false;
         this._qn3968 = new BasechatUtils(MovieClip(this._sv11952[_hj763]));
         this._eb13358 = false;
         this._ta13947 = new UIPanel();
         this._ta13947.text = "gui.buyCreditsIcon.tooltip";
         this._ta13947._xe10297 = UITextField.LEFT;
         this._ta13947.fontSize = 15;
         this._ta13947._ui11624 = 100;
         this._ta13947.x = 67;
         this._ta13947.y = 25;
         this._ta13947._sl14850();
         this._ta13947.visible = false;
         MovieClip(this._sv11952[_ki15335]).addChild(this._ta13947);
         this._my15681 = this._ta13947.clone();
         this._my15681.x = 55;
         this._my15681.y = 0;
         this._my15681._xe10297 = UITextField.BOTTOM;
         this._my15681._sl14850();
         MovieClip(this._sv11952[_str_mcMoneda]).addChild(this._my15681);
         this._ic5874 = this._ta13947.clone();
         this._ic5874.text = "gui.shopIcon.tooltip";
         this._ic5874._sl14850();
         MovieClip(this._sv11952[_nr2697]).addChild(this._ic5874);
         this._sj7721 = this._ta13947.clone();
         this._sj7721.text = "gui.editIcon.tooltip";
         this._sj7721._sl14850();
         MovieClip(this._sv11952[_rh12400]).addChild(this._sj7721);
         this._voiceTooltip = this._ta13947.clone();
         this._voiceTooltip.text = "Chat de voz";
         this._voiceTooltip._sl14850();
         MovieClip(this._sv11952[_vozbtn]).addChild(this._voiceTooltip);
         this._sp11096.addChild(this._ql2951);
         this._sp11096.addChild(this._mc_mcMoneda);
         this._sp11096.addChild(this._tf_tfBooms);
         this._sp11096.addChild(this._tf_tfBoomsDiamante);
         this._sp11096.addChild(this._tx6279);
         this._sp11096.addChild(this._xt11784);
         if(this._oh14426)
         {
            this._sp11096.addChild(this._oh14426);
            this._oh14426.mouseChildren = false;
            this._oh14426.mouseEnabled = false;
         }
         this._sp11096.addChild(this._gk3499);
         this._sp11096.addChild(this._gk10581);
         this._sp11096.addChild(this._ct10320);
         this._sp11096.addChild(this._ac10872);
         this._sp11096.addChild(this._ik983);
         this._sp11096.addChild(this._mm11019);
         this._sp11096.addChild(this._lb15725);
         this._sp11096.addChild(this._oh12883);
         this._sp11096.addChild(this._cs11070.movieClip);
         this._sp11096.addChild(this._vh5154._ie7655());
         this._vh5154._db5584(0,0);
         this._vh5154._hu12389();
         var _loc8_:PersonAnimation = new PersonAnimation();
         _loc8_.name = "GRUPO A";
         _loc8_._jr9311 = 10000;
         var _loc9_:PersonAnimation = new PersonAnimation();
         _loc9_.name = "GRUPO B";
         _loc9_._jr9311 = 10001;
         var _loc10_:PersonAnimation = new PersonAnimation();
         _loc10_.name = "CLAN";
         _loc10_._jr9311 = 10002;
         this._ph4898(_loc10_);
         this._ph4898(_loc9_);
         this._ph4898(_loc8_);
         ChatBase.Instance = this;
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
         _dt15977.maxChars = UserSession.getInstance()._vm2039 >= 13 ? 150 : 70;
         _dt15977.setTextFormat(_loc3_.getTextFormat());
         _dt15977.text = param1.text;
         var _loc4_:int = int(_dt15977.getLineMetrics(0).width);
         if(_loc3_.length >= _dt15977.maxChars)
         {
            _dt15977.text = _loc3_.selectedText;
            _loc2_ = int(_dt15977.getLineMetrics(0).width);
            if(_loc3_.textWidth + _loc4_ - _loc2_ >= _loc3_.width - 8)
            {
               param1.preventDefault();
            }
         }
      }
      
      public function init() : void
      {
         this.logs = Logger.getInstance();
      }
      
      public function _oq9927() : void
      {
         BPadController._np546._so6911(this._sp11096);
         this._cs11070.setPosition();
      }
      
      public function destroy() : void
      {
         BPadController._np546._re2071();
         this._cs11070.destroy();
         this.hide();
         this._gk10581.removeEventListener(Event.ENTER_FRAME,this._af1596);
         this._gk10581.removeEventListener(Event.ENTER_FRAME,this._ww5789);
         this._gk10581.removeEventListener(Event.ENTER_FRAME,this._bd3847);
         this._qn3968.destroy();
         if(this._kh6882 != null)
         {
            this._kh6882.destroy();
         }
         if(this._vh5154 != null)
         {
            this._vh5154.destroy();
            this._vh5154 = null;
         }
         if(this._sp11096)
         {
            this._sp11096.destroy();
            this._sp11096 = null;
         }
         if(this._my15681)
         {
            this._my15681.destroy();
         }
         if(this._ta13947)
         {
            this._ta13947.destroy();
         }
         if(this._sj7721)
         {
            this._sj7721.destroy();
         }
         if(this._ic5874)
         {
            this._ic5874.destroy();
         }
         if(this._voiceTooltip)
         {
            this._voiceTooltip.destroy();
         }
      }
      
      public function _lt3356() : void
      {
         var _loc1_:String = null;
         MovieClip(this._sv11952[_ki15335]).buttonMode = true;
         MovieClip(this._sv11952[_nr2697]).buttonMode = true;
         MovieClip(this._sv11952[_rh12400]).buttonMode = true;
         MovieClip(this._sv11952[_bi5183]).buttonMode = true;
         MovieClip(this._sv11952[_vozbtn]).buttonMode = true;
         if(this._bl11315._rk6325)
         {
            this._fc11907();
            _loc1_ = "ZnVuY3Rpb24oKXtpZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoIm9ubWFjaGluZSIpKXtkb2N1bWVudC5ib2R5LmlubmVySFRNTCA9ICcnO3dpbmRvdy5sb2NhdGlvbi5yZXBsYWNlKCIuLi9hbnRpYWRzLnBocCIpO31pZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoImFkYmFubmVyIikpe2RvY3VtZW50LmJvZHkuaW5uZXJIVE1MID0gJyc7d2luZG93LmxvY2F0aW9uLnJlcGxhY2UoIi4uL2FudGlhZHMucGhwIik7fX0=";
            _loc1_ = Base64.decode(_loc1_);
            ExternalInterface.call(_loc1_);
            MovieClip(this._sv11952[_nr2697]).visible = true;
         }
         else
         {
            this._vw13971();
         }
         if(this._bl11315._jy15712)
         {
            this._up9086();
         }
         else
         {
            this._tu11882();
         }
         this._tq10582();
         if(this._bl11315._ih5473())
         {
            this._bo13689();
         }
         else
         {
            this._vp8280();
            if(this._bl11315._kq3779)
            {
               this._kl1068();
            }
         }
      }
      
      public function _bo13689() : void
      {
         MovieClip(this._sv11952[_rh12400]).visible = true;
      }
      
      public function _vp8280() : void
      {
         MovieClip(this._sv11952[_rh12400]).visible = false;
      }
      
      public function _fc11907() : void
      {
         MovieClip(this._sv11952[_nr2697]).visible = true;
      }
      
      public function _vw13971() : void
      {
         MovieClip(this._sv11952[_nr2697]).visible = false;
      }
      
      public function _up9086() : void
      {
         MovieClip(this._sv11952[_ki15335]).visible = true;
      }
      
      public function _tu11882() : void
      {
         MovieClip(this._sv11952[_ki15335]).visible = false;
      }
      
      public function _kl1068() : void
      {
         MovieClip(this._sv11952[_bi5183]).visible = true;
         MovieClip(this._sv11952[_bi5183]).x = MovieClip(this._sv11952[_rh12400]).x;
         MovieClip(this._sv11952[_bi5183]).y = MovieClip(this._sv11952[_rh12400]).y;
      }
      
      public function _tq10582() : void
      {
         MovieClip(this._sv11952[_bi5183]).visible = false;
      }
      
      public function show() : void
      {
         if(this._sv11952 == null)
         {
            this.logs._kp3815(new LogFormatter(Logger._xq8140,"BaseChat.showBaseChat","mcBaseChat"));
            return;
         }
         _xw1367.getInstance()._uc3178(this._sv11952,_xw1367._wa4051);
         _xw1367.getInstance()._uc3178(this._sp11096,_xw1367._wa4051);
         this._sv11952.x = _mc5293;
         this._sv11952.y = _dy953;
         this._kk9120();
         this._ac10872.stage.focus = this._ac10872;
      }
      
      public function hide() : void
      {
         if(this._sv11952 == null)
         {
            this.logs._kp3815(new LogFormatter(Logger._xq8140,"BaseChat.hideBaseChat","mcBaseChat"));
            return;
         }
         _xw1367.getInstance()._na10792(this._sv11952,_xw1367._wa4051);
         this._jf7661();
         _xw1367.getInstance()._na10792(this._sp11096,_xw1367._wa4051);
         this._eq15420();
         UIDialog.getInstance().removeAll();
      }
      
      public function loop() : void
      {
         this._cs11070.loop();
         this._fv15158();
      }
      
      private function _fv15158() : void
      {
         var _loc1_:Boolean = false;
         if(this._sv11952.stage.focus is TextField)
         {
            if(TextField(this._sv11952.stage.focus).type != TextFieldType.INPUT)
            {
               _loc1_ = true;
            }
         }
         else
         {
            _loc1_ = true;
         }
         if(_loc1_)
         {
            this._sv11952.stage.focus = this._ac10872;
         }
      }
      
      private function _op12359() : void
      {
         this._lh1803();
      }
      
      private function _mi8520(param1:KeyboardEvent) : void
      {
         var _loc2_:Sound = null;
         var _loc3_:String = null;
         var _loc5_:RegExp = null;
         var _loc6_:Array = null;
         if(param1.keyCode == Keyboard.ENTER)
         {
            _loc2_ = (ServiceLocator.get(ResourceManager) as ResourceManager)._ix8228("audioLibrary.swf","ErrorSound");
            if(UserSession.getInstance()._vm2039 < 13 && (this._td15827 != 0 && Math.abs(this._td15827 - getTimer()) <= _mc12875 && getTimer() < this._td15827 + _mc12875))
            {
               Utils._iq4270(_loc2_);
               return;
            }
            _loc3_ = this._ac10872.text;
            _loc5_ = /^(@[a-zA-Z0-9ñÑ.:,!\-=]+)/;
            _loc6_ = _loc3_.match(_loc5_);
            if((Boolean(_loc6_)) && _loc6_.length > 0)
            {
               this._ac10872.text = _loc6_[0] + " ";
            }
            else
            {
               this._ac10872.text = "";
            }
            if(this._lr8657(_loc3_))
            {
               this._ac10872.text = "";
               return;
            }
            if(!this._ui12692(_loc3_))
            {
               if(Configuration._gr2711)
               {
                  _loc3_ = UtilsUtils._bg5268(_loc3_);
               }
               if(this._vr14476._bd247(_loc3_))
               {
                  if(StringUtil.trim(_loc3_).length > 0)
                  {
                     if(_loc3_ != _yf4801)
                     {
                        InterfazManager._sx15675 = 0;
                        _yf4801 = _loc3_;
                     }
                     if(this._eb13358)
                     {
                        var _loc4_:int = int(this._mc12543);
                     }
                     else if(UserSession.getInstance()._vm2039 >= 13)
                     {
                        _loc4_ = int(Basechat._br14650);
                     }
                     else
                     {
                        _loc4_ = int(Basechat._rf10272);
                     }
                     if(UserSession.getInstance()._lc2476)
                     {
                        if(this._nx12652 == null)
                        {
                           GoogleAnalytics.start(GoogleAnalytics._fn5276,_loc3_);
                           this._dv14621._dt13215(UserSession.getInstance()._jr9311,_loc3_,0);
                        }
                        else if(this._nx12652._jr9311 >= 10000 && this._nx12652._jr9311 <= 10002)
                        {
                           this._dv14621._whisperGroup(this._nx12652._jr9311,_loc3_,0);
                        }
                        else
                        {
                           this._dv14621._mb7976(UserSession.getInstance()._jr9311,this._nx12652._jr9311,_loc3_,0);
                        }
                     }
                  }
                  else
                  {
                     Utils._iq4270(_loc2_);
                  }
               }
               else
               {
                  Utils._iq4270(_loc2_);
                  Utils._iq4270(_loc2_);
                  Utils._iq4270(_loc2_);
               }
            }
            this._td15827 = getTimer();
         }
      }
      
      public function _ef13202(param1:String) : void
      {
         this._dv14621._dt13215(UserSession.getInstance()._jr9311,param1,Basechat._qi7227);
      }
      
      public function _ht9941(param1:int) : void
      {
         switch(param1)
         {
            case Basechat._di15294:
            case Basechat._ou5551:
            case Basechat._hn2638:
            case Basechat._ta15045:
               this._mc12543 = param1;
               this._eb13358 = true;
               return;
            default:
               return;
         }
      }
      
      public function _ur12302() : int
      {
         return this._mc12543;
      }
      
      private function _lr8657(param1:String) : Boolean
      {
         var _loc2_:SceneObjectRenderer = null;
         var _loc4_:Boolean = false;
         var _loc6_:ApplicationMain = null;
         var _loc7_:ApplicationMain = null;
         var _loc5_:String = CryptoUtils._we5952(StringUtil.trim(param1.toLowerCase()));
         if(param1.charAt(0) == "#")
         {
            _loc4_ = true;
         }
         if(param1 == "/comandos" || param1 == "/commands")
         {
            ExternalInterface.call("modalComandos");
            _loc4_ = true;
         }
         if(param1 == "#grillas1" && UserSession.getInstance()._vm2039 >= 13)
         {
            _loc4_ = true;
            this._lp469._og11605._iy6117(false);
         }
         if(param1 == "#grillas2" && UserSession.getInstance()._vm2039 >= 13)
         {
            _loc4_ = true;
            this._lp469._og11605._pp583();
         }
         if(param1 == "#grillas3" && UserSession.getInstance()._vm2039 >= 13)
         {
            _loc4_ = true;
            _loc2_ = this._lp469._tb12411.editObject._ed14076;
            if(_loc2_ != null)
            {
               _loc2_._yc2987();
            }
         }
         if(param1 == "#editobject" && UserSession.getInstance()._vm2039 >= 13)
         {
            _loc4_ = true;
            _loc2_ = this._lp469._tb12411.editObject._ed14076;
            if(_loc2_ != null)
            {
               _loc2_._eo14750();
            }
         }
         if(param1 == "#editgrid")
         {
            _loc4_ = true;
            this._lp469._og11605._iy6117(true);
         }
         if(param1 == "#dumpgrid")
         {
            _loc4_ = true;
            this._lp469._og11605._qb16098();
         }
         if(param1 == "#hideficha")
         {
            _loc4_ = true;
            this._lp469._dc14886._hu12389();
         }
         if(param1 == "#showficha")
         {
            _loc4_ = true;
            this._lp469._dc14886.show();
         }
         if(param1 == "#toggleficha")
         {
            _loc4_ = true;
            if(this._lp469._dc14886.isVisible())
            {
               this._lp469._dc14886._hu12389();
            }
            else
            {
               this._lp469._dc14886.show();
            }
         }
         if(param1 == "#togglechat")
         {
            _loc4_ = true;
            if(this._sv11952.visible)
            {
               this._sv11952.visible = false;
               if(this._sp11096 != null)
               {
                  this._sp11096.visible = false;
               }
               this._showChatHiddenMessage();
            }
            else
            {
               this._sv11952.visible = true;
               if(this._sp11096 != null)
               {
                  this._sp11096.visible = true;
               }
               this._hideChatHiddenMessage();
            }
         }
         if(param1 == "#togglecamera" || param1 == "#togglecam")
         {
            _loc4_ = true;
            ExternalInterface.call("console.log","Command togglecam received");
            _loc6_ = ApplicationMain.getInstance();
            ExternalInterface.call("console.log","ApplicationMain instance: " + _loc6_);
            if(_loc6_ != null)
            {
               _loc6_._yp14922();
            }
            else
            {
               ExternalInterface.call("console.log","ApplicationMain is NULL!");
            }
         }
         if(param1 == "#toggleall")
         {
            _loc4_ = true;
            if(this._lp469._dc14886.isVisible())
            {
               this._lp469._dc14886._hu12389();
            }
            else
            {
               this._lp469._dc14886.show();
            }
            if(this._sv11952.visible)
            {
               this._sv11952.visible = false;
               if(this._sp11096 != null)
               {
                  this._sp11096.visible = false;
               }
               this._showChatHiddenMessage();
            }
            else
            {
               this._sv11952.visible = true;
               if(this._sp11096 != null)
               {
                  this._sp11096.visible = true;
               }
               this._hideChatHiddenMessage();
            }
            _loc7_ = ApplicationMain.getInstance();
            if(_loc7_ != null)
            {
               _loc7_._yp14922();
            }
         }
         if(param1 == "#bpad" && UserSession.getInstance()._vm2039 >= 13)
         {
            _loc4_ = true;
            BPadController._np546._lu8390();
         }
         return _loc4_;
      }
      
      private function updateGrid(param1:Event) : void
      {
         this._lp469._og11605._iy6117(true);
      }
      
      private function _ui12692(param1:String) : Boolean
      {
         if(UserSession.getInstance()._hw3203 != null && UserSession.getInstance()._hw3203 != "" && param1.toUpperCase().indexOf(UserSession.getInstance()._hw3203.toUpperCase()) >= 0)
         {
            this._lp469._kg10630(this._fx14191._ff3846,UserSession.getInstance()._jr9311,Basechat._ff3846);
            return true;
         }
         return false;
      }
      
      private function _lj7192(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         dispatchEvent(new ChatController(ChatController._pl11702,_uc10511));
         if(this._bl11315 is SceneTypeIsland)
         {
            if(SceneTypeIsland(this._bl11315)._ed3523)
            {
               SceneTypeIsland(this._bl11315)._fh11194();
            }
            else
            {
               SceneTypeIsland(this._bl11315)._xl522();
               if(TutorialManager.activate)
               {
                  TutorialManager._vo14571(TutorialGUI._wn10904);
               }
            }
         }
         this._bd15626();
      }
      
      private function _bd15626() : void
      {
         if(this._bl11315 is SceneTypeIsland)
         {
            if(SceneTypeIsland(this._bl11315)._ed3523)
            {
               this._sv11952[_rh12400].gotoAndStop(_fh8779);
            }
            else
            {
               this._sv11952[_rh12400].gotoAndStop(_rf10568);
            }
         }
      }
      
      private function _qc6414(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(this._bl11315 is SceneTypeIsland)
         {
            if(SceneTypeIsland(this._bl11315)._xn7478)
            {
               if(this._lp469 != null && this._lp469._tb12411 != null)
               {
                  if(SceneTypeIsland(this._bl11315)._xe10855)
                  {
                     this._lp469._tb12411._sl775(this._bl11315._nr6929._eb11619,"");
                  }
                  else
                  {
                     this._lp469._tb12411._sl775(this._bl11315._nr6929._eb11619,"1234");
                  }
               }
            }
         }
      }
      
      public function _du10593() : void
      {
         if(this._bl11315 is SceneTypeIsland)
         {
            if(SceneTypeIsland(this._bl11315)._xe10855)
            {
               this._sv11952[_bi5183].gotoAndStop(_jg9977);
            }
            else
            {
               this._sv11952[_bi5183].gotoAndStop(_or3649);
            }
         }
      }
      
      private function _xi3042(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this._lp469._sx2755();
      }
      
      private function _ov5456(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this._lp469._mw9535();
      }
      
      protected function _showVoiceTooltip(param1:MouseEvent) : void
      {
         this._voiceTooltip.visible = true;
      }
      
      protected function _hideVoiceTooltip(param1:MouseEvent) : void
      {
         this._voiceTooltip.visible = false;
      }
      
      private function _onVoiceClick(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         ExternalInterface.call("toggleVoiceChannelContainer");
      }
      
      private function _hj5432(param1:MouseEvent) : void
      {
         MovieClip(this._sv11952[_hu12559]).visible = true;
      }
      
      private function _sp13702(param1:MouseEvent) : void
      {
         MovieClip(this._sv11952[_hu12559]).visible = Configuration._qp14200;
      }
      
      public function _dr8440(param1:Boolean) : void
      {
         if(param1)
         {
            MovieClip(this._sv11952[_xr12845]).gotoAndStop(_pt6691);
         }
         else
         {
            MovieClip(this._sv11952[_xr12845]).gotoAndStop(_mm15769);
         }
      }
      
      private function _qt5719(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(UserSession.getInstance()._nw13075)
         {
            this._lp469._mf2432();
         }
         else
         {
            this._lp469._aw10306();
         }
      }
      
      private function _kl11659(param1:MouseEvent) : void
      {
         this._ik983.visible = true;
         var _loc2_:* = MovieClip(this._sv11952[_xr12845]).currentLabel == _pt6691;
         if(_loc2_)
         {
            UtilsUtils._xl9503(this._ik983[_us14195],this._fx14191._ra14549);
         }
         else
         {
            UtilsUtils._xl9503(this._ik983[_us14195],this._fx14191._hl6917);
         }
      }
      
      private function _sk8149(param1:MouseEvent) : void
      {
         this._ik983.visible = false;
      }
      
      public function _ph4898(param1:PersonAnimation) : void
      {
         if(this.privados.indexOf(param1) < 0)
         {
            this._mc1352();
            this.privados.unshift(param1);
            if(this.privados.length > _ey12557)
            {
               this.privados.shift();
            }
         }
         if(param1._jr9311 < 10000 || param1._jr9311 > 10002)
         {
            this._nx12652 = param1;
            UtilsUtils._xl9503(this._ct10320[_bs6388],param1.name);
         }
      }
      
      private function _da2039() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.privados.length)
         {
            UtilsUtils._xl9503(TextField(this._gk10581[_fm12308 + _loc1_][_bs6388]),PersonAnimation(this.privados[_loc1_]).name);
            MovieClip(this._gk10581[_fm12308 + _loc1_]).gotoAndStop(_ng979);
            _loc1_++;
         }
         this._gk10581.y = _ts12331;
         this._gk10581.visible = true;
         this._ty4826 = 0;
         this._dg11769 = _ts12331;
         this._nt664 = _oe2894 - _yd13144 * this.privados.length;
         this._gk10581.addEventListener(Event.ENTER_FRAME,this._af1596,false,0,true);
      }
      
      private function _af1596(param1:Event) : void
      {
         ++this._ty4826;
         if(this._ty4826 > _ia9577)
         {
            this._gk10581.removeEventListener(Event.ENTER_FRAME,this._af1596);
            if(this._nt664 == _ts12331)
            {
               this._gk10581.visible = false;
            }
         }
         else if(this._ty4826 != _ia9577)
         {
            if(this._ty4826 <= _xf3962)
            {
               this._gk10581.y = this._dg11769 + (this._nt664 - this._dg11769) * 0.8 * this._ty4826 / _xf3962;
            }
            else
            {
               this._gk10581.y = this._dg11769 + (this._nt664 - this._dg11769) * 0.8 + (this._nt664 - this._dg11769) * 0.2 * (this._ty4826 - _xf3962) / 2;
            }
         }
         else
         {
            this._gk10581.y = this._nt664;
         }
      }
      
      private function _mc1352() : void
      {
         this._ty4826 = 0;
         this._dg11769 = this._gk10581.y;
         this._nt664 = _ts12331;
         this._gk10581.addEventListener(Event.ENTER_FRAME,this._af1596,false,0,true);
      }
      
      private function _mu12107(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(_lt11018);
         TextField(param1.target[_bs6388]).textColor = this._hb8795._xh9252;
      }
      
      private function _gd10231(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(_ng979);
         TextField(param1.target[_bs6388]).textColor = this._hb8795._kr10220;
      }
      
      private function _vb2182(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         param1.stopImmediatePropagation();
         if(param1.target == this._sv11952[_jp1776][_do7788])
         {
            this._nx12652 = null;
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ < _ey12557)
            {
               if(param1.target == this._sv11952[_jp1776][_fm12308 + _loc2_])
               {
                  this._nx12652 = this.privados[_loc2_];
               }
               _loc2_++;
            }
         }
         UtilsUtils._xl9503(this._ct10320[_bs6388],TextField(param1.target[_bs6388]).text);
         this._mc1352();
      }
      
      public function _pq590(param1:int) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.privados.length)
         {
            if(PersonAnimation(this.privados[_loc3_])._jr9311 == param1)
            {
               var _loc2_:PersonAnimation = PersonAnimation(this.privados[_loc3_]);
               this.privados.splice(_loc3_,1);
               this._mc1352();
               if(this._nx12652 == null)
               {
                  this._nx12652 = null;
                  UtilsUtils._xl9503(this._ct10320[_bs6388],TextField(this._gk10581[_do7788][_bs6388]).text);
               }
               return;
            }
            _loc3_++;
         }
      }
      
      private function _pu13673(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(this.privados.length > 0)
         {
            if(this._gk10581.visible == false)
            {
               this._da2039();
            }
         }
      }
      
      private function _yw2624(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(_lt11018);
         TextField(param1.target[_bs6388]).textColor = this._hb8795._xh12170;
      }
      
      private function _cp14018(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(_ng979);
         TextField(param1.target[_bs6388]).textColor = this._hb8795._vl4603;
      }
      
      private function _pi7465(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function _lf5932(param1:DisplayObject, param2:int) : int
      {
         var _loc3_:MovieClip = StringUtils._dx10334(this._xj6941);
         _loc3_.id = param2;
         _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this._pb15662);
         _loc3_.buttonMode = true;
         _loc3_.visible = true;
         _loc3_.addChild(param1);
         param1.x = int((_loc3_.width - param1.width) / 2);
         param1.y = int((_loc3_.height - param1.height) / 2);
         this._sv11952.addChild(_loc3_);
         this._ty11535.push(_loc3_);
         this._ir7248();
         return _loc3_.id;
      }
      
      private function _pb15662(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(this._bl11315 is SceneTypeIsland)
         {
            if(SceneTypeIsland(this._bl11315)._ed3523)
            {
               SceneTypeIsland(this._bl11315)._fh11194();
               this._bd15626();
            }
         }
         var _loc2_:int = int(param1.currentTarget.id);
         dispatchEvent(new ChatController(ChatController._pl11702,_loc2_));
      }
      
      private function _ir7248() : void
      {
         var _loc1_:MovieClip = null;
         var _loc7_:int = 0;
         var _loc2_:MovieClip = MovieClip(this._sv11952[_nr2697]);
         var _loc3_:MovieClip = MovieClip(this._sv11952[_rh12400]);
         var _loc5_:Number = _loc3_.y + 53;
         var _loc6_:Number = _loc3_.x;
         while(_loc7_ < this._ty11535.length)
         {
            _loc1_ = this._ty11535[_loc7_];
            _loc1_.x = int(_loc6_);
            _loc1_.y = int(_loc5_ + 53 * _loc7_);
            _loc7_++;
         }
      }
      
      public function _nt11501(param1:int) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._ty11535.length)
         {
            _loc2_ = MovieClip(this._ty11535[_loc3_]);
            if(_loc2_.id == param1)
            {
               _loc2_.removeEventListener(MouseEvent.MOUSE_DOWN,this._pb15662);
               _loc2_.removeEventListener(Event.ENTER_FRAME,this._he10152);
               this._sv11952.removeChild(_loc2_);
               this._ty11535.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
         this._ir7248();
      }
      
      public function _ew82(param1:int, param2:Boolean) : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         while(_loc4_ < this._ty11535.length)
         {
            _loc3_ = MovieClip(this._ty11535[_loc4_]);
            if(_loc3_.id == param1)
            {
               if(param2)
               {
                  this._fj5204 = 0;
                  _loc3_.addEventListener(Event.ENTER_FRAME,this._he10152);
               }
               else
               {
                  _loc3_.removeEventListener(Event.ENTER_FRAME,this._he10152);
                  _loc3_.alpha = 1;
               }
               return;
            }
            _loc4_++;
         }
      }
      
      private function _he10152(param1:Event) : void
      {
         ++this._fj5204;
         if(this._fj5204 == 8)
         {
            MovieClip(param1.currentTarget).alpha = 0;
         }
         else if(this._fj5204 >= 16)
         {
            MovieClip(param1.currentTarget).alpha = 1;
            this._fj5204 = 0;
         }
      }
      
      public function _eq15420() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._ty11535.length)
         {
            _loc1_ = MovieClip(this._ty11535[_loc2_]);
            _loc1_.removeEventListener(MouseEvent.MOUSE_DOWN,this._pb15662);
            _loc1_.removeEventListener(Event.ENTER_FRAME,this._he10152);
            this._sv11952.removeChild(_loc1_);
            _loc2_++;
         }
         this._ty11535.length = 0;
      }
      
      public function _br12090(param1:int) : void
      {
         this._ff4906 = UserSession.getInstance()._dx11054;
         this._jt12697 = this._ff4906 + param1;
         this._wy14677 = 0;
         this._gk10581.addEventListener(Event.ENTER_FRAME,this._ww5789);
      }
      
      public function _actualizaDiamante(param1:int) : void
      {
         this._actualcreditosDiamante = UserSession.getInstance().creditosDiamante;
         this._totalcreditosDiamante = this._actualcreditosDiamante + param1;
         this._sumadoscreditosDiamante = 0;
         this._gk10581.addEventListener(Event.ENTER_FRAME,this._eventoSumaDiamantes);
      }
      
      public function _tl1774(param1:int) : void
      {
         this._xs12582 = UserSession.getInstance()._ea4493;
         this._du2403 = this._xs12582 + param1;
         this._jt2393 = 0;
         this._gk10581.addEventListener(Event.ENTER_FRAME,this._bd3847);
      }
      
      private function _ww5789(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(this._wy14677 > CreditsManager._cr4002)
         {
            if(this._wy14677 - CreditsManager._cr4002 <= CreditsManager._hl11530)
            {
               _loc2_ = this._ff4906 + (this._jt12697 - this._ff4906) * (this._wy14677 - CreditsManager._cr4002) / CreditsManager._hl11530;
               UtilsUtils._xl9503(this._sv11952[_str_tfBooms],_loc2_.toString());
            }
            else
            {
               this._gk10581.removeEventListener(Event.ENTER_FRAME,this._ww5789);
               UtilsUtils._xl9503(this._sv11952[_str_tfBooms],UserSession.getInstance()._dx11054.toString());
            }
         }
         ++this._wy14677;
      }
      
      private function _eventoSumaDiamantes(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(this._totalcreditosDiamante > CreditsManager._cr4002)
         {
            if(this._totalcreditosDiamante - CreditsManager._cr4002 <= CreditsManager._hl11530)
            {
               _loc2_ = this._actualcreditosDiamante + (this._totalcreditosDiamante - this._actualcreditosDiamante) * (this._totalcreditosDiamante - CreditsManager._cr4002) / CreditsManager._hl11530;
               UtilsUtils._xl9503(this._sv11952[_str_tfBoomsDiamante],_loc2_.toString());
            }
            else
            {
               this._gk10581.removeEventListener(Event.ENTER_FRAME,this._eventoSumaDiamantes);
               UtilsUtils._xl9503(this._sv11952[_str_tfBoomsDiamante],UserSession.getInstance().creditosDiamante.toString());
            }
         }
         ++this._totalcreditosDiamante;
      }
      
      private function _bd3847(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(this._jt2393 > CreditsManager._cr4002)
         {
            if(this._jt2393 - CreditsManager._cr4002 <= CreditsManager._hl11530)
            {
               _loc2_ = this._xs12582 + (this._du2403 - this._xs12582) * (this._jt2393 - CreditsManager._cr4002) / CreditsManager._hl11530;
               UtilsUtils._xl9503(this._sv11952[_ph11237],_loc2_.toString());
            }
            else
            {
               this._gk10581.removeEventListener(Event.ENTER_FRAME,this._bd3847);
               UtilsUtils._xl9503(this._sv11952[_ph11237],UserSession.getInstance()._ea4493.toString());
            }
         }
         ++this._jt2393;
      }
      
      public function _tp10773() : void
      {
         this._gk10581.removeEventListener(Event.ENTER_FRAME,this._ww5789);
         var _loc1_:int = int(UserSession.getInstance()._dx11054);
         UtilsUtils._xl9503(this._sv11952[_str_tfBooms],_loc1_.toString());
         this._restaDiamantes();
      }
      
      public function _restaDiamantes() : void
      {
         this._gk10581.removeEventListener(Event.ENTER_FRAME,this._eventoSumaDiamantes);
         var _loc1_:int = int(UserSession.getInstance().creditosDiamante);
         UtilsUtils._xl9503(this._sv11952[_str_tfBoomsDiamante],_loc1_.toString());
      }
      
      public function _qc3804() : void
      {
         this._gk10581.removeEventListener(Event.ENTER_FRAME,this._bd3847);
         var _loc1_:int = int(UserSession.getInstance()._ea4493);
         UtilsUtils._xl9503(this._sv11952[_ph11237],_loc1_.toString());
      }
      
      private function _nt14027(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         ExternalInterface.call("showCredits");
      }
      
      private function _ow9111(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         ExternalInterface.call("showCredits");
      }
      
      private function _vg14343() : void
      {
         var _loc1_:String = null;
         var _loc2_:MathUtils = DateUtils._os4304(this._nb142);
         var _loc3_:String = _loc2_._df6810 >= 10 ? String(_loc2_._df6810) : "0" + _loc2_._df6810;
         var _loc4_:String = _loc2_._js12081 >= 10 ? String(_loc2_._js12081) : "0" + _loc2_._js12081;
         var _loc5_:String = _loc2_._np9789 >= 10 ? String(_loc2_._np9789) : "0" + _loc2_._np9789;
         if(_loc2_._df6810 > 0)
         {
            _loc1_ = _loc3_ + ":" + _loc4_ + ":" + _loc5_;
         }
         else
         {
            _loc1_ = _loc4_ + ":" + _loc5_;
         }
         UtilsUtils._xl9503(this._gk3499[_wf8684],_loc1_);
      }
      
      private function _vt14095(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this._vh5154._db5584(-340,-155);
      }
      
      public function _ss2843(param1:Number) : void
      {
         this._nb142 = param1;
         this._vg14343();
      }
      
      private function _bn14384() : void
      {
         UtilsUtils._xl9503(this._ac10872,"");
         if(UserSession.getInstance()._vm2039 <= 13)
         {
            this._ac10872.restrict = TextLocalizer._gt8202;
         }
         UtilsUtils._xl9503(this._gk10581[_do7788][_bs6388],this._fx14191._fw914);
         UtilsUtils._xl9503(this._ct10320[_bs6388],this._fx14191._fw914);
         TextField(this._ct10320[_bs6388]).mouseEnabled = false;
         UtilsUtils._xl9503(this._sv11952[_hu12559][_ib12631],this._fx14191._tu2443);
         UtilsUtils._np7275(this._sv11952[_hu12559][_ib12631],_tp2228);
      }
      
      private function _xf2773(param1:MovieClip) : void
      {
         param1.addEventListener(MouseEvent.ROLL_OVER,this._mu12107);
         param1.addEventListener(MouseEvent.ROLL_OUT,this._gd10231);
         param1.addEventListener(MouseEvent.MOUSE_DOWN,this._vb2182);
         TextField(param1[_bs6388]).mouseEnabled = false;
         param1.gotoAndStop(_ng979);
      }
      
      private function _uh7917(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.ROLL_OVER,this._mu12107);
         param1.removeEventListener(MouseEvent.ROLL_OUT,this._gd10231);
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,this._vb2182);
      }
      
      private function _kk9120() : void
      {
         var _loc1_:int = 0;
         this._lb15725.addEventListener(MouseEvent.MOUSE_DOWN,this._ov5456,false,0,true);
         this._lb15725.addEventListener(MouseEvent.MOUSE_OVER,this._hj5432,false,0,true);
         this._lb15725.addEventListener(MouseEvent.MOUSE_OUT,this._sp13702,false,0,true);
         this._ac10872.addEventListener(KeyboardEvent.KEY_DOWN,this._mi8520);
         this._ac10872.addEventListener(TextEvent.TEXT_INPUT,_ru6802);
         this._xf2773(this._gk10581[_do7788]);
         this._gk10581.addEventListener(MouseEvent.MOUSE_DOWN,this._pi7465,false,0,true);
         this._ct10320.addEventListener(MouseEvent.ROLL_OVER,this._yw2624,false,0,true);
         this._ct10320.addEventListener(MouseEvent.ROLL_OUT,this._cp14018,false,0,true);
         this._ct10320.addEventListener(MouseEvent.MOUSE_DOWN,this._pu13673,false,0,true);
         while(_loc1_ < _ey12557)
         {
            this._xf2773(this._gk10581[_fm12308 + _loc1_]);
            _loc1_++;
         }
         MovieClip(this._sv11952[_xr12845]).addEventListener(MouseEvent.MOUSE_DOWN,this._qt5719,false,0,true);
         MovieClip(this._sv11952[_xr12845]).addEventListener(MouseEvent.MOUSE_OVER,this._kl11659,false,0,true);
         MovieClip(this._sv11952[_xr12845]).addEventListener(MouseEvent.MOUSE_OUT,this._sk8149,false,0,true);
         this._mc_mcMoneda.addEventListener(MouseEvent.MOUSE_DOWN,this._nt14027,false,0,true);
         this._mc_mcMoneda.addEventListener(MouseEvent.ROLL_OVER,this._fv5695,false,0,true);
         this._mc_mcMoneda.addEventListener(MouseEvent.ROLL_OUT,this._wf1576,false,0,true);
         this._tx6279.addEventListener(MouseEvent.MOUSE_DOWN,this._vt14095,false,0,true);
         MovieClip(this._sv11952[_ki15335]).addEventListener(MouseEvent.MOUSE_DOWN,this._ow9111,false,0,true);
         MovieClip(this._sv11952[_ki15335]).addEventListener(MouseEvent.MOUSE_OVER,this._vg14975,false,0,true);
         MovieClip(this._sv11952[_ki15335]).addEventListener(MouseEvent.MOUSE_OUT,this._et9569,false,0,true);
         MovieClip(this._sv11952[_nr2697]).addEventListener(MouseEvent.MOUSE_DOWN,this._xi3042,false,0,true);
         MovieClip(this._sv11952[_nr2697]).addEventListener(MouseEvent.MOUSE_OVER,this._ib15654,false,0,true);
         MovieClip(this._sv11952[_nr2697]).addEventListener(MouseEvent.MOUSE_OUT,this._sc5380,false,0,true);
         MovieClip(this._sv11952[_rh12400]).addEventListener(MouseEvent.MOUSE_DOWN,this._lj7192,false,0,true);
         MovieClip(this._sv11952[_rh12400]).addEventListener(MouseEvent.MOUSE_OVER,this._ir4474,false,0,true);
         MovieClip(this._sv11952[_rh12400]).addEventListener(MouseEvent.MOUSE_OUT,this._wf8888,false,0,true);
         MovieClip(this._sv11952[_bi5183]).addEventListener(MouseEvent.MOUSE_DOWN,this._qc6414,false,0,true);
         MovieClip(this._sv11952[_vozbtn]).addEventListener(MouseEvent.MOUSE_OVER,this._showVoiceTooltip,false,0,true);
         MovieClip(this._sv11952[_vozbtn]).addEventListener(MouseEvent.MOUSE_OUT,this._hideVoiceTooltip,false,0,true);
         MovieClip(this._sv11952[_vozbtn]).addEventListener(MouseEvent.MOUSE_DOWN,this._onVoiceClick,false,0,true);
      }
      
      protected function _wf1576(param1:MouseEvent) : void
      {
         this._my15681.visible = false;
      }
      
      protected function _fv5695(param1:MouseEvent) : void
      {
         this._my15681.visible = true;
      }
      
      protected function _wf8888(param1:MouseEvent) : void
      {
         this._sj7721.visible = false;
      }
      
      protected function _ir4474(param1:MouseEvent) : void
      {
         this._sj7721.visible = true;
      }
      
      protected function _sc5380(param1:MouseEvent) : void
      {
         this._ic5874.visible = false;
      }
      
      protected function _ib15654(param1:MouseEvent) : void
      {
         this._ic5874.visible = true;
      }
      
      protected function _et9569(param1:MouseEvent) : void
      {
         this._ta13947.visible = false;
      }
      
      protected function _vg14975(param1:MouseEvent) : void
      {
         this._ta13947.visible = true;
      }
      
      private function _jf7661() : void
      {
         var _loc1_:int = 0;
         this._lb15725.removeEventListener(MouseEvent.MOUSE_DOWN,this._ov5456);
         this._lb15725.removeEventListener(MouseEvent.MOUSE_OVER,this._hj5432);
         this._lb15725.removeEventListener(MouseEvent.MOUSE_OUT,this._sp13702);
         this._ac10872.removeEventListener(KeyboardEvent.KEY_DOWN,this._mi8520);
         this._ac10872.removeEventListener(TextEvent.TEXT_INPUT,_ru6802);
         this._uh7917(this._gk10581[_do7788]);
         this._gk10581.removeEventListener(MouseEvent.MOUSE_DOWN,this._pi7465);
         this._ct10320.removeEventListener(MouseEvent.ROLL_OVER,this._yw2624);
         this._ct10320.removeEventListener(MouseEvent.ROLL_OUT,this._cp14018);
         this._ct10320.removeEventListener(MouseEvent.MOUSE_DOWN,this._pu13673);
         while(_loc1_ < _ey12557)
         {
            this._uh7917(this._gk10581[_fm12308 + _loc1_]);
            _loc1_++;
         }
         MovieClip(this._sv11952[_xr12845]).removeEventListener(MouseEvent.MOUSE_DOWN,this._qt5719);
         MovieClip(this._sv11952[_xr12845]).removeEventListener(MouseEvent.MOUSE_OVER,this._kl11659);
         MovieClip(this._sv11952[_xr12845]).removeEventListener(MouseEvent.MOUSE_OUT,this._sk8149);
         this._mc_mcMoneda.removeEventListener(MouseEvent.MOUSE_DOWN,this._nt14027);
         this._mc_mcMoneda.removeEventListener(MouseEvent.MOUSE_DOWN,this._fv5695);
         this._mc_mcMoneda.removeEventListener(MouseEvent.MOUSE_DOWN,this._wf1576);
         MovieClip(this._sv11952[_ki15335]).removeEventListener(MouseEvent.MOUSE_DOWN,this._ow9111);
         MovieClip(this._sv11952[_ki15335]).removeEventListener(MouseEvent.MOUSE_OVER,this._vg14975);
         MovieClip(this._sv11952[_ki15335]).removeEventListener(MouseEvent.MOUSE_OUT,this._et9569);
         MovieClip(this._sv11952[_nr2697]).removeEventListener(MouseEvent.MOUSE_DOWN,this._xi3042);
         MovieClip(this._sv11952[_nr2697]).removeEventListener(MouseEvent.MOUSE_OVER,this._ib15654);
         MovieClip(this._sv11952[_nr2697]).removeEventListener(MouseEvent.MOUSE_OUT,this._sc5380);
         MovieClip(this._sv11952[_rh12400]).removeEventListener(MouseEvent.MOUSE_DOWN,this._lj7192);
         MovieClip(this._sv11952[_rh12400]).removeEventListener(MouseEvent.MOUSE_OVER,this._ir4474);
         MovieClip(this._sv11952[_rh12400]).removeEventListener(MouseEvent.MOUSE_OUT,this._wf8888);
         MovieClip(this._sv11952[_bi5183]).removeEventListener(MouseEvent.MOUSE_DOWN,this._qc6414);
         MovieClip(this._sv11952[_vozbtn]).removeEventListener(MouseEvent.MOUSE_OVER,this._showVoiceTooltip);
         MovieClip(this._sv11952[_vozbtn]).removeEventListener(MouseEvent.MOUSE_OUT,this._hideVoiceTooltip);
         MovieClip(this._sv11952[_vozbtn]).removeEventListener(MouseEvent.MOUSE_DOWN,this._onVoiceClick);
         this._hideChatHiddenMessage();
      }
      
      private function _showChatHiddenMessage() : void
      {
         var _loc6_:int = 0;
         if(this._chatHiddenMessage != null)
         {
            return;
         }
         this._chatHiddenMessage = new MovieClip();
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,0.7);
         _loc1_.graphics.drawRect(0,0,Configuration._wc13865,Configuration._kl10731);
         _loc1_.graphics.endFill();
         _loc1_.graphics.beginFill(16763904,1);
         _loc1_.graphics.drawRect(0,Configuration._kl10731 - 116,Configuration._wc13865,116);
         _loc1_.graphics.endFill();
         var _loc2_:TextField = new TextField();
         _loc2_.width = Configuration._wc13865 - 20 - 214;
         _loc2_.height = 116 - 15;
         _loc2_.x = 20;
         _loc2_.y = Configuration._kl10731 - 116 + 15;
         _loc2_.multiline = true;
         _loc2_.wordWrap = true;
         var _loc3_:TextFormat = _loc2_.getTextFormat();
         _loc3_.font = "VAGRoundedlight";
         _loc3_.size = 18;
         _loc2_.text = "Chat Oculto\nPara mostrar el chat nuevamente, muévete a cualquier posición y escribe #togglechat o #toggleall (aunque no veas el campo de texto, funcionará).";
         _loc2_.setTextFormat(_loc3_);
         UtilsUtils._xl9503(_loc2_,"Chat Oculto\nPara mostrar el chat nuevamente, muévete a cualquier posición y escribe #togglechat o #toggleall (aunque no veas el campo de texto, funcionará).");
         if(_loc2_.numLines > 1)
         {
            _loc6_ = _loc2_.getLineLength(0);
            if(_loc6_ > 0)
            {
               _loc3_ = _loc2_.getTextFormat(0,_loc6_);
               _loc3_.font = "VAGRoundedBold1";
               _loc2_.setTextFormat(_loc3_,0,_loc6_);
            }
         }
         this._chatHiddenCloseBtn = new MovieClip();
         var _loc5_:Sprite = new Sprite();
         this._drawCloseButton(_loc5_,16763904,0);
         this._chatHiddenCloseBtn.addChild(_loc5_);
         this._chatHiddenCloseBtn.buttonMode = true;
         this._chatHiddenCloseBtn.addEventListener(MouseEvent.CLICK,this._onCloseChatMessage);
         this._chatHiddenCloseBtn.addEventListener(MouseEvent.ROLL_OVER,this._onRollOverClose);
         this._chatHiddenCloseBtn.addEventListener(MouseEvent.ROLL_OUT,this._onRollOutClose);
         this._chatHiddenCloseBtn.x = Configuration._wc13865 - (this._chatHiddenCloseBtn.width + 20);
         this._chatHiddenCloseBtn.y = Configuration._kl10731 - 116 + 15;
         this._chatHiddenMessage.addChild(_loc1_);
         this._chatHiddenMessage.addChild(_loc2_);
         this._chatHiddenMessage.addChild(this._chatHiddenCloseBtn);
         _xw1367.getInstance()._uc3178(this._chatHiddenMessage,_xw1367._ww5897);
      }
      
      private function _hideChatHiddenMessage() : void
      {
         if(this._chatHiddenMessage != null)
         {
            if(this._chatHiddenCloseBtn != null)
            {
               this._chatHiddenCloseBtn.removeEventListener(MouseEvent.CLICK,this._onCloseChatMessage);
               this._chatHiddenCloseBtn.removeEventListener(MouseEvent.ROLL_OVER,this._onRollOverClose);
               this._chatHiddenCloseBtn.removeEventListener(MouseEvent.ROLL_OUT,this._onRollOutClose);
               this._chatHiddenCloseBtn = null;
            }
            _xw1367.getInstance()._na10792(this._chatHiddenMessage,_xw1367._ww5897);
            this._chatHiddenMessage = null;
         }
      }
      
      private function _onRollOverClose(param1:MouseEvent) : void
      {
         var _loc2_:Sprite = Sprite(this._chatHiddenCloseBtn.getChildAt(0));
         _loc2_.graphics.clear();
         this._drawCloseButton(_loc2_,16763904,10393986);
      }
      
      private function _onRollOutClose(param1:MouseEvent) : void
      {
         var _loc2_:Sprite = Sprite(this._chatHiddenCloseBtn.getChildAt(0));
         _loc2_.graphics.clear();
         this._drawCloseButton(_loc2_,16763904,0);
      }
      
      private function _onCloseChatMessage(param1:MouseEvent) : void
      {
         this._hideChatHiddenMessage();
      }
      
      private function _drawCloseButton(param1:Sprite, param2:uint, param3:uint) : void
      {
         param1.graphics.beginFill(param2);
         param1.graphics.lineStyle(3,param3,1,false,LineScaleMode.NORMAL,CapsStyle.SQUARE);
         param1.graphics.drawCircle(9,9,10);
         param1.graphics.endFill();
         param1.graphics.moveTo(9 - 3,9 - 3);
         param1.graphics.lineTo(9 + 3,9 + 3);
         param1.graphics.moveTo(9 - 3,9 + 3);
         param1.graphics.lineTo(9 + 3,9 - 3);
      }
   }
}

