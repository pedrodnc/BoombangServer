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
      
      private static const textString:String = "mcFondoTituloMV";
      
      private static const textString1:String = "mcBotonSiguienteMV";
      
      private static const textString2:String = "tfBotonSiguienteMV";
      
      private static const textString3:String = "mcBotonCerrarMV";
      
      private static const textString4:String = "mcBotonCerrarHitAreaMV";
      
      private static const textString5:String = "tfTexto1MarketingViral";
      
      private static const textString6:String = "tfTexto2MarketingViral";
      
      private static const textString7:String = "tfTexto3MarketingViral";
      
      private static const textString8:String = "tfCantidadPostales";
      
      private static const textString9:String = "tfEnviarPostal";
      
      private static const textString10:String = "tfEscribeNombre";
      
      private static const textString11:String = "tfEscribeEmails";
      
      private static const textString12:String = "tfNombreMV";
      
      private static const textString13:String = "tfEmailMV";
      
      private static const textString14:String = "mcFondoTextoMV";
      
      private static const textString15:String = "mcNumero";
      
      private static const textString16:String = "mcEstadoEmailMV";
      
      private static const textString17:String = "inicio";
      
      private static const textString18:String = "invitar";
      
      private static const textString19:String = "enviadas";
      
      private static const textString20:String = "limiteEnviadas";
      
      private static const textString21:String = "noVisible";
      
      private static const textString22:String = "normal";
      
      private static const textString23:String = "rollover";
      
      private static const textString24:String = "envio";
      
      private static const textString25:String = "normal";
      
      private static const textString26:String = "rollover";
      
      private static const textString27:String = "amarillo";
      
      private static const textString28:String = "azul";
      
      private static const textString29:String = "ok";
      
      private static const textString30:String = "warning";
      
      private static const textString31:String = "ninguno";
      
      private static const textString32:String = "gris";
      
      private static const textString33:String = "verde";
      
      private static const textString34:String = "azul";
      
      public static const count:int = -1;
      
      public static const count1:int = 1;
      
      public static const count2:int = 2;
      
      public static const count4:int = 3;
      
      public static const count4:int = 4;
      
      private static const count5:int = 5;
      
      private static const count6:int = 1;
      
      private static const count7:int = 2;
      
      private static const count8:int = 3;
      
      private static const count9:int = 4;
      
      private static const count10:int = 5;
      
      private var _ic10204:MovieClip;
      
      private var textString3:int;
      
      private var _qh1795:Function;
      
      private var _gy10361:ChoosesceneModel;
      
      private var _vc10957:ChoosesceneController;
      
      private var logs:Logger;
      
      private var count12:int;
      
      private var count13:int;
      
      private var items:Array;
      
      private var items1:Array;
      
      private var count:int;
      
      public function PanelsuperiorderechoModel(param1:MovieClip, param2:Function, param3:ChoosesceneModel, param4:ChoosesceneController)
      {
         super();
         this._ic10204 = param1;
         this._qh1795 = param2;
         this._gy10361 = param3;
         this._vc10957 = param4;
         this._vc10957.addEventListener(LoginEvents.textString,this.authenticateUser);
         this.logs = Logger.getInstance();
         StringUtils._dp2863(this._ic10204,this.stop);
         this.count13 = count5 - UserSession.getInstance()._tc16118;
         this.count12 = UserSession.getInstance()._ec10230;
         if(this._ic10204.currentLabel == textString17)
         {
            this.attack();
            this.stop7();
         }
         this._ic10204.visible = false;
         this.textString3 = count;
         UtilsUtils._vt11823(this._ic10204,textString21);
         this.count = _xw1367.count5;
      }
      
      public function get status() : int
      {
         return this.textString3;
      }
      
      private function stop() : void
      {
         var count2:int = 0;
         switch(this._ic10204.currentLabel)
         {
            case textString17:
               this.stop7();
               this.attack();
               this.onClick();
               MovieClip(this._ic10204[textString1]).visible = true;
               MovieClip(this._ic10204[textString1]).gotoAndStop(textString25);
               TextField(this._ic10204[textString2]).visible = true;
               return;
            case textString18:
               this.stop8();
               this.onClick();
               this._na15403();
               this._xp9663(true);
               this._gk15598();
               MovieClip(this._ic10204[textString1]).visible = true;
               this.items = new Array();
               count2 = 0;
               while(count2 < count5)
               {
                  this.items.push(count7);
                  count2++;
               }
               return;
            case textString20:
               this.stop9();
               this.onClick();
               MovieClip(this._ic10204[textString1]).visible = false;
               return;
            case textString19:
               this.stop10();
               this.onClick();
               MovieClip(this._ic10204[textString1]).visible = false;
               this._xp9663(false);
               this.stop1();
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
         this._vc10957.removeEventListener(LoginEvents.textString,this.authenticateUser);
         if(this.textString3 != count)
         {
            this.onClick1();
         }
      }
      
      public function show(param1:int, param2:int) : Boolean
      {
         if(this._ic10204.visible == false)
         {
            this.count13 = count5 - UserSession.getInstance()._tc16118;
            _xw1367.getInstance()._uc3178(this._ic10204,this.count);
            this._ic10204.visible = true;
            this._ic10204.x = param1;
            this._ic10204.y = param2;
            this._xo11249(count1);
            return true;
         }
         return false;
      }
      
      public function authenticateUser2() : Boolean
      {
         if(this._ic10204.visible == true)
         {
            _xw1367.getInstance().move2(this._ic10204,this.count);
            this._ic10204.visible = false;
            this._xo11249(count);
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
         var count2:* = false;
         var count:int = 0;
         while(count < count5)
         {
            count2 = count < count5 - this.count13;
            TextField(this._ic10204[textString13 + count]).visible = count2;
            MovieClip(this._ic10204[textString14 + count]).visible = count2;
            MovieClip(this._ic10204[textString15 + count]).visible = count2;
            count++;
         }
      }
      
      private function _gk15598() : void
      {
         var count2:int = 0;
         while(count2 < count5)
         {
            TextField(this._ic10204[textString13 + count2]).restrict = TextLocalizer.textString4;
            TextField(this._ic10204[textString13 + count2]).maxChars = TextLocalizer.count3;
            count2++;
         }
         TextField(this._ic10204[textString12]).restrict = " " + TextLocalizer.textString2;
      }
      
      private function _xp9663(param1:Boolean) : void
      {
         var count:String = null;
         var count3:int = 0;
         if(param1)
         {
            count = TextFieldType.INPUT;
         }
         else
         {
            count = TextFieldType.DYNAMIC;
         }
         TextField(this._ic10204[textString12]).type = count;
         TextField(this._ic10204[textString12]).mouseEnabled = param1;
         while(count3 < count5)
         {
            TextField(this._ic10204[textString13 + count3]).mouseEnabled = param1;
            TextField(this._ic10204[textString13 + count3]).type = count;
            count3++;
         }
      }
      
      private function _cb3012() : Boolean
      {
         var count2:TextField = null;
         var count:String = null;
         var count2:int = 0;
         this.items1 = new Array();
         while(count2 < count5)
         {
            count2 = TextField(this._ic10204[textString13 + count2]);
            count = count2.text;
            if(count2.visible)
            {
               if(count != "")
               {
                  var count3:Boolean = Boolean(UtilsUtils._gv3731(count));
                  this.items[count2] = count10;
               }
               else
               {
                  this.items[count2] = count7;
               }
            }
            else
            {
               this.items[count2] = count7;
            }
            this.items1.push(count);
            count2++;
         }
         return 0 > 0;
      }
      
      private function stop1() : void
      {
         var count2:int = 0;
         var count:int = 0;
         while(count < count5)
         {
            count2 = int(this.items[count]);
            MovieClip(this._ic10204[textString15 + count]).visible = false;
            switch(count2)
            {
               case count8:
                  MovieClip(this._ic10204[textString16 + count]).gotoAndStop(textString29);
                  break;
               case count9:
               case count10:
                  MovieClip(this._ic10204[textString16 + count]).gotoAndStop(textString30);
                  break;
               default:
                  MovieClip(this._ic10204[textString16 + count]).gotoAndStop(textString31);
            }
            count++;
         }
      }
      
      private function _pn12344(param1:MovieClip) : int
      {
         var count:int = 0;
         while(count < count5)
         {
            if(MovieClip(this._ic10204[textString14 + count]) == param1)
            {
               return count;
            }
            count++;
         }
         return -1;
      }
      
      private function _vc4919(param1:MouseEvent) : void
      {
         var count:String = null;
         var count1:String = null;
         var count3:int = int(this._pn12344(MovieClip(param1.target)));
         switch(this.items[count3])
         {
            case count8:
               count1 = textString33;
               count = this._gy10361._pv13766;
               break;
            case count10:
               count1 = textString34;
               count = this._gy10361._fy6436;
               break;
            case count9:
               count1 = textString34;
               count = this._gy10361._xt12365;
         }
         if(count1 != null)
         {
            MovieClip(this._ic10204[textString14 + count3]).gotoAndStop(count1);
            TextField(this._ic10204[textString13 + count3]).text = count;
         }
      }
      
      private function stop2(param1:MouseEvent) : void
      {
         var count:int = int(this._pn12344(MovieClip(param1.target)));
         switch(this.items[count])
         {
            case count8:
            case count10:
            case count9:
               MovieClip(this._ic10204[textString14 + count]).gotoAndStop(textString32);
               TextField(this._ic10204[textString13 + count]).text = this.items1[count];
               return;
            default:
               return;
         }
      }
      
      private function attack() : void
      {
         TextField(this._ic10204[textString2]).mouseEnabled = false;
         MovieClip(this._ic10204[textString3]).hitArea = MovieClip(this._ic10204[textString4]);
         MovieClip(this._ic10204[textString4]).visible = false;
      }
      
      private function stop3(param1:MouseEvent) : void
      {
         if(this.textString3 != count4)
         {
            MovieClip(this._ic10204[textString1]).gotoAndStop(textString23);
         }
      }
      
      private function stop4(param1:MouseEvent) : void
      {
         if(this.textString3 != count4)
         {
            MovieClip(this._ic10204[textString1]).gotoAndStop(textString22);
         }
      }
      
      private function _da3339(param1:MouseEvent) : void
      {
         switch(this.textString3)
         {
            case count1:
               this._xo11249(count2);
               return;
            case count2:
               if(this._cb3012())
               {
                  this._xo11249(count4);
               }
               return;
            case count4:
               return;
            case count4:
               return;
            default:
               return;
         }
      }
      
      private function stop5(param1:MouseEvent) : void
      {
         MovieClip(this._ic10204[textString3]).gotoAndStop(textString26);
      }
      
      private function stop6(param1:MouseEvent) : void
      {
         MovieClip(this._ic10204[textString3]).gotoAndStop(textString25);
      }
      
      private function stop(param1:MouseEvent) : void
      {
         MovieClip(this._ic10204[textString3]).dispatchEvent(new MouseEvent(MouseEvent.ROLL_OUT));
         this.authenticateUser2();
      }
      
      private function stop7() : void
      {
         MovieClip(this._ic10204[textString]).gotoAndStop(textString27);
         UtilsUtils._xl9503(this._ic10204[TF_TITULO],this._gy10361._ig12538);
         UtilsUtils._xl9503(this._ic10204[textString2],this._gy10361._yr5403);
         UtilsUtils._xl9503(this._ic10204[textString5],this._gy10361._fd11851);
         UtilsUtils._xl9503(this._ic10204[textString6],this._gy10361._hl15547);
         UtilsUtils._xl9503(this._ic10204[textString7],this._gy10361._sn14441);
         UtilsUtils._xl9503(this._ic10204[textString8],this.count12.toString());
      }
      
      private function stop8() : void
      {
         if(this.count13 > 0)
         {
            UtilsUtils._bj8346(this._ic10204[TF_TITULO],this._gy10361._ed205.replace("CANTENVIADAS",this.count13.toString()));
            MovieClip(this._ic10204[textString]).gotoAndStop(textString28);
         }
         else
         {
            UtilsUtils._xl9503(this._ic10204[TF_TITULO],this._gy10361._ig12538);
            MovieClip(this._ic10204[textString]).gotoAndStop(textString27);
         }
         UtilsUtils._xl9503(this._ic10204[textString2],this._gy10361._yi2726);
         if(this.count13 < count5)
         {
            UtilsUtils._xl9503(this._ic10204[textString9],this._gy10361._jq249);
         }
         else
         {
            UtilsUtils._bj8346(this._ic10204[textString9],this._gy10361._wu9397);
         }
         UtilsUtils._xl9503(this._ic10204[textString10],this._gy10361._em15093);
         UtilsUtils._xl9503(this._ic10204[textString11],this._gy10361._ns11561);
      }
      
      private function stop9() : void
      {
         UtilsUtils._bj8346(this._ic10204[TF_TITULO],this._gy10361._ed205.replace("CANTENVIADAS",this.count13.toString()));
         MovieClip(this._ic10204[textString]).gotoAndStop(textString28);
         UtilsUtils._bj8346(this._ic10204[textString9],this._gy10361._wu9397);
      }
      
      private function stop10() : void
      {
         UtilsUtils._bj8346(this._ic10204[TF_TITULO],this._gy10361._ed205.replace("CANTENVIADAS",this.count13.toString()));
         MovieClip(this._ic10204[textString]).gotoAndStop(textString28);
         UtilsUtils._bj8346(this._ic10204[textString9],this._gy10361._ft9637);
      }
      
      public function _xo11249(param1:int) : void
      {
         if(this.textString3 == count4)
         {
            this.move();
         }
         if(this.textString3 != count)
         {
            this.onClick1();
         }
         switch(param1)
         {
            case count1:
               UtilsUtils._vt11823(this._ic10204,textString17);
               break;
            case count2:
               if(this.count13 < count5)
               {
                  UtilsUtils._vt11823(this._ic10204,textString18);
                  break;
               }
               UtilsUtils._vt11823(this._ic10204,textString20);
               break;
            case count4:
               MovieClip(this._ic10204[textString1]).gotoAndPlay(textString24);
               TextField(this._ic10204[textString2]).visible = false;
               this._xp9663(false);
               this._ng10555();
               break;
            case count4:
               UtilsUtils._vt11823(this._ic10204,textString19);
               break;
            case count:
               UtilsUtils._vt11823(this._ic10204,textString21);
         }
         this.textString3 = param1;
      }
      
      private function _ng10555() : void
      {
         var count2:TextField = null;
         var count2:int = 0;
         var count:Array = new Array();
         var count3:String = "BoomBang";
         var count1:TextField = TextField(this._ic10204[textString12]);
         if(count1.text != "")
         {
            count3 = count1.text;
         }
         while(count2 < count5)
         {
            count2 = TextField(this._ic10204[textString13 + count2]);
            if(this.items[count2] == count6)
            {
               count.push(count2.text);
            }
            count2++;
         }
         this._vc10957.authenticateUser(count3,count);
      }
      
      public function _yp12555(param1:Array) : void
      {
         this._ne8926(param1);
         if(this.status == count4)
         {
            this._xo11249(count4);
         }
      }
      
      private function _ne8926(param1:Array) : void
      {
         var count1:int = 0;
         while(count1 < count5)
         {
            if(this.items[count1] == count6)
            {
               if(0 + 2 < param1.length)
               {
                  if(param1.length < 0 + 2 + 1)
                  {
                     this.logs._kp3815(new Logs(Logger.count2,"FichaMarketingViral.procesarTramaMarketingViral",param1.toString()));
                     return;
                  }
                  var count:uint = uint(param1[0 + 2]);
                  this.items[count1] = count10;
               }
               else
               {
                  this.items[count1] = count10;
               }
               count3++;
            }
            count1++;
         }
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:uint = 0;
         var count1:Array = param1.items;
         count = uint(String(count1[0]).charCodeAt(0));
         switch(count)
         {
            case SocketManager.count11:
               var count3:uint = uint(String(count1[1]).charCodeAt(0));
               switch(0)
               {
                  case LoginProtocol.count16:
                     if(this._ic10204.visible)
                     {
                        this._yp12555(count1);
                     }
               }
               return;
            default:
               return;
         }
      }
      
      private function onClick() : void
      {
         MovieClip(this._ic10204[textString1]).addEventListener(MouseEvent.ROLL_OVER,this.stop3);
         MovieClip(this._ic10204[textString1]).addEventListener(MouseEvent.ROLL_OUT,this.stop4);
         MovieClip(this._ic10204[textString1]).addEventListener(MouseEvent.CLICK,this._da3339);
         MovieClip(this._ic10204[textString1]).tabEnabled = false;
         MovieClip(this._ic10204[textString3]).addEventListener(MouseEvent.ROLL_OVER,this.stop5);
         MovieClip(this._ic10204[textString3]).addEventListener(MouseEvent.ROLL_OUT,this.stop6);
         MovieClip(this._ic10204[textString3]).addEventListener(MouseEvent.CLICK,this.stop);
         MovieClip(this._ic10204[textString3]).tabEnabled = false;
      }
      
      private function onClick1() : void
      {
         if(this._ic10204[textString1] != null)
         {
            MovieClip(this._ic10204[textString1]).removeEventListener(MouseEvent.ROLL_OVER,this.stop3);
            MovieClip(this._ic10204[textString1]).removeEventListener(MouseEvent.ROLL_OUT,this.stop4);
            MovieClip(this._ic10204[textString1]).removeEventListener(MouseEvent.CLICK,this._da3339);
         }
         if(this._ic10204[textString3] != null)
         {
            MovieClip(this._ic10204[textString3]).removeEventListener(MouseEvent.ROLL_OVER,this.stop5);
            MovieClip(this._ic10204[textString3]).removeEventListener(MouseEvent.ROLL_OUT,this.stop6);
            MovieClip(this._ic10204[textString3]).removeEventListener(MouseEvent.CLICK,this.stop);
         }
      }
      
      private function _xd8053() : void
      {
         var count2:MovieClip = null;
         var count:int = 0;
         while(count < count5)
         {
            count2 = MovieClip(this._ic10204[textString14 + count]);
            count2.addEventListener(MouseEvent.ROLL_OVER,this._vc4919);
            count2.addEventListener(MouseEvent.ROLL_OUT,this.stop2);
            count++;
         }
      }
      
      private function move() : void
      {
         var count2:MovieClip = null;
         var count:int = 0;
         while(count < count5)
         {
            count2 = MovieClip(this._ic10204[textString14 + count]);
            count2.removeEventListener(MouseEvent.ROLL_OVER,this._vc4919);
            count2.removeEventListener(MouseEvent.ROLL_OUT,this.stop2);
            count++;
         }
      }
   }
}

