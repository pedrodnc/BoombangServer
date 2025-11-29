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
      
      public static var urlString:String;
      
      private static const urlString1:String = "mcBarraChat";
      
      private static const urlString2:String = "mcBotonExit";
      
      private static const urlString3:String = "mcBotonMochila";
      
      private static const urlString4:String = "mcMarikita";
      
      private static const urlString5:String = "mcChatPrivado";
      
      private static const urlString6:String = "mcBotonElegirPrivado";
      
      private static const urlString7:String = "mcCompraCreditos";
      
      private static const urlString8:String = "mcCompraObjetos";
      
      private static const urlString9:String = "mcEditObject";
      
      private static const urlString10:String = "mcCandado";
      
      private static const urlString11:String = "mcHabilitarIntercambios";
      
      private static const textString1:String = "tfTexto";
      
      private static const urlString13:String = "mcBotonPrivadoPublico";
      
      private static const urlString14:String = "mcBotonPrivado";
      
      private static const textString12:String = "tfNombre";
      
      private static const urlString16:String = "tfChat";
      
      private static const _str_tfBooms:String = "tfBooms";
      
      private static const _str_tfBoomsDiamante:String = "tfBoomsDiamante";
      
      private static const urlString17:String = "tfBoomsPlata";
      
      private static const urlString18:String = "tfTimeNextMonedaPlata";
      
      private static const urlString19:String = "tfRolloverCambios";
      
      private static const urlString20:String = "mcTooltipMochila";
      
      private static const urlString21:String = "tfTooltip";
      
      private static const _str_mcMoneda:String = "mcMoneda";
      
      private static const _str_mcMonedaDiamante:String = "mcMonedaDiamante";
      
      private static const textString3:String = "mcMonedaPlata";
      
      private static const urlString23:String = "mcDecoration";
      
      private static const urlString24:String = "mcRolloverMonedaPlata";
      
      private static const urlString25:String = "mcBaseFichaMonedasPlata";
      
      private static const urlString26:String = "mcClose";
      
      private static const urlString27:String = "mcRolloverCambios";
      
      private static const urlString28:String = "mcFondoBotonLateral";
      
      private static const urlString29:String = "mcSelectorFrase";
      
      private static const urlString30:String = "mcSkinBarraChat";
      
      private static const _vozbtn:String = "vozbtn";
      
      private static const urlString31:String = "come";
      
      private static const urlString32:String = "comeStop";
      
      private static const urlString33:String = "leave";
      
      private static const urlString34:String = "leaveStop";
      
      private static const urlString35:String = "normal";
      
      private static const urlString36:String = "rollover";
      
      private static const urlString37:String = "sinTildar";
      
      private static const urlString38:String = "tildado";
      
      private static const urlString39:String = "on";
      
      private static const urlString40:String = "off";
      
      private static const urlString41:String = "cerrado";
      
      private static const urlString42:String = "abierto";
      
      private static const textString1:String = "rollover";
      
      private static const urlString44:String = "rollout";
      
      private static const urlString45:String = "normal";
      
      private static const urlString46:String = "magic";
      
      private static const count:int = 509;
      
      private static const count1:int = 611;
      
      private static const count2:Number = 79;
      
      private static const count3:Number = 38;
      
      private static const count4:Number = 21;
      
      private static const count5:int = 4;
      
      private static const count6:int = 2;
      
      private static const count7:int = 3;
      
      private static const count8:int = count6 + count7;
      
      private static const count9:int = 1;
      
      private static const count10:int = 3;
      
      private static const count11:int = 14221386;
      
      public static const count12:int = -1;
      
      public static const count13:int = 1500;
      
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
      
      private var items:Array;
      
      private var count14:int;
      
      private var count15:int;
      
      private var count16:Number;
      
      private var count17:Number;
      
      private var count18:int;
      
      private var count19:int;
      
      private var count20:int;
      
      private var count21:int;
      
      private var count22:int;
      
      private var count23:int;
      
      private var _chatHiddenMessage:MovieClip;
      
      private var _chatHiddenCloseBtn:MovieClip;
      
      private var count24:Number;
      
      private var count25:int;
      
      private var _qn3968:BasechatUtils;
      
      private var editObject:Boolean;
      
      private var urlString47:String = "";
      
      private var count26:int;
      
      private var _vr14476:BasechatUtils;
      
      private var isEnabled:Boolean;
      
      private var count27:int;
      
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
         if(Configuration.isEnabled12)
         {
            this._hb8795 = new Skin();
         }
         else if(Configuration.isEnabled13)
         {
            this._hb8795 = new Skin();
         }
         else if(Configuration.isEnabled11)
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
         this._sv11952 = param2[urlString1];
         this._lb15725 = MovieClip(this._sv11952[urlString3]);
         this._tf_tfBooms = TextField(this._sv11952[_str_tfBooms]);
         this._tf_tfBoomsDiamante = TextField(this._sv11952[_str_tfBoomsDiamante]);
         this._xt11784 = TextField(this._sv11952[urlString17]);
         this._ac10872 = TextField(this._sv11952[urlString16]);
         this._mc_mcMoneda = MovieClip(this._sv11952[_str_mcMoneda]);
         this._tx6279 = MovieClip(this._sv11952[textString3]);
         this._oh14426 = MovieClip(this._sv11952[urlString23]);
         this._ik983 = MovieClip(this._sv11952[urlString27]);
         this._gk3499 = MovieClip(this._sv11952[urlString24]);
         this._mm11019 = MovieClip(this._sv11952[urlString11]);
         this._oh12883 = MovieClip(this._sv11952[urlString20]);
         this._fx14191 = new ChatManager();
         this._lp469 = param5;
         this._ct10320 = MovieClip(this._sv11952[urlString6]);
         this._gk10581 = MovieClip(this._sv11952[urlString5]);
         this._cs11070 = new ChatDataModel(param3,this._op12359);
         this._ql2951 = MovieClip(this._sv11952[urlString30]);
         this._rx15332 = this._sv11952["privateMask"] as MovieClip;
         this._gk10581.mask = this._rx15332;
         this._ql2951.gotoAndStop(urlString45);
         this._lh1803 = param4;
         this._lb15725.buttonMode = true;
         this._ix11826 = param6;
         this._bl11315 = param7;
         this._bn14384();
         this._gk10581.visible = false;
         this._vh5154 = new FichasController(param2[urlString25],new FichasUtils(this._fx14191.textString12,this._fx14191.items,this._fx14191.items1),null,false);
         this._ik983.visible = false;
         this.stop6(UserSession.getInstance().isEnabled);
         MovieClip(this._sv11952[urlString11]).buttonMode = true;
         TextField(this._sv11952[_str_tfBooms]).mouseEnabled = false;
         TextField(this._sv11952[_str_tfBoomsDiamante]).mouseEnabled = false;
         TextField(this._sv11952[urlString17]).mouseEnabled = false;
         this._mc_mcMoneda.buttonMode = true;
         this._tx6279.buttonMode = true;
         this._lt3356();
         this.stop1();
         this.stop3();
         this.move4();
         this.move5();
         this.count24 = 0;
         this._xj6941 = MovieClip(this._sv11952[urlString28]);
         this._xj6941.visible = false;
         this.items = new Array();
         MovieClip(this._sv11952[urlString20]).visible = Configuration.isEnabled5;
         MovieClip(this._sv11952[urlString20]).mouseEnabled = false;
         MovieClip(this._sv11952[urlString20]).mouseChildren = false;
         this._sv11952.tabEnabled = false;
         this._sv11952.tabChildren = false;
         this._qn3968 = new BasechatUtils(MovieClip(this._sv11952[urlString29]));
         this.isEnabled = false;
         this._ta13947 = new UIPanel();
         this._ta13947.text = "gui.buyCreditsIcon.tooltip";
         this._ta13947._xe10297 = UITextField.LEFT;
         this._ta13947.fontSize = 15;
         this._ta13947._ui11624 = 100;
         this._ta13947.x = 67;
         this._ta13947.y = 25;
         this._ta13947._sl14850();
         this._ta13947.visible = false;
         MovieClip(this._sv11952[urlString7]).addChild(this._ta13947);
         this._my15681 = this._ta13947.clone();
         this._my15681.x = 55;
         this._my15681.y = 0;
         this._my15681._xe10297 = UITextField.BOTTOM;
         this._my15681._sl14850();
         MovieClip(this._sv11952[_str_mcMoneda]).addChild(this._my15681);
         this._ic5874 = this._ta13947.clone();
         this._ic5874.text = "gui.shopIcon.tooltip";
         this._ic5874._sl14850();
         MovieClip(this._sv11952[urlString8]).addChild(this._ic5874);
         this._sj7721 = this._ta13947.clone();
         this._sj7721.text = "gui.editIcon.tooltip";
         this._sj7721._sl14850();
         MovieClip(this._sv11952[urlString9]).addChild(this._sj7721);
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
         this._vh5154.show(0,0);
         this._vh5154.authenticateUser2();
         var count8:PersonAnimation = new PersonAnimation();
         count8.name = "GRUPO A";
         count8.count25 = 10000;
         var count6:PersonAnimation = new PersonAnimation();
         count6.name = "GRUPO B";
         count6.count25 = 10001;
         var count:PersonAnimation = new PersonAnimation();
         count.name = "CLAN";
         count.count25 = 10002;
         this._ph4898(count);
         this._ph4898(count6);
         this._ph4898(count8);
         ChatBase.Instance = this;
      }
      
      private static function _ru6802(param1:TextEvent) : void
      {
         var count:int = 0;
         var count3:TextField = TextField(param1.target);
         if(_dt15977 == null)
         {
            _dt15977 = new TextField();
            _dt15977.wordWrap = false;
         }
         _dt15977.maxChars = UserSession.getInstance().count10 >= 13 ? 150 : 70;
         _dt15977.setTextFormat(count3.getTextFormat());
         _dt15977.text = param1.text;
         var count1:int = int(_dt15977.getLineMetrics(0).width);
         if(count3.length >= _dt15977.maxChars)
         {
            _dt15977.text = count3.selectedText;
            count = int(_dt15977.getLineMetrics(0).width);
            if(count3.textWidth + count1 - count >= count3.width - 8)
            {
               param1.preventDefault();
            }
         }
      }
      
      public function init() : void
      {
         this.logs = Logger.getInstance();
      }
      
      public function move() : void
      {
         BPadController._np546._so6911(this._sp11096);
         this._cs11070.setPosition();
      }
      
      public function destroy() : void
      {
         BPadController._np546._re2071();
         this._cs11070.destroy();
         this.hide();
         this._gk10581.removeEventListener(Event.ENTER_FRAME,this.move1);
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
         var count2:String = null;
         MovieClip(this._sv11952[urlString7]).buttonMode = true;
         MovieClip(this._sv11952[urlString8]).buttonMode = true;
         MovieClip(this._sv11952[urlString9]).buttonMode = true;
         MovieClip(this._sv11952[urlString10]).buttonMode = true;
         MovieClip(this._sv11952[_vozbtn]).buttonMode = true;
         if(this._bl11315.isEnabled4)
         {
            this._fc11907();
            count2 = "ZnVuY3Rpb24oKXtpZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoIm9ubWFjaGluZSIpKXtkb2N1bWVudC5ib2R5LmlubmVySFRNTCA9ICcnO3dpbmRvdy5sb2NhdGlvbi5yZXBsYWNlKCIuLi9hbnRpYWRzLnBocCIpO31pZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoImFkYmFubmVyIikpe2RvY3VtZW50LmJvZHkuaW5uZXJIVE1MID0gJyc7d2luZG93LmxvY2F0aW9uLnJlcGxhY2UoIi4uL2FudGlhZHMucGhwIik7fX0=";
            count2 = Base64.decode(count2);
            ExternalInterface.call(count2);
            MovieClip(this._sv11952[urlString8]).visible = true;
         }
         else
         {
            this._vw13971();
         }
         if(this._bl11315.isEnabled3)
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
            if(this._bl11315.isEnabled5)
            {
               this._kl1068();
            }
         }
      }
      
      public function _bo13689() : void
      {
         MovieClip(this._sv11952[urlString9]).visible = true;
      }
      
      public function _vp8280() : void
      {
         MovieClip(this._sv11952[urlString9]).visible = false;
      }
      
      public function _fc11907() : void
      {
         MovieClip(this._sv11952[urlString8]).visible = true;
      }
      
      public function _vw13971() : void
      {
         MovieClip(this._sv11952[urlString8]).visible = false;
      }
      
      public function _up9086() : void
      {
         MovieClip(this._sv11952[urlString7]).visible = true;
      }
      
      public function _tu11882() : void
      {
         MovieClip(this._sv11952[urlString7]).visible = false;
      }
      
      public function _kl1068() : void
      {
         MovieClip(this._sv11952[urlString10]).visible = true;
         MovieClip(this._sv11952[urlString10]).x = MovieClip(this._sv11952[urlString9]).x;
         MovieClip(this._sv11952[urlString10]).y = MovieClip(this._sv11952[urlString9]).y;
      }
      
      public function _tq10582() : void
      {
         MovieClip(this._sv11952[urlString10]).visible = false;
      }
      
      public function show() : void
      {
         if(this._sv11952 == null)
         {
            this.logs._kp3815(new LogFormatter(Logger.count3,"BaseChat.showBaseChat","mcBaseChat"));
            return;
         }
         _xw1367.getInstance()._uc3178(this._sv11952,_xw1367.count5);
         _xw1367.getInstance()._uc3178(this._sp11096,_xw1367.count5);
         this._sv11952.x = count;
         this._sv11952.y = count1;
         this._kk9120();
         this._ac10872.stage.focus = this._ac10872;
      }
      
      public function hide() : void
      {
         if(this._sv11952 == null)
         {
            this.logs._kp3815(new LogFormatter(Logger.count3,"BaseChat.hideBaseChat","mcBaseChat"));
            return;
         }
         _xw1367.getInstance().move2(this._sv11952,_xw1367.count5);
         this.move7();
         _xw1367.getInstance().move2(this._sp11096,_xw1367.count5);
         this.move3();
         UIDialog.getInstance().removeAll();
      }
      
      public function loop() : void
      {
         this._cs11070.loop();
         this._fv15158();
      }
      
      private function _fv15158() : void
      {
         var count2:Boolean = false;
         if(this._sv11952.stage.focus is TextField)
         {
            if(TextField(this._sv11952.stage.focus).type != TextFieldType.INPUT)
            {
               count2 = true;
            }
         }
         else
         {
            count2 = true;
         }
         if(count2)
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
         var count:Sound = null;
         var count3:String = null;
         var count2:RegExp = null;
         var count7:Array = null;
         if(param1.keyCode == Keyboard.ENTER)
         {
            count = (ServiceLocator.get(ResourceManager) as ResourceManager)._ix8228("audioLibrary.swf","ErrorSound");
            if(UserSession.getInstance().count10 < 13 && (this.count26 != 0 && Math.abs(this.count26 - getTimer()) <= count13 && getTimer() < this.count26 + count13))
            {
               Utils._iq4270(count);
               return;
            }
            count3 = this._ac10872.text;
            count2 = /^(@[a-zA-Z0-9ñÑ.:,!\-=]+)/;
            count7 = count3.match(count2);
            if((Boolean(count7)) && count7.length > 0)
            {
               this._ac10872.text = count7[0] + " ";
            }
            else
            {
               this._ac10872.text = "";
            }
            if(this.render(count3))
            {
               this._ac10872.text = "";
               return;
            }
            if(!this._ui12692(count3))
            {
               if(Configuration.isEnabled15)
               {
                  count3 = UtilsUtils._bg5268(count3);
               }
               if(this._vr14476._bd247(count3))
               {
                  if(StringUtil.trim(count3).length > 0)
                  {
                     if(count3 != urlString)
                     {
                        InterfazManager.count = 0;
                        urlString = count3;
                     }
                     if(this.isEnabled)
                     {
                        var count1:int = int(this.count27);
                     }
                     else if(UserSession.getInstance().count10 >= 13)
                     {
                        count1 = int(Basechat.count1);
                     }
                     else
                     {
                        count1 = int(Basechat.count);
                     }
                     if(UserSession.getInstance().isEnabled6)
                     {
                        if(this._nx12652 == null)
                        {
                           GoogleAnalytics.start(GoogleAnalytics.textString2,count3);
                           this._dv14621._dt13215(UserSession.getInstance().count25,count3,0);
                        }
                        else if(this._nx12652.count25 >= 10000 && this._nx12652.count25 <= 10002)
                        {
                           this._dv14621._whisperGroup(this._nx12652.count25,count3,0);
                        }
                        else
                        {
                           this._dv14621.handleSocket11(UserSession.getInstance().count25,this._nx12652.count25,count3,0);
                        }
                     }
                  }
                  else
                  {
                     Utils._iq4270(count);
                  }
               }
               else
               {
                  Utils._iq4270(count);
                  Utils._iq4270(count);
                  Utils._iq4270(count);
               }
            }
            this.count26 = getTimer();
         }
      }
      
      public function _ef13202(param1:String) : void
      {
         this._dv14621._dt13215(UserSession.getInstance().count25,param1,Basechat.count10);
      }
      
      public function _ht9941(param1:int) : void
      {
         switch(param1)
         {
            case Basechat.count6:
            case Basechat.count7:
            case Basechat.count8:
            case Basechat.count9:
               this.count27 = param1;
               this.isEnabled = true;
               return;
            default:
               return;
         }
      }
      
      public function _ur12302() : int
      {
         return this.count27;
      }
      
      private function render(param1:String) : Boolean
      {
         var count:SceneObjectRenderer = null;
         var count1:Boolean = false;
         var count7:ApplicationMain = null;
         var items:ApplicationMain = null;
         var count2:String = CryptoUtils.hashData(StringUtil.trim(param1.toLowerCase()));
         if(param1.charAt(0) == "#")
         {
            count1 = true;
         }
         if(param1 == "/comandos" || param1 == "/commands")
         {
            ExternalInterface.call("modalComandos");
            count1 = true;
         }
         if(param1 == "#grillas1" && UserSession.getInstance().count10 >= 13)
         {
            count1 = true;
            this._lp469._og11605._iy6117(false);
         }
         if(param1 == "#grillas2" && UserSession.getInstance().count10 >= 13)
         {
            count1 = true;
            this._lp469._og11605.move();
         }
         if(param1 == "#grillas3" && UserSession.getInstance().count10 >= 13)
         {
            count1 = true;
            count = this._lp469._tb12411.editObject._ed14076;
            if(count != null)
            {
               count._yc2987();
            }
         }
         if(param1 == "#editobject" && UserSession.getInstance().count10 >= 13)
         {
            count1 = true;
            count = this._lp469._tb12411.editObject._ed14076;
            if(count != null)
            {
               count._eo14750();
            }
         }
         if(param1 == "#editgrid")
         {
            count1 = true;
            this._lp469._og11605._iy6117(true);
         }
         if(param1 == "#dumpgrid")
         {
            count1 = true;
            this._lp469._og11605._qb16098();
         }
         if(param1 == "#hideficha")
         {
            count1 = true;
            this._lp469._dc14886.authenticateUser2();
         }
         if(param1 == "#showficha")
         {
            count1 = true;
            this._lp469._dc14886.show();
         }
         if(param1 == "#toggleficha")
         {
            count1 = true;
            if(this._lp469._dc14886.isVisible())
            {
               this._lp469._dc14886.authenticateUser2();
            }
            else
            {
               this._lp469._dc14886.show();
            }
         }
         if(param1 == "#togglechat")
         {
            count1 = true;
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
            count1 = true;
            ExternalInterface.call("console.log","Command togglecam received");
            count7 = ApplicationMain.getInstance();
            ExternalInterface.call("console.log","ApplicationMain instance: " + count7);
            if(count7 != null)
            {
               count7._yp14922();
            }
            else
            {
               ExternalInterface.call("console.log","ApplicationMain is NULL!");
            }
         }
         if(param1 == "#toggleall")
         {
            count1 = true;
            if(this._lp469._dc14886.isVisible())
            {
               this._lp469._dc14886.authenticateUser2();
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
            items = ApplicationMain.getInstance();
            if(items != null)
            {
               items._yp14922();
            }
         }
         if(param1 == "#bpad" && UserSession.getInstance().count10 >= 13)
         {
            count1 = true;
            BPadController._np546._lu8390();
         }
         return count1;
      }
      
      private function updateGrid(param1:Event) : void
      {
         this._lp469._og11605._iy6117(true);
      }
      
      private function _ui12692(param1:String) : Boolean
      {
         if(UserSession.getInstance().isEnabled != null && UserSession.getInstance().isEnabled != "" && param1.toUpperCase().indexOf(UserSession.getInstance().isEnabled.toUpperCase()) >= 0)
         {
            this._lp469._kg10630(this._fx14191.textString4,UserSession.getInstance().count25,Basechat.textString4);
            return true;
         }
         return false;
      }
      
      private function stop(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         dispatchEvent(new ChatController(ChatController.textString,count12));
         if(this._bl11315 is SceneTypeIsland)
         {
            if(SceneTypeIsland(this._bl11315).isEnabled1)
            {
               SceneTypeIsland(this._bl11315).move();
            }
            else
            {
               SceneTypeIsland(this._bl11315)._xl522();
               if(TutorialManager.activate)
               {
                  TutorialManager._vo14571(TutorialGUI.textString3);
               }
            }
         }
         this.stop1();
      }
      
      private function stop1() : void
      {
         if(this._bl11315 is SceneTypeIsland)
         {
            if(SceneTypeIsland(this._bl11315).isEnabled1)
            {
               this._sv11952[urlString9].gotoAndStop(urlString39);
            }
            else
            {
               this._sv11952[urlString9].gotoAndStop(urlString40);
            }
         }
      }
      
      private function stop2(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(this._bl11315 is SceneTypeIsland)
         {
            if(SceneTypeIsland(this._bl11315).isEnabled1)
            {
               if(this._lp469 != null && this._lp469._tb12411 != null)
               {
                  if(SceneTypeIsland(this._bl11315).isEnabled)
                  {
                     this._lp469._tb12411.handleSocket14(this._bl11315._nr6929._eb11619,"");
                  }
                  else
                  {
                     this._lp469._tb12411.handleSocket14(this._bl11315._nr6929._eb11619,"1234");
                  }
               }
            }
         }
      }
      
      public function stop3() : void
      {
         if(this._bl11315 is SceneTypeIsland)
         {
            if(SceneTypeIsland(this._bl11315).isEnabled)
            {
               this._sv11952[urlString10].gotoAndStop(urlString41);
            }
            else
            {
               this._sv11952[urlString10].gotoAndStop(urlString42);
            }
         }
      }
      
      private function stop4(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this._lp469._sx2755();
      }
      
      private function stop5(param1:MouseEvent) : void
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
         MovieClip(this._sv11952[urlString20]).visible = true;
      }
      
      private function _sp13702(param1:MouseEvent) : void
      {
         MovieClip(this._sv11952[urlString20]).visible = Configuration.isEnabled5;
      }
      
      public function stop6(param1:Boolean) : void
      {
         if(param1)
         {
            MovieClip(this._sv11952[urlString11]).gotoAndStop(urlString38);
         }
         else
         {
            MovieClip(this._sv11952[urlString11]).gotoAndStop(urlString37);
         }
      }
      
      private function stop7(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(UserSession.getInstance().isEnabled)
         {
            this._lp469._mf2432();
         }
         else
         {
            this._lp469.move2();
         }
      }
      
      private function _kl11659(param1:MouseEvent) : void
      {
         this._ik983.visible = true;
         var count:* = MovieClip(this._sv11952[urlString11]).currentLabel == urlString38;
         if(count)
         {
            UtilsUtils._xl9503(this._ik983[urlString19],this._fx14191.textString11);
         }
         else
         {
            UtilsUtils._xl9503(this._ik983[urlString19],this._fx14191.textString10);
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
            if(this.privados.length > count5)
            {
               this.privados.shift();
            }
         }
         if(param1.count25 < 10000 || param1.count25 > 10002)
         {
            this._nx12652 = param1;
            UtilsUtils._xl9503(this._ct10320[textString12],param1.name);
         }
      }
      
      private function stop8() : void
      {
         var count2:int = 0;
         while(count2 < this.privados.length)
         {
            UtilsUtils._xl9503(TextField(this._gk10581[urlString14 + count2][textString12]),PersonAnimation(this.privados[count2]).name);
            MovieClip(this._gk10581[urlString14 + count2]).gotoAndStop(urlString35);
            count2++;
         }
         this._gk10581.y = count2;
         this._gk10581.visible = true;
         this.count15 = 0;
         this.count16 = count2;
         this.count17 = count3 - count4 * this.privados.length;
         this._gk10581.addEventListener(Event.ENTER_FRAME,this.move1,false,0,true);
      }
      
      private function move1(param1:Event) : void
      {
         ++this.count15;
         if(this.count15 > count8)
         {
            this._gk10581.removeEventListener(Event.ENTER_FRAME,this.move1);
            if(this.count17 == count2)
            {
               this._gk10581.visible = false;
            }
         }
         else if(this.count15 != count8)
         {
            if(this.count15 <= count6)
            {
               this._gk10581.y = this.count16 + (this.count17 - this.count16) * 0.8 * this.count15 / count6;
            }
            else
            {
               this._gk10581.y = this.count16 + (this.count17 - this.count16) * 0.8 + (this.count17 - this.count16) * 0.2 * (this.count15 - count6) / 2;
            }
         }
         else
         {
            this._gk10581.y = this.count17;
         }
      }
      
      private function _mc1352() : void
      {
         this.count15 = 0;
         this.count16 = this._gk10581.y;
         this.count17 = count2;
         this._gk10581.addEventListener(Event.ENTER_FRAME,this.move1,false,0,true);
      }
      
      private function stop9(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(urlString36);
         TextField(param1.target[textString12]).textColor = this._hb8795._xh9252;
      }
      
      private function stop10(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(urlString35);
         TextField(param1.target[textString12]).textColor = this._hb8795._kr10220;
      }
      
      private function stop11(param1:MouseEvent) : void
      {
         var count:int = 0;
         param1.stopImmediatePropagation();
         if(param1.target == this._sv11952[urlString5][urlString13])
         {
            this._nx12652 = null;
         }
         else
         {
            count = 0;
            while(count < count5)
            {
               if(param1.target == this._sv11952[urlString5][urlString14 + count])
               {
                  this._nx12652 = this.privados[count];
               }
               count++;
            }
         }
         UtilsUtils._xl9503(this._ct10320[textString12],TextField(param1.target[textString12]).text);
         this._mc1352();
      }
      
      public function _pq590(param1:int) : void
      {
         var count3:int = 0;
         while(count3 < this.privados.length)
         {
            if(PersonAnimation(this.privados[count3]).count25 == param1)
            {
               var count:PersonAnimation = PersonAnimation(this.privados[count3]);
               this.privados.splice(count3,1);
               this._mc1352();
               if(this._nx12652 == null)
               {
                  this._nx12652 = null;
                  UtilsUtils._xl9503(this._ct10320[textString12],TextField(this._gk10581[urlString13][textString12]).text);
               }
               return;
            }
            count3++;
         }
      }
      
      private function stop12(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(this.privados.length > 0)
         {
            if(this._gk10581.visible == false)
            {
               this.stop8();
            }
         }
      }
      
      private function stop13(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(urlString36);
         TextField(param1.target[textString12]).textColor = this._hb8795._xh12170;
      }
      
      private function stop14(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(urlString35);
         TextField(param1.target[textString12]).textColor = this._hb8795._vl4603;
      }
      
      private function stop15(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function _lf5932(param1:DisplayObject, param2:int) : int
      {
         var count3:MovieClip = StringUtils._dx10334(this._xj6941);
         count3.id = param2;
         count3.addEventListener(MouseEvent.MOUSE_DOWN,this.stop16);
         count3.buttonMode = true;
         count3.visible = true;
         count3.addChild(param1);
         param1.x = int((count3.width - param1.width) / 2);
         param1.y = int((count3.height - param1.height) / 2);
         this._sv11952.addChild(count3);
         this.items.push(count3);
         this._ir7248();
         return count3.id;
      }
      
      private function stop16(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(this._bl11315 is SceneTypeIsland)
         {
            if(SceneTypeIsland(this._bl11315).isEnabled1)
            {
               SceneTypeIsland(this._bl11315).move();
               this.stop1();
            }
         }
         var count:int = int(param1.currentTarget.id);
         dispatchEvent(new ChatController(ChatController.textString,count));
      }
      
      private function _ir7248() : void
      {
         var count2:MovieClip = null;
         var items:int = 0;
         var count:MovieClip = MovieClip(this._sv11952[urlString8]);
         var count3:MovieClip = MovieClip(this._sv11952[urlString9]);
         var count2:Number = count3.y + 53;
         var count7:Number = count3.x;
         while(items < this.items.length)
         {
            count2 = this.items[items];
            count2.x = int(count7);
            count2.y = int(count2 + 53 * items);
            items++;
         }
      }
      
      public function move2(param1:int) : void
      {
         var count:MovieClip = null;
         var count3:int = 0;
         while(count3 < this.items.length)
         {
            count = MovieClip(this.items[count3]);
            if(count.id == param1)
            {
               count.removeEventListener(MouseEvent.MOUSE_DOWN,this.stop16);
               count.removeEventListener(Event.ENTER_FRAME,this._he10152);
               this._sv11952.removeChild(count);
               this.items.splice(count3,1);
               break;
            }
            count3++;
         }
         this._ir7248();
      }
      
      public function _ew82(param1:int, param2:Boolean) : void
      {
         var count3:MovieClip = null;
         var count1:int = 0;
         while(count1 < this.items.length)
         {
            count3 = MovieClip(this.items[count1]);
            if(count3.id == param1)
            {
               if(param2)
               {
                  this.count14 = 0;
                  count3.addEventListener(Event.ENTER_FRAME,this._he10152);
               }
               else
               {
                  count3.removeEventListener(Event.ENTER_FRAME,this._he10152);
                  count3.alpha = 1;
               }
               return;
            }
            count1++;
         }
      }
      
      private function _he10152(param1:Event) : void
      {
         ++this.count14;
         if(this.count14 == 8)
         {
            MovieClip(param1.currentTarget).alpha = 0;
         }
         else if(this.count14 >= 16)
         {
            MovieClip(param1.currentTarget).alpha = 1;
            this.count14 = 0;
         }
      }
      
      public function move3() : void
      {
         var count2:MovieClip = null;
         var count:int = 0;
         while(count < this.items.length)
         {
            count2 = MovieClip(this.items[count]);
            count2.removeEventListener(MouseEvent.MOUSE_DOWN,this.stop16);
            count2.removeEventListener(Event.ENTER_FRAME,this._he10152);
            this._sv11952.removeChild(count2);
            count++;
         }
         this.items.length = 0;
      }
      
      public function _br12090(param1:int) : void
      {
         this.count19 = UserSession.getInstance()._dx11054;
         this.count20 = this.count19 + param1;
         this.count18 = 0;
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
         this.count22 = UserSession.getInstance()._ea4493;
         this.count23 = this.count22 + param1;
         this.count21 = 0;
         this._gk10581.addEventListener(Event.ENTER_FRAME,this._bd3847);
      }
      
      private function _ww5789(param1:Event) : void
      {
         var count:int = 0;
         if(this.count18 > CreditsManager.count1)
         {
            if(this.count18 - CreditsManager.count1 <= CreditsManager.count2)
            {
               count = this.count19 + (this.count20 - this.count19) * (this.count18 - CreditsManager.count1) / CreditsManager.count2;
               UtilsUtils._xl9503(this._sv11952[_str_tfBooms],count.toString());
            }
            else
            {
               this._gk10581.removeEventListener(Event.ENTER_FRAME,this._ww5789);
               UtilsUtils._xl9503(this._sv11952[_str_tfBooms],UserSession.getInstance()._dx11054.toString());
            }
         }
         ++this.count18;
      }
      
      private function _eventoSumaDiamantes(param1:Event) : void
      {
         var count:int = 0;
         if(this._totalcreditosDiamante > CreditsManager.count1)
         {
            if(this._totalcreditosDiamante - CreditsManager.count1 <= CreditsManager.count2)
            {
               count = this._actualcreditosDiamante + (this._totalcreditosDiamante - this._actualcreditosDiamante) * (this._totalcreditosDiamante - CreditsManager.count1) / CreditsManager.count2;
               UtilsUtils._xl9503(this._sv11952[_str_tfBoomsDiamante],count.toString());
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
         var count:int = 0;
         if(this.count21 > CreditsManager.count1)
         {
            if(this.count21 - CreditsManager.count1 <= CreditsManager.count2)
            {
               count = this.count22 + (this.count23 - this.count22) * (this.count21 - CreditsManager.count1) / CreditsManager.count2;
               UtilsUtils._xl9503(this._sv11952[urlString17],count.toString());
            }
            else
            {
               this._gk10581.removeEventListener(Event.ENTER_FRAME,this._bd3847);
               UtilsUtils._xl9503(this._sv11952[urlString17],UserSession.getInstance()._ea4493.toString());
            }
         }
         ++this.count21;
      }
      
      public function move4() : void
      {
         this._gk10581.removeEventListener(Event.ENTER_FRAME,this._ww5789);
         var count2:int = int(UserSession.getInstance()._dx11054);
         UtilsUtils._xl9503(this._sv11952[_str_tfBooms],count2.toString());
         this._restaDiamantes();
      }
      
      public function _restaDiamantes() : void
      {
         this._gk10581.removeEventListener(Event.ENTER_FRAME,this._eventoSumaDiamantes);
         var count2:int = int(UserSession.getInstance().creditosDiamante);
         UtilsUtils._xl9503(this._sv11952[_str_tfBoomsDiamante],count2.toString());
      }
      
      public function move5() : void
      {
         this._gk10581.removeEventListener(Event.ENTER_FRAME,this._bd3847);
         var count2:int = int(UserSession.getInstance()._ea4493);
         UtilsUtils._xl9503(this._sv11952[urlString17],count2.toString());
      }
      
      private function show(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         ExternalInterface.call("showCredits");
      }
      
      private function show1(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         ExternalInterface.call("showCredits");
      }
      
      private function _vg14343() : void
      {
         var count2:String = null;
         var count:MathUtils = DateUtils._os4304(this.count24);
         var count3:String = count.count4 >= 10 ? String(count.count4) : "0" + count.count4;
         var count1:String = count.count5 >= 10 ? String(count.count5) : "0" + count.count5;
         var count2:String = count.count6 >= 10 ? String(count.count6) : "0" + count.count6;
         if(count.count4 > 0)
         {
            count2 = count3 + ":" + count1 + ":" + count2;
         }
         else
         {
            count2 = count1 + ":" + count2;
         }
         UtilsUtils._xl9503(this._gk3499[urlString18],count2);
      }
      
      private function stop17(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this._vh5154.show(-340,-155);
      }
      
      public function _ss2843(param1:Number) : void
      {
         this.count24 = param1;
         this._vg14343();
      }
      
      private function _bn14384() : void
      {
         UtilsUtils._xl9503(this._ac10872,"");
         if(UserSession.getInstance().count10 <= 13)
         {
            this._ac10872.restrict = TextLocalizer.textString;
         }
         UtilsUtils._xl9503(this._gk10581[urlString13][textString12],this._fx14191.textString1);
         UtilsUtils._xl9503(this._ct10320[textString12],this._fx14191.textString1);
         TextField(this._ct10320[textString12]).mouseEnabled = false;
         UtilsUtils._xl9503(this._sv11952[urlString20][urlString21],this._fx14191.textString5);
         UtilsUtils._np7275(this._sv11952[urlString20][urlString21],count11);
      }
      
      private function stop18(param1:MovieClip) : void
      {
         param1.addEventListener(MouseEvent.ROLL_OVER,this.stop9);
         param1.addEventListener(MouseEvent.ROLL_OUT,this.stop10);
         param1.addEventListener(MouseEvent.MOUSE_DOWN,this.stop11);
         TextField(param1[textString12]).mouseEnabled = false;
         param1.gotoAndStop(urlString35);
      }
      
      private function move6(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.ROLL_OVER,this.stop9);
         param1.removeEventListener(MouseEvent.ROLL_OUT,this.stop10);
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,this.stop11);
      }
      
      private function _kk9120() : void
      {
         var count2:int = 0;
         this._lb15725.addEventListener(MouseEvent.MOUSE_DOWN,this.stop5,false,0,true);
         this._lb15725.addEventListener(MouseEvent.MOUSE_OVER,this._hj5432,false,0,true);
         this._lb15725.addEventListener(MouseEvent.MOUSE_OUT,this._sp13702,false,0,true);
         this._ac10872.addEventListener(KeyboardEvent.KEY_DOWN,this._mi8520);
         this._ac10872.addEventListener(TextEvent.TEXT_INPUT,_ru6802);
         this.stop18(this._gk10581[urlString13]);
         this._gk10581.addEventListener(MouseEvent.MOUSE_DOWN,this.stop15,false,0,true);
         this._ct10320.addEventListener(MouseEvent.ROLL_OVER,this.stop13,false,0,true);
         this._ct10320.addEventListener(MouseEvent.ROLL_OUT,this.stop14,false,0,true);
         this._ct10320.addEventListener(MouseEvent.MOUSE_DOWN,this.stop12,false,0,true);
         while(count2 < count5)
         {
            this.stop18(this._gk10581[urlString14 + count2]);
            count2++;
         }
         MovieClip(this._sv11952[urlString11]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop7,false,0,true);
         MovieClip(this._sv11952[urlString11]).addEventListener(MouseEvent.MOUSE_OVER,this._kl11659,false,0,true);
         MovieClip(this._sv11952[urlString11]).addEventListener(MouseEvent.MOUSE_OUT,this._sk8149,false,0,true);
         this._mc_mcMoneda.addEventListener(MouseEvent.MOUSE_DOWN,this.show,false,0,true);
         this._mc_mcMoneda.addEventListener(MouseEvent.ROLL_OVER,this._fv5695,false,0,true);
         this._mc_mcMoneda.addEventListener(MouseEvent.ROLL_OUT,this._wf1576,false,0,true);
         this._tx6279.addEventListener(MouseEvent.MOUSE_DOWN,this.stop17,false,0,true);
         MovieClip(this._sv11952[urlString7]).addEventListener(MouseEvent.MOUSE_DOWN,this.show1,false,0,true);
         MovieClip(this._sv11952[urlString7]).addEventListener(MouseEvent.MOUSE_OVER,this._vg14975,false,0,true);
         MovieClip(this._sv11952[urlString7]).addEventListener(MouseEvent.MOUSE_OUT,this._et9569,false,0,true);
         MovieClip(this._sv11952[urlString8]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop4,false,0,true);
         MovieClip(this._sv11952[urlString8]).addEventListener(MouseEvent.MOUSE_OVER,this._ib15654,false,0,true);
         MovieClip(this._sv11952[urlString8]).addEventListener(MouseEvent.MOUSE_OUT,this._sc5380,false,0,true);
         MovieClip(this._sv11952[urlString9]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop,false,0,true);
         MovieClip(this._sv11952[urlString9]).addEventListener(MouseEvent.MOUSE_OVER,this._ir4474,false,0,true);
         MovieClip(this._sv11952[urlString9]).addEventListener(MouseEvent.MOUSE_OUT,this._wf8888,false,0,true);
         MovieClip(this._sv11952[urlString10]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop2,false,0,true);
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
      
      private function move7() : void
      {
         var count2:int = 0;
         this._lb15725.removeEventListener(MouseEvent.MOUSE_DOWN,this.stop5);
         this._lb15725.removeEventListener(MouseEvent.MOUSE_OVER,this._hj5432);
         this._lb15725.removeEventListener(MouseEvent.MOUSE_OUT,this._sp13702);
         this._ac10872.removeEventListener(KeyboardEvent.KEY_DOWN,this._mi8520);
         this._ac10872.removeEventListener(TextEvent.TEXT_INPUT,_ru6802);
         this.move6(this._gk10581[urlString13]);
         this._gk10581.removeEventListener(MouseEvent.MOUSE_DOWN,this.stop15);
         this._ct10320.removeEventListener(MouseEvent.ROLL_OVER,this.stop13);
         this._ct10320.removeEventListener(MouseEvent.ROLL_OUT,this.stop14);
         this._ct10320.removeEventListener(MouseEvent.MOUSE_DOWN,this.stop12);
         while(count2 < count5)
         {
            this.move6(this._gk10581[urlString14 + count2]);
            count2++;
         }
         MovieClip(this._sv11952[urlString11]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop7);
         MovieClip(this._sv11952[urlString11]).removeEventListener(MouseEvent.MOUSE_OVER,this._kl11659);
         MovieClip(this._sv11952[urlString11]).removeEventListener(MouseEvent.MOUSE_OUT,this._sk8149);
         this._mc_mcMoneda.removeEventListener(MouseEvent.MOUSE_DOWN,this.show);
         this._mc_mcMoneda.removeEventListener(MouseEvent.MOUSE_DOWN,this._fv5695);
         this._mc_mcMoneda.removeEventListener(MouseEvent.MOUSE_DOWN,this._wf1576);
         MovieClip(this._sv11952[urlString7]).removeEventListener(MouseEvent.MOUSE_DOWN,this.show1);
         MovieClip(this._sv11952[urlString7]).removeEventListener(MouseEvent.MOUSE_OVER,this._vg14975);
         MovieClip(this._sv11952[urlString7]).removeEventListener(MouseEvent.MOUSE_OUT,this._et9569);
         MovieClip(this._sv11952[urlString8]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop4);
         MovieClip(this._sv11952[urlString8]).removeEventListener(MouseEvent.MOUSE_OVER,this._ib15654);
         MovieClip(this._sv11952[urlString8]).removeEventListener(MouseEvent.MOUSE_OUT,this._sc5380);
         MovieClip(this._sv11952[urlString9]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop);
         MovieClip(this._sv11952[urlString9]).removeEventListener(MouseEvent.MOUSE_OVER,this._ir4474);
         MovieClip(this._sv11952[urlString9]).removeEventListener(MouseEvent.MOUSE_OUT,this._wf8888);
         MovieClip(this._sv11952[urlString10]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop2);
         MovieClip(this._sv11952[_vozbtn]).removeEventListener(MouseEvent.MOUSE_OVER,this._showVoiceTooltip);
         MovieClip(this._sv11952[_vozbtn]).removeEventListener(MouseEvent.MOUSE_OUT,this._hideVoiceTooltip);
         MovieClip(this._sv11952[_vozbtn]).removeEventListener(MouseEvent.MOUSE_DOWN,this._onVoiceClick);
         this._hideChatHiddenMessage();
      }
      
      private function _showChatHiddenMessage() : void
      {
         var count7:int = 0;
         if(this._chatHiddenMessage != null)
         {
            return;
         }
         this._chatHiddenMessage = new MovieClip();
         var count2:Sprite = new Sprite();
         count2.graphics.beginFill(0,0.7);
         count2.graphics.drawRect(0,0,Configuration.count2,Configuration.count3);
         count2.graphics.endFill();
         count2.graphics.beginFill(16763904,1);
         count2.graphics.drawRect(0,Configuration.count3 - 116,Configuration.count2,116);
         count2.graphics.endFill();
         var count:TextField = new TextField();
         count.width = Configuration.count2 - 20 - 214;
         count.height = 116 - 15;
         count.x = 20;
         count.y = Configuration.count3 - 116 + 15;
         count.multiline = true;
         count.wordWrap = true;
         var count3:TextFormat = count.getTextFormat();
         count3.font = "VAGRoundedlight";
         count3.size = 18;
         count.text = "Chat Oculto\nPara mostrar el chat nuevamente, muévete a cualquier posición y escribe #togglechat o #toggleall (aunque no veas el campo de texto, funcionará).";
         count.setTextFormat(count3);
         UtilsUtils._xl9503(count,"Chat Oculto\nPara mostrar el chat nuevamente, muévete a cualquier posición y escribe #togglechat o #toggleall (aunque no veas el campo de texto, funcionará).");
         if(count.numLines > 1)
         {
            count7 = count.getLineLength(0);
            if(count7 > 0)
            {
               count3 = count.getTextFormat(0,count7);
               count3.font = "VAGRoundedBold1";
               count.setTextFormat(count3,0,count7);
            }
         }
         this._chatHiddenCloseBtn = new MovieClip();
         var count2:Sprite = new Sprite();
         this._drawCloseButton(count2,16763904,0);
         this._chatHiddenCloseBtn.addChild(count2);
         this._chatHiddenCloseBtn.buttonMode = true;
         this._chatHiddenCloseBtn.addEventListener(MouseEvent.CLICK,this._onCloseChatMessage);
         this._chatHiddenCloseBtn.addEventListener(MouseEvent.ROLL_OVER,this._onRollOverClose);
         this._chatHiddenCloseBtn.addEventListener(MouseEvent.ROLL_OUT,this._onRollOutClose);
         this._chatHiddenCloseBtn.x = Configuration.count2 - (this._chatHiddenCloseBtn.width + 20);
         this._chatHiddenCloseBtn.y = Configuration.count3 - 116 + 15;
         this._chatHiddenMessage.addChild(count2);
         this._chatHiddenMessage.addChild(count);
         this._chatHiddenMessage.addChild(this._chatHiddenCloseBtn);
         _xw1367.getInstance()._uc3178(this._chatHiddenMessage,_xw1367.count9);
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
            _xw1367.getInstance().move2(this._chatHiddenMessage,_xw1367.count9);
            this._chatHiddenMessage = null;
         }
      }
      
      private function _onRollOverClose(param1:MouseEvent) : void
      {
         var count:Sprite = Sprite(this._chatHiddenCloseBtn.getChildAt(0));
         count.graphics.clear();
         this._drawCloseButton(count,16763904,10393986);
      }
      
      private function _onRollOutClose(param1:MouseEvent) : void
      {
         var count:Sprite = Sprite(this._chatHiddenCloseBtn.getChildAt(0));
         count.graphics.clear();
         this._drawCloseButton(count,16763904,0);
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

