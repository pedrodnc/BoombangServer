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
   
   public class LoginUIController
   {
      
      private static const textString:String = "mcBaseLogin";
      
      private static const textString1:String = "mcFacebookLoginError";
      
      private static const textString2:String = "tfError";
      
      private static const textString:String = "mcBaseGlobo";
      
      private static const textString1:String = "mcLogo";
      
      private static const textString2:String = "mcLogoChile";
      
      private static const textString3:String = "mcLogoIngles";
      
      private static const textString7:String = "in1";
      
      private static const textString8:String = "in2";
      
      private static const textString9:String = "mcBoton";
      
      private static const textString10:String = "facebookBtn";
      
      private static const textString11:String = "facebookInfoBtn";
      
      private static const textString12:String = "facebookExplanation";
      
      private static const textString13:String = "tfMenores";
      
      private static const textString14:String = "closeBtn";
      
      private static const textString15:String = "tfFacebook";
      
      private static const textString16:String = "facebookBigTxt";
      
      private static const textString17:String = "tfLabel";
      
      private static const textString18:String = "tfIn1";
      
      private static const textString19:String = "tfIn2";
      
      private static const textString20:String = "tfBoton";
      
      private static const textString21:String = "mcBotonBack";
      
      private static const textString22:String = "tfBotonBack";
      
      private static const textString23:String = "tfRememberComputer";
      
      private static const textString24:String = "tfRememberPass";
      
      private static const textString25:String = "mcCheckBoxRememberPass";
      
      private static const textString26:String = "mcCheckBoxRememberComputer";
      
      private static const textString27:String = "mcButtonContrasena";
      
      private static const textString28:String = "tfTitulo";
      
      private static const textString29:String = "tfTexto";
      
      private static const textString30:String = "mcBotonRecuperar";
      
      private static const textString31:String = "mcBotonRegistro";
      
      private static const textString32:String = "mcBotonCancel";
      
      private static const textString33:String = "mcFichaCreaCuenta";
      
      public static const textString34:String = "login";
      
      public static const textString35:String = "facebookInfo";
      
      public static const textString36:String = "loginVerificando";
      
      public static const textString37:String = "recuperar";
      
      public static const textString38:String = "recuperarVerificando";
      
      public static const textString39:String = "mailEnviado";
      
      public static const textString40:String = "codigo";
      
      public static const textString41:String = "codigoVerificando";
      
      public static const textString42:String = "codigoCorrecto";
      
      public static const textString43:String = "nuevaPass";
      
      public static const textString44:String = "nuevaPassVerificando";
      
      public static const textString45:String = "cuentaRecuperada";
      
      public static const textString46:String = "maxIntentos";
      
      private static var _dt15977:TextField = null;
      
      private var _pw3452:MovieClip;
      
      private var _np1587:LoginModel;
      
      public var textString47:String;
      
      public var textString48:String;
      
      private var _ym12228:LoginModule;
      
      private var _lt4172:InteractiveObject;
      
      private var _st14217:LoginUtils;
      
      private var _vh14351:LoginUtils;
      
      private var _xk7815:LoginUtils;
      
      private var _jc13712:CommoncomponentsView;
      
      private var _xv9734:CommoncomponentsView;
      
      public var _tc3420:LoginView;
      
      private var _td14902:LoginView;
      
      private var _tr10625:CommoncomponentsView;
      
      public function LoginUIController(param1:MovieClip, param2:LoginModule)
      {
         super();
         this._ym12228 = param2;
         this._np1587 = param2._np1587;
         this._pw3452 = param1[textString];
         (this._pw3452[textString1] as MovieClip).visible = false;
         (this._pw3452[textString10] as MovieClip).visible = false;
         (this._pw3452[textString11] as MovieClip).visible = false;
         this._ng15312();
         this._td14902 = new LoginView(this._pw3452[textString33],this._bi11025,this._np1587.textString44,this._np1587.textString45);
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
         _dt15977.setTextFormat(count3.getTextFormat());
         _dt15977.text = param1.text;
         var count1:int = int(_dt15977.getLineMetrics(0).width);
         if(count3.textWidth + count1 >= count3.width - 16)
         {
            _dt15977.text = count3.selectedText;
            count = int(_dt15977.getLineMetrics(0).width);
            if(count3.textWidth + count1 - count >= count3.width - 16)
            {
               param1.preventDefault();
            }
         }
      }
      
      public function onClick(param1:String) : void
      {
         UtilsUtils._xl9503(this._pw3452[textString1][textString2],param1);
         (this._pw3452[textString1] as MovieClip).visible = true;
         (this._pw3452[textString1] as MovieClip).addEventListener(MouseEvent.CLICK,this.onClick1);
      }
      
      private function onClick1(param1:MouseEvent) : void
      {
         (this._pw3452[textString1] as MovieClip).removeEventListener(MouseEvent.CLICK,this.onClick1);
         (this._pw3452[textString1] as MovieClip).visible = false;
      }
      
      private function _ng15312() : void
      {
         StringUtils._dp2863(this._pw3452,this._jw1477);
      }
      
      private function _lj15092() : void
      {
         StringUtils._ff5056(this._pw3452);
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
         UtilsUtils._vt11823(this._pw3452,param1);
         (ServiceLocator.get(ServiceManager) as ServiceManager).loadResource("/login/" + param1);
      }
      
      private function addListeners() : void
      {
         MovieClip(this._pw3452[textString10]).addEventListener(MouseEvent.CLICK,this.authenticateUser,false,0,true);
         MovieClip(this._pw3452[textString10]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779,false,0,true);
         MovieClip(this._pw3452[textString10]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779,false,0,true);
         MovieClip(this._pw3452[textString10]).mouseChildren = false;
         MovieClip(this._pw3452[textString10]).buttonMode = true;
         if(this._pw3452.currentLabel != textString35)
         {
            MovieClip(this._pw3452[textString11]).addEventListener(MouseEvent.CLICK,this._bp922,false,0,true);
            MovieClip(this._pw3452[textString11]).mouseChildren = false;
            MovieClip(this._pw3452[textString11]).buttonMode = true;
         }
         switch(this._pw3452.currentLabel)
         {
            case textString34:
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.CLICK,this.handleSocket);
               MovieClip(this._pw3452[textString9]).mouseChildren = false;
               MovieClip(this._pw3452[textString9]).buttonMode = true;
               TextField(this._pw3452[textString7]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[textString7]).addEventListener(TextEvent.TEXT_INPUT,_ru6802);
               TextField(this._pw3452[textString8]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[textString8]).addEventListener(TextEvent.TEXT_INPUT,_ru6802);
               this._tr10625 = new CommoncomponentsView(this._pw3452[textString27],this._fi3087,this._np1587.textString23,true);
               this._tr10625._lq8071 = 16776960;
               this._tr10625._vd8836 = 16777215;
               this._jc13712 = new CommoncomponentsView(this._pw3452[textString26],LoginModule.isEnabled,this._ym12228._rw730);
               this._xv9734 = new CommoncomponentsView(this._pw3452[textString25],LoginModule.isEnabled1,this._ym12228._rc302);
               this._tc3420 = new LoginView(this._pw3452,this._np1587);
               this._pw3452.stage.focus = TextField(this._pw3452[textString7]);
               return;
            case textString37:
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.CLICK,this.authenticateUser2);
               MovieClip(this._pw3452[textString9]).mouseChildren = false;
               MovieClip(this._pw3452[textString9]).buttonMode = true;
               TextField(this._pw3452[textString7]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[textString8]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               this._xk7815 = new LoginUtils(this._pw3452[textString32],this._np1587.textString21,this._np1587.textString22,this._pr3349);
               this._pw3452.stage.focus = TextField(this._pw3452[textString7]);
               return;
            case textString39:
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.CLICK,this._ed10464);
               MovieClip(this._pw3452[textString9]).mouseChildren = false;
               MovieClip(this._pw3452[textString9]).buttonMode = true;
               MovieClip(this._pw3452[textString21]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString21]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString21]).addEventListener(MouseEvent.CLICK,this._fi3087);
               MovieClip(this._pw3452[textString21]).mouseChildren = false;
               MovieClip(this._pw3452[textString21]).buttonMode = true;
               this._xk7815 = new LoginUtils(this._pw3452[textString32],this._np1587.textString21,this._np1587.textString22,this._pr3349);
               return;
            case textString40:
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.CLICK,this.authenticateUser5);
               MovieClip(this._pw3452[textString9]).mouseChildren = false;
               MovieClip(this._pw3452[textString9]).buttonMode = true;
               MovieClip(this._pw3452[textString21]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString21]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString21]).addEventListener(MouseEvent.CLICK,this._hi1295);
               MovieClip(this._pw3452[textString21]).mouseChildren = false;
               TextField(this._pw3452[textString7]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               this._xk7815 = new LoginUtils(this._pw3452[textString32],this._np1587.textString21,this._np1587.textString22,this._pr3349);
               this._pw3452.stage.focus = TextField(this._pw3452[textString7]);
               return;
            case textString42:
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.CLICK,this._uc8761);
               MovieClip(this._pw3452[textString9]).mouseChildren = false;
               MovieClip(this._pw3452[textString9]).buttonMode = true;
               return;
            case textString43:
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.CLICK,this.authenticateUser6);
               MovieClip(this._pw3452[textString9]).mouseChildren = false;
               MovieClip(this._pw3452[textString9]).buttonMode = true;
               TextField(this._pw3452[textString7]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[textString8]).addEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               this._pw3452.stage.focus = TextField(this._pw3452[textString7]);
               return;
            case textString45:
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.CLICK,this._eo9844);
               MovieClip(this._pw3452[textString9]).mouseChildren = false;
               MovieClip(this._pw3452[textString9]).buttonMode = true;
               return;
            case textString46:
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).addEventListener(MouseEvent.CLICK,this._pg12839);
               MovieClip(this._pw3452[textString9]).mouseChildren = false;
               MovieClip(this._pw3452[textString9]).buttonMode = true;
               return;
            case textString35:
               if(Configuration.urlString9 == Configuration.urlString7)
               {
                  MovieClip(this._pw3452[textString12]).gotoAndStop(2);
               }
               MovieClip(this._pw3452[textString12][textString14]).addEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString12][textString14]).addEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString12][textString14]).addEventListener(MouseEvent.CLICK,this._cg642);
               MovieClip(this._pw3452[textString12][textString14]).mouseChildren = false;
               MovieClip(this._pw3452[textString12][textString14]).buttonMode = true;
               UtilsUtils._xl9503(this._pw3452[textString12][textString16],this._np1587.textString46);
               return;
            case textString36:
            case textString38:
            case textString44:
               return;
            default:
               return;
         }
      }
      
      private function removeListeners() : void
      {
         if(this._pw3452.currentLabel != textString35)
         {
            MovieClip(this._pw3452[textString11]).removeEventListener(MouseEvent.CLICK,this._bp922);
         }
         MovieClip(this._pw3452[textString10]).removeEventListener(MouseEvent.CLICK,this.authenticateUser);
         MovieClip(this._pw3452[textString10]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
         MovieClip(this._pw3452[textString10]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
         switch(this._pw3452.currentLabel)
         {
            case textString34:
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.CLICK,this.handleSocket);
               TextField(this._pw3452[textString7]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[textString7]).removeEventListener(TextEvent.TEXT_INPUT,_ru6802);
               TextField(this._pw3452[textString8]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[textString8]).removeEventListener(TextEvent.TEXT_INPUT,_ru6802);
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
            case textString37:
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.CLICK,this.authenticateUser2);
               TextField(this._pw3452[textString7]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[textString8]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               if(this._xk7815 != null)
               {
                  this._xk7815.destroy();
                  this._xk7815 = null;
               }
               return;
            case textString39:
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.CLICK,this._ed10464);
               MovieClip(this._pw3452[textString21]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString21]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString21]).removeEventListener(MouseEvent.CLICK,this._fi3087);
               if(this._xk7815 != null)
               {
                  this._xk7815.destroy();
                  this._xk7815 = null;
               }
               return;
            case textString40:
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.CLICK,this.authenticateUser5);
               MovieClip(this._pw3452[textString21]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString21]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString21]).removeEventListener(MouseEvent.CLICK,this._hi1295);
               TextField(this._pw3452[textString7]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               if(this._xk7815 != null)
               {
                  this._xk7815.destroy();
                  this._xk7815 = null;
               }
               return;
            case textString42:
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.CLICK,this._uc8761);
               return;
            case textString43:
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.CLICK,this.authenticateUser6);
               TextField(this._pw3452[textString7]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               TextField(this._pw3452[textString8]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ot5240);
               return;
            case textString45:
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.CLICK,this._eo9844);
               return;
            case textString46:
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString9]).removeEventListener(MouseEvent.CLICK,this._pg12839);
               return;
            case textString35:
               MovieClip(this._pw3452[textString12][textString14]).removeEventListener(MouseEvent.ROLL_OVER,this._aj13779);
               MovieClip(this._pw3452[textString12][textString14]).removeEventListener(MouseEvent.ROLL_OUT,this._aj13779);
               MovieClip(this._pw3452[textString12][textString14]).removeEventListener(MouseEvent.CLICK,this._cg642);
               MovieClip(this._pw3452[textString12][textString14]).mouseChildren = false;
               MovieClip(this._pw3452[textString12][textString14]).buttonMode = true;
               return;
            case textString36:
            case textString38:
            case textString44:
               return;
            default:
               return;
         }
      }
      
      private function _aj13779(param1:MouseEvent) : void
      {
         var count:MovieClip = param1.currentTarget as MovieClip;
         if(count == null)
         {
            return;
         }
         switch(param1.type)
         {
            case MouseEvent.ROLL_OUT:
               count.gotoAndStop(CommoncomponentsView._vk6252);
               return;
            case MouseEvent.ROLL_OVER:
               count.gotoAndStop(CommoncomponentsView._jo8252);
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
            case textString34:
            case textString36:
               this._lq15572();
               return;
            case textString37:
            case textString38:
               this._ow1956();
               return;
            case textString39:
            case textString40:
            case textString41:
            case textString42:
            case textString46:
               this._ei11232();
               return;
            case textString43:
            case textString44:
            case textString45:
               this._dw11818();
               return;
            default:
               return;
         }
      }
      
      private function handleSocket(param1:MouseEvent = null) : void
      {
         this._ym12228.handleSocket(this._pw3452[textString7].text,this._pw3452[textString8].text);
      }
      
      private function _lq15572() : void
      {
         var count2:String = null;
         var count:String = null;
         UtilsUtils._xl9503(this._pw3452[textString17],this._np1587.textString6);
         UtilsUtils._xl9503(this._pw3452[textString18],this._np1587.textString7);
         UtilsUtils._xl9503(this._pw3452[textString19],this._np1587.textString8);
         UtilsUtils._xl9503(this._pw3452[textString23],this._np1587.textString40);
         UtilsUtils._xl9503(this._pw3452[textString24],this._np1587.textString41);
         switch(this._pw3452.currentLabel)
         {
            case textString34:
               UtilsUtils._xl9503(this._pw3452[textString9][textString20],this._np1587.textString9);
               UtilsUtils._xl9503(this._pw3452[textString10][textString15],this._np1587.textString16);
               UtilsUtils._xl9503(this._pw3452[textString11]["txt"],this._np1587.textString47);
               TextField(this._pw3452[textString7]).restrict = TextLocalizer.textString2;
               TextField(this._pw3452[textString7]).maxChars = TextLocalizer.count2;
               TextField(this._pw3452[textString8]).restrict = TextLocalizer.textString3;
               TextField(this._pw3452[textString8]).maxChars = TextLocalizer.count1;
               count2 = UserSession.getInstance().name;
               count = UserSession.getInstance().isEnabled;
               if(count2 == null)
               {
                  count2 = "";
               }
               if(count == null)
               {
                  count = "";
               }
               UtilsUtils._xl9503(this._pw3452[textString7],count2);
               UtilsUtils._xl9503(this._pw3452[textString8],count);
               TextField(this._pw3452[textString8]).displayAsPassword = true;
               return;
            case textString36:
               UtilsUtils._xl9503(this._pw3452[textString7],this.textString47);
               UtilsUtils._xl9503(this._pw3452[textString8],this.textString48);
               TextField(this._pw3452[textString8]).displayAsPassword = true;
               return;
            default:
               return;
         }
      }
      
      private function _bp922(param1:MouseEvent) : void
      {
         this._pd1002(textString35);
      }
      
      private function _cg642(param1:MouseEvent) : void
      {
         this._pd1002(textString34);
      }
      
      private function authenticateUser(param1:MouseEvent) : void
      {
         CoreModel.user.authenticate(DatatypesModel._xt5593);
         this._ym12228._dt7604();
      }
      
      private function _fi3087(param1:MouseEvent = null) : void
      {
         this._ym12228._fi3087();
      }
      
      private function authenticateUser2(param1:MouseEvent = null) : void
      {
         this._ym12228.authenticateUser2(this._pw3452[textString7].text,this._pw3452[textString8].text);
      }
      
      private function _pr3349(param1:MouseEvent = null) : void
      {
         this._ym12228._pr3349();
      }
      
      private function _ow1956() : void
      {
         UtilsUtils._xl9503(this._pw3452[textString17],this._np1587.textString25);
         UtilsUtils._xl9503(this._pw3452[textString18],this._np1587.textString27);
         UtilsUtils._xl9503(this._pw3452[textString19],this._np1587.textString26);
         switch(this._pw3452.currentLabel)
         {
            case textString37:
               UtilsUtils._xl9503(this._pw3452[textString9][textString20],this._np1587.textString13);
               TextField(this._pw3452[textString7]).restrict = TextLocalizer.textString2;
               TextField(this._pw3452[textString7]).maxChars = TextLocalizer.count2;
               TextField(this._pw3452[textString8]).restrict = TextLocalizer.textString4;
               TextField(this._pw3452[textString8]).maxChars = TextLocalizer.count3;
               UtilsUtils._xl9503(this._pw3452[textString7],"");
               UtilsUtils._xl9503(this._pw3452[textString8],"");
               return;
            case textString38:
               UtilsUtils._xl9503(this._pw3452[textString7],this.textString47);
               UtilsUtils._xl9503(this._pw3452[textString8],this.textString48);
               return;
            default:
               return;
         }
      }
      
      private function authenticateUser5(param1:MouseEvent = null) : void
      {
         this._ym12228.authenticateUser5(this._pw3452[textString7].text);
      }
      
      private function _ei11232() : void
      {
         switch(this._pw3452.currentLabel)
         {
            case textString39:
               UtilsUtils._xl9503(this._pw3452[textString17],this._np1587.textString39);
               UtilsUtils._xl9503(this._pw3452[textString9][textString20],this._np1587.textString13);
               UtilsUtils._xl9503(this._pw3452[textString21][textString22],this._np1587.textString14);
               CodeVerificationHelper.authenticateUser(this._pw3452);
               return;
            case textString40:
               UtilsUtils._xl9503(this._pw3452[textString17],this._np1587.textString28);
               UtilsUtils._xl9503(this._pw3452[textString18],this._np1587.textString29);
               UtilsUtils._xl9503(this._pw3452[textString9][textString20],this._np1587.textString38);
               UtilsUtils._xl9503(this._pw3452[textString21][textString22],this._np1587.textString14);
               TextField(this._pw3452[textString7]).restrict = TextLocalizer.textString1;
               TextField(this._pw3452[textString7]).maxChars = TextLocalizer.count7;
               UtilsUtils._xl9503(this._pw3452[textString7],"");
               CodeVerificationHelper.authenticateUser(this._pw3452);
               return;
            case textString41:
               UtilsUtils._xl9503(this._pw3452[textString17],this._np1587.textString28);
               UtilsUtils._xl9503(this._pw3452[textString18],this._np1587.textString29);
               UtilsUtils._xl9503(this._pw3452[textString7],this.textString47);
               TextField(this._pw3452[textString7]).restrict = TextLocalizer.textString1;
               TextField(this._pw3452[textString7]).maxChars = TextLocalizer.count7;
               CodeVerificationHelper.authenticateUser(this._pw3452);
               return;
            case textString42:
               UtilsUtils._xl9503(this._pw3452[textString17],this._np1587.textString30);
               UtilsUtils._xl9503(this._pw3452[textString9][textString20],this._np1587.textString13);
               return;
            case textString46:
               UtilsUtils._xl9503(this._pw3452[textString17],this._np1587.textString35);
               UtilsUtils._xl9503(this._pw3452[textString9][textString20],this._np1587.textString13);
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
      
      private function authenticateUser6(param1:MouseEvent = null) : void
      {
         this._ym12228.authenticateUser6(this._pw3452[textString7].text,this._pw3452[textString8].text);
      }
      
      private function _dw11818() : void
      {
         switch(this._pw3452.currentLabel)
         {
            case textString43:
               UtilsUtils._xl9503(this._pw3452[textString17],this._np1587.textString31);
               UtilsUtils._xl9503(this._pw3452[textString18],this._np1587.textString32);
               UtilsUtils._xl9503(this._pw3452[textString19],this._np1587.textString33);
               UtilsUtils._xl9503(this._pw3452[textString9][textString20],this._np1587.textString13);
               TextField(this._pw3452[textString7]).restrict = TextLocalizer.textString3;
               TextField(this._pw3452[textString8]).restrict = TextLocalizer.textString3;
               TextField(this._pw3452[textString7]).displayAsPassword = true;
               TextField(this._pw3452[textString8]).displayAsPassword = true;
               UtilsUtils._xl9503(this._pw3452[textString7],"");
               UtilsUtils._xl9503(this._pw3452[textString8],"");
               return;
            case textString44:
               UtilsUtils._xl9503(this._pw3452[textString17],this._np1587.textString31);
               UtilsUtils._xl9503(this._pw3452[textString18],this._np1587.textString32);
               UtilsUtils._xl9503(this._pw3452[textString19],this._np1587.textString33);
               UtilsUtils._xl9503(this._pw3452[textString7],this.textString47);
               UtilsUtils._xl9503(this._pw3452[textString8],this.textString48);
               TextField(this._pw3452[textString7]).displayAsPassword = true;
               TextField(this._pw3452[textString8]).displayAsPassword = true;
               return;
            case textString45:
               UtilsUtils._xl9503(this._pw3452[textString17],this._np1587.textString34);
               UtilsUtils._xl9503(this._pw3452[textString9][textString20],this._np1587.textString13);
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
         var count:int = int(this._ym12228._mp5106());
         switch(count)
         {
            case LoginModule.count2:
            case LoginModule.count5:
            case LoginModule.count11:
               if(param1.target == this._pw3452[textString7] && this._pw3452[textString7].text.length > 0)
               {
                  this._pw3452[textString8].stage.focus = this._pw3452[textString8];
               }
               else if(param1.target == this._pw3452[textString8] && this._pw3452[textString7].text.length > 0 && this._pw3452[textString8].text.length > 0)
               {
                  switch(count)
                  {
                     case LoginModule.count2:
                        this.handleSocket();
                        break;
                     case LoginModule.count5:
                        this.authenticateUser2();
                        break;
                     case LoginModule.count11:
                        this.authenticateUser6();
                  }
               }
               return;
            case LoginModule.count8:
               if(this._pw3452[textString7].text.length > 0)
               {
                  this.authenticateUser5();
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
            case LoginModule.count2:
            case LoginModule.count5:
            case LoginModule.count11:
               if(this._lt4172 == null)
               {
                  this._lt4172 = this._pw3452[textString7];
               }
               else if(this._pw3452.stage.focus is TextField && TextField(this._pw3452.stage.focus).type == TextFieldType.INPUT)
               {
                  this._lt4172 = this._pw3452.stage.focus;
               }
               this._pw3452.stage.focus = this._lt4172;
               return;
            case LoginModule.count8:
               this._pw3452.stage.focus = this._pw3452[textString7];
               return;
            case LoginModule.count3:
            case LoginModule.count6:
            case LoginModule.count9:
            case LoginModule.count12:
               this._pw3452.stage.focus = null;
               return;
            default:
               return;
         }
      }
   }
}

