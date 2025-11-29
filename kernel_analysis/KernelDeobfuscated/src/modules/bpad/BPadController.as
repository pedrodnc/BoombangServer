package src.modules.bpad
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import src.allData.*;
   import src.allData.color.*;
   import src.allData.texts.*;
   import src.config.*;
   import src.logs.*;
   import src.person.*;
   import src.tv.boombang.application.bpad.gui.component.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class BpadController
   {
      
      public static var items:Array;
      
      public static var items1:Array;
      
      private static const textString:String = "mcBPadFicha";
      
      private static const textString1:String = "mcFondo";
      
      private static const textString2:String = "mcEtapas";
      
      private static const textString3:String = "mcIconHome";
      
      private static const textString4:String = "mcIconAmigos";
      
      private static const textString5:String = "mcIconBusqueda";
      
      private static const textString6:String = "mcIconContactoAdd";
      
      private static const textString7:String = "tfStatusBar";
      
      private static const urlString26:String = "mcClose";
      
      private static const textString9:String = "tfTitulo";
      
      private static const textString10:String = "tfMensaje";
      
      private static const textString11:String = "mcAreaSeleccion";
      
      private static const textString12:String = "mcIconoPlus";
      
      private static const textString13:String = "mcBotonCancel";
      
      private static const textString14:String = "mcBotonOk";
      
      private static const textString15:String = "tfDeseaSer";
      
      private static const textString16:String = "tfFrace";
      
      private static const textString17:String = "tfCiudadEdad";
      
      private static const textString18:String = "tfName";
      
      private static const textString19:String = "tfLocacion";
      
      private static const textString20:String = "mcClan";
      
      private static const textString21:String = "mcGodFace";
      
      private static const textString22:String = "mcFondoLeerMensaje";
      
      private static const textString23:String = "tfResponder";
      
      private static const textString24:String = "tfSiguiente";
      
      private static const textString25:String = "tfMensajesCount";
      
      private static const textString26:String = "mcBotonResponder";
      
      private static const textString27:String = "mcBotonSiguiente";
      
      private static const textString28:String = "mcDenunciar";
      
      private static const textString29:String = "tfCancelar";
      
      private static const textString30:String = "tfEnviar";
      
      private static const textString31:String = "mclBotonCancelar";
      
      private static const textString32:String = "mcBotonEnviar";
      
      private static const textString33:String = "mclIrAlli";
      
      private static const textString34:String = "mcBotonUp";
      
      private static const textString35:String = "mcBotonDown";
      
      private static const textString36:String = "tfBorrar";
      
      private static const textString37:String = "tfEscribir";
      
      private static const textString38:String = "tfContactosCount";
      
      private static const textString39:String = "mcContactoSeleccion";
      
      private static const textString40:String = "mcBotonBorrar";
      
      private static const textString41:String = "mcBotonEscribir";
      
      private static const textString42:String = "mcBotonEscribirRollOver";
      
      private static const textString43:String = "mcPanelSeleccion";
      
      private static const textString44:String = "mcCirculoSeleccion";
      
      private static const textString45:String = "tfPiensalo";
      
      private static const textString46:String = "tfDescripcion";
      
      private static const textString47:String = "mcBotonAceptar";
      
      private static const textString48:String = "tfAceptar";
      
      private static const textString49:String = "mcCirculoSeleccion";
      
      private static const textString50:String = "tfEscribe";
      
      private static const textString51:String = "inBuscar";
      
      private static const textString52:String = "mcBotonBuscar";
      
      private static const textString53:String = "tfNoExiste";
      
      private static const textString54:String = "mcBuscarResultado";
      
      private static const textString55:String = "tfName";
      
      private static const textString56:String = "tfLocacion";
      
      private static const textString57:String = "mcClan";
      
      private static const textString58:String = "mcIconoPlus";
      
      private static const textString59:String = "mclBusquedaSelect";
      
      private static const textString60:String = "tfMensaje";
      
      private static const textString61:String = "tfAcabasDePedir";
      
      private static const textString62:String = "tfEscoge";
      
      private static const textString63:String = "tfSelecciona";
      
      private static const textString64:String = "mcBotonOkContactoAdd";
      
      private static const textString65:String = "mcBotonVolver";
      
      private static const textString66:String = "tfVolver";
      
      private static const textString67:String = "tfMaxCantidadContatos";
      
      private static const textString68:String = "home";
      
      private static const textString69:String = "homeWaiting";
      
      private static const textString70:String = "contactoAddConfirmacion";
      
      private static const textString71:String = "leerMensaje";
      
      private static const textString72:String = "enviarMensaje";
      
      private static const textString73:String = "amigos";
      
      private static const textString74:String = "amigosWaiting";
      
      private static const textString75:String = "confrmarBorrar";
      
      private static const textString76:String = "moreInfo";
      
      private static const textString77:String = "buscar";
      
      private static const textString78:String = "contactoSendAdd";
      
      private static const textString79:String = "contactoAdd";
      
      private static const textString80:String = "limiteAlcanzado";
      
      private static const textString81:String = "limiteAlcanzadoDelOtro";
      
      public static const _rg8059:uint = 16777215;
      
      public static const _ir857:uint = 9538935;
      
      public static const _at5301:uint = 16777215;
      
      public static const _su101:uint = 3815727;
      
      public static const _jd8476:uint = 3815727;
      
      public static const _ar11608:uint = 10393986;
      
      public static const _oe8454:uint = 3815727;
      
      public static const _yn2395:uint = 10393986;
      
      public static const _gl11464:uint = 10393986;
      
      public static const _bo8790:uint = 16763904;
      
      public static const _kb7987:uint = 3240704;
      
      public static const _vw777:uint = 16777215;
      
      public static const _vd10673:uint = 0;
      
      public static const count:int = 1;
      
      public static const count1:int = 2;
      
      public static const count2:int = 3;
      
      public static const count3:int = 4;
      
      public static const count4:int = 5;
      
      public static const count5:int = 6;
      
      public static const count6:int = 7;
      
      public static const count7:int = 8;
      
      public static const count8:int = 9;
      
      public static const count9:int = 10;
      
      public static const count10:int = 11;
      
      public static const count11:int = 12;
      
      public static const count12:int = 13;
      
      public static const count13:int = 14;
      
      public static const count14:int = 4;
      
      public static const count15:int = 4;
      
      private static const count16:int = 1;
      
      private static const count17:int = 1000 * 30;
      
      private static const textString82:String = "MinIntervalToSenToAll";
      
      private static var textString83:String = "";
      
      private static var textString84:String = "";
      
      private var _ag15387:MovieClip;
      
      private var _sy1171:MovieClip;
      
      private var _tb4460:MovieClip;
      
      private var textString3:int;
      
      private var _qq4406:MovieClip;
      
      private var textString85:String;
      
      private var count19:int;
      
      private var _yj10875:BpadModel;
      
      private var _jb3891:BPadController;
      
      private var items2:Array;
      
      private var items3:Array;
      
      private var count20:int;
      
      private var _al508:Bpad;
      
      private var _uy6039:BPadUI;
      
      private var items4:Array;
      
      private var items5:Array;
      
      public var _nw3403:PersonAnimation;
      
      private var textString1:MovieClip;
      
      public function BpadController(param1:MovieClip, param2:BPadController)
      {
         super();
         this._ag15387 = MovieClip(param1[textString]);
         this._sy1171 = MovieClip(this._ag15387[textString1]);
         this.items4 = new Array();
         this._jb3891 = param2;
         this._tb4460 = MovieClip(this._ag15387[textString2]);
         StringUtils._dp2863(this._tb4460,this._xm9865);
         this._yj10875 = param2._yj10875;
         this.destroy(count);
         this.onClick();
         this.items2 = new Array();
         this.items2.push(this._ag15387[textString3]);
         this.items2.push(this._ag15387[textString4]);
         this.items2.push(this._ag15387[textString5]);
         this.items2.push(this._ag15387[textString6]);
         MovieClip(this._ag15387[textString3]).mouseChildren = false;
         MovieClip(this._ag15387[textString4]).mouseChildren = false;
         MovieClip(this._ag15387[textString5]).mouseChildren = false;
         MovieClip(this._ag15387[textString6]).mouseChildren = false;
         this._ed1033 = false;
      }
      
      private static function start(param1:Event) : void
      {
         var count:TextField = TextField(param1.target);
         if(count.textHeight >= count.height - 8)
         {
            count.text = textString83;
            if(count.caretIndex > 0 && count.caretIndex < count.text.length)
            {
               count.setSelection(count.caretIndex - 1,count.caretIndex - 1);
            }
         }
         else
         {
            textString83 = count.text;
         }
      }
      
      private static function _dw15947(param1:Event) : void
      {
         var count:TextField = TextField(param1.target);
         if(count.textHeight >= count.height - 4)
         {
            count.text = textString84;
            if(count.caretIndex > 0 && count.caretIndex < count.text.length)
            {
               count.setSelection(count.caretIndex - 1,count.caretIndex - 1);
            }
            count.scrollV = 0;
         }
         else
         {
            textString84 = count.text;
         }
      }
      
      public static function _me11735(param1:Bpad, param2:Array) : BPadUI
      {
         var count3:BPadUI = null;
         for each(count3 in param2)
         {
            if(count3.id == param1.count5)
            {
               return count3;
            }
         }
         return null;
      }
      
      public static function _rm10923(param1:int) : void
      {
         var _jf2842:Bpad = null;
         var _yk2173:Function = null;
         var count21:int = param1;
         _yk2173 = function(param1:Bpad, param2:int, param3:Array):Boolean
         {
            return param1.count5 != count21;
         };
         if(items1.length <= 0)
         {
            return;
         }
         items1 = items1.filter(_yk2173);
      }
      
      public function get status() : int
      {
         return this.textString3;
      }
      
      public function destroy() : void
      {
         this.onClick1();
         this.onClick1();
         this._ag15387 = null;
         this._jb3891 = null;
         this._yj10875 = null;
         this.items2 = null;
      }
      
      private function _yj4516(param1:String) : void
      {
         if(this._tb4460.currentLabel == param1)
         {
            this._ch3584();
            return;
         }
         this.onClick1();
         UtilsUtils._vt11823(this._tb4460,param1);
      }
      
      public function show() : void
      {
         if(this._dy867 == false)
         {
            this._dy867 = true;
         }
      }
      
      public function authenticateUser2(param1:MouseEvent = null) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(this._dy867 == true)
         {
            this._dy867 = false;
         }
      }
      
      public function get _dy867() : Boolean
      {
         return this._ag15387.visible;
      }
      
      public function set _dy867(param1:Boolean) : void
      {
         if(this._ag15387.visible != param1)
         {
            if(param1)
            {
               this.destroy(count);
               this._jb3891._cf13877();
               this._jb3891._kw7646();
            }
            else
            {
               if(this.status == count3 && this._al508 != null)
               {
                  this._lr1713(this._al508);
                  this._al508 = null;
                  this._jb3891._td7105();
               }
               this._jb3891._ek14998();
               this._jb3891._lk15090();
            }
         }
         this._ag15387.visible = param1;
      }
      
      private function stop() : void
      {
         UtilsUtils._xl9503(this._ag15387[textString7],this._yj10875.textString28);
      }
      
      public function _jp15854() : int
      {
         var count2:BPadUI = null;
         var count:int = 0;
         for each(count2 in items)
         {
            if(count2.isEnabled)
            {
               count++;
            }
         }
         return count;
      }
      
      private function _ch3584() : void
      {
         var count2:BPadUI = null;
         var count:TextField = null;
         var count3:TextField = null;
         var count1:MovieClip = null;
         var count2:MovieClip = null;
         var count7:MovieClip = null;
         var items:MovieClip = null;
         var count8:MovieClip = null;
         var count6:int = 0;
         MovieClip(this._ag15387[textString5]).visible = true;
         switch(this._tb4460.currentLabel)
         {
            case textString68:
               UtilsUtils._xl9503(this._tb4460[textString9 + 0],items1.length + " " + this._yj10875.textString5);
               UtilsUtils._xl9503(this._tb4460[textString10 + 0],this._yj10875.textString26);
               UtilsUtils._xl9503(this._tb4460[textString9 + 1],this._jp15854() + " " + this._yj10875.textString6);
               UtilsUtils._xl9503(this._tb4460[textString10 + 1],this._yj10875.textString27);
               MovieClip(this._tb4460[textString12 + 0]).gotoAndStop(CommoncomponentsView._vk6252);
               MovieClip(this._tb4460[textString12 + 1]).gotoAndStop(CommoncomponentsView._vk6252);
               MovieClip(this._tb4460[textString12 + 0]).mouseEnabled = false;
               MovieClip(this._tb4460[textString12 + 1]).mouseEnabled = false;
               TextField(this._tb4460[textString9 + 0]).mouseEnabled = false;
               TextField(this._tb4460[textString9 + 1]).mouseEnabled = false;
               TextField(this._tb4460[textString10 + 0]).mouseEnabled = false;
               TextField(this._tb4460[textString10 + 1]).mouseEnabled = false;
               return;
            case textString69:
               return;
            case textString70:
               this.show1();
               count2 = this._uy6039;
               UtilsUtils._xl9503(this._tb4460[textString15],this._yj10875.textString29);
               UtilsUtils._xl9503(this._tb4460[textString16],count2.textString1);
               UtilsUtils._xl9503(this._tb4460[textString18],count2.textString);
               MovieClip(this._tb4460[textString20]).gotoAndStop(count2.count24);
               this.show(count2);
               return;
            case textString71:
               count = this._tb4460[textString10] as TextField;
               count3 = this._tb4460[textString23] as TextField;
               count1 = this._tb4460[textString26] as MovieClip;
               count2 = this._tb4460[textString27] as MovieClip;
               count7 = this._tb4460[textString22] as MovieClip;
               items = this._tb4460[textString21] as MovieClip;
               items.visible = false;
               count8 = this._tb4460[textString28] as MovieClip;
               count8.visible = true;
               switch(this._al508.count6)
               {
                  case Bpad.count1:
                     count2 = _me11735(this._al508,items);
                     if(count2 == null)
                     {
                        this.stop9();
                        return;
                     }
                     this.show(count2);
                     count3.visible = true;
                     count1.visible = true;
                     StringUtils._ts14032(count7,_gl11464);
                     UtilsUtils._np7275(count,_vw777);
                     break;
                  case Bpad.count2:
                     count2 = _me11735(this._al508,items);
                     if(count2 == null)
                     {
                        this.stop9();
                        return;
                     }
                     this.show(count2);
                     count3.visible = true;
                     count1.visible = true;
                     StringUtils._ts14032(count7,_bo8790);
                     UtilsUtils._np7275(count,_vd10673);
                     break;
                  case 4:
                     count2 = _me11735(this._al508,items);
                     if(count2 == null)
                     {
                        this.stop9();
                        return;
                     }
                     this.show(count2);
                     count3.visible = true;
                     count1.visible = true;
                     StringUtils._ts14032(count7,12434877);
                     UtilsUtils._np7275(count,0);
                     break;
                  case Bpad.count4:
                     count2 = _me11735(this._al508,items);
                     if(count2 == null)
                     {
                        this.stop9();
                        return;
                     }
                     this.show(count2);
                     count3.visible = false;
                     count1.visible = false;
                     if(this.textString1)
                     {
                        this.textString1.destroy();
                        this.textString1 = null;
                     }
                     this.textString1 = new ComponentModel(this._al508.msg.split(","));
                     count7.addChild(this.textString1);
                     break;
                  case Bpad.count3:
                     count2 = new BPadUI();
                     count2.textString = this._yj10875.textString46;
                     count2.isEnabled1 = true;
                     count2.textString2 = "";
                     count3.visible = false;
                     count1.visible = false;
                     StringUtils._ts14032(count7,_kb7987);
                     items.visible = true;
                     count8.visible = false;
                     break;
                  case -1:
                     Logger.getInstance()._sn5663("TYPE OF MESSAGE -1 WRONG");
                     this.stop9();
                     return;
               }
               UtilsUtils._xl9503(this._tb4460[textString18],count2.textString);
               if(count2.isEnabled1)
               {
                  UtilsUtils._np7275(this._tb4460[textString18],_oe8454);
               }
               else
               {
                  UtilsUtils._np7275(this._tb4460[textString18],_yn2395);
               }
               MovieClip(this._tb4460[textString20]).gotoAndStop(count2.count24);
               UtilsUtils._xl9503(this._tb4460[textString19],count2.textString2);
               if(this._al508.count6 != Bpad.count4)
               {
                  TextField(this._tb4460[textString10]).text = this._al508.msg;
               }
               else
               {
                  TextField(this._tb4460[textString10]).text = "";
               }
               UtilsUtils._xl9503(count3,this._yj10875.textString10);
               UtilsUtils._xl9503(this._tb4460[textString24],this._yj10875.textString1);
               count1.mouseChildren = false;
               count1.gotoAndStop(CommoncomponentsView._vk6252);
               count2.mouseChildren = false;
               count2.gotoAndStop(CommoncomponentsView._vk6252);
               this.textString85 = irrcrpt("<JSRX GSPSV=\"#444444\">",4) + this._yj10875.textString8 + " " + StringUtils.getString1(this._al508.date,Configuration.count,Configuration.urlString11) + "</FONT>";
               this.textString85 += " " + StringUtils.getString2(this._al508.date);
               UtilsUtils._bj8346(this._ag15387[textString7],this.textString85);
               this._mi11107();
               return;
            case textString72:
               count2 = BPadUI(this.items4[0]);
               this.show(count2);
               UtilsUtils._xl9503(this._tb4460[textString18],count2.textString);
               if(count2.isEnabled1)
               {
                  UtilsUtils._np7275(this._tb4460[textString18],_oe8454);
               }
               else
               {
                  UtilsUtils._np7275(this._tb4460[textString18],_yn2395);
               }
               MovieClip(this._tb4460[textString20]).gotoAndStop(count2.count24);
               UtilsUtils._xl9503(this._tb4460[textString19],count2.textString2);
               TextField(this._tb4460[textString10]).text = "";
               if(UserSession.getInstance().count10 <= 13)
               {
                  TextField(this._tb4460[textString10]).restrict = TextLocalizer.textString;
               }
               TextField(this._tb4460[textString10]).maxChars = TextLocalizer.count17;
               this._ag15387.stage.focus = TextField(this._tb4460[textString10]);
               UtilsUtils._xl9503(this._tb4460[textString29],this._yj10875.textString2);
               UtilsUtils._xl9503(this._tb4460[textString30],this._yj10875.textString13);
               MovieClip(this._tb4460[textString31]).mouseChildren = false;
               MovieClip(this._tb4460[textString32]).mouseChildren = false;
               MovieClip(this._tb4460[textString31]).gotoAndStop(CommoncomponentsView._vk6252);
               MovieClip(this._tb4460[textString32]).gotoAndStop(CommoncomponentsView._vk6252);
               return;
            case textString74:
               UtilsUtils._xl9503(this._tb4460[textString36],this._yj10875.textString17);
               TextField(this._tb4460[textString36]).visible = false;
               MovieClip(this._tb4460[textString40]).visible = false;
               TextField(this._tb4460[textString37]).autoSize = TextFieldAutoSize.LEFT;
               TextField(this._tb4460[textString37]).multiline = false;
               TextField(this._tb4460[textString37]).wordWrap = false;
               UtilsUtils._xl9503(this._tb4460[textString37],this._yj10875.textString52);
               MovieClip(this._ag15387[textString5]).visible = false;
               return;
            case textString73:
               this.count20 = 0;
               this._io14724(this.count20);
               UtilsUtils._xl9503(this._tb4460[textString36],this._yj10875.textString17);
               TextField(this._tb4460[textString37]).autoSize = TextFieldAutoSize.LEFT;
               TextField(this._tb4460[textString37]).multiline = false;
               TextField(this._tb4460[textString37]).wordWrap = false;
               UtilsUtils._xl9503(this._tb4460[textString37],this._yj10875.textString52);
               MovieClip(this._tb4460[textString41][textString42]).width = TextField(this._tb4460[textString37]).width * 1.2;
               TextField(this._tb4460[textString36]).visible = false;
               MovieClip(this._tb4460[textString40]).visible = false;
               MovieClip(this._ag15387[textString5]).visible = false;
               count6 = 0;
               while(count6 < count14)
               {
                  TextField(this._tb4460[textString18 + count6]).mouseEnabled = false;
                  TextField(this._tb4460[textString19 + count6]).mouseEnabled = false;
                  MovieClip(this._tb4460[textString39 + count6]).alpha = 0;
                  MovieClip(this._tb4460[textString39 + count6]).doubleClickEnabled = true;
                  count6++;
               }
               count6 = 0;
               while(count6 < count15)
               {
                  MovieClip(this._tb4460[textString43][textString44 + count6]).gotoAndStop(CommoncomponentsView._vk6252);
                  count6++;
               }
               if(this.count19 > 0)
               {
                  MovieClip(this._tb4460[textString43][textString44 + (this.count19 - 1)]).gotoAndStop(CommoncomponentsView._jo8252);
               }
               return;
            case textString75:
               UtilsUtils._xl9503(this._tb4460[textString45],this._yj10875.textString19);
               return;
            case textString76:
               count2 = BPadUI(this.items4[0]);
               UtilsUtils._xl9503(this._tb4460[textString16],count2.textString1);
               UtilsUtils._xl9503(this._tb4460[textString18],count2.textString);
               MovieClip(this._tb4460[textString20]).gotoAndStop(count2.count24);
               TextField(this._tb4460[textString46]).text = count2.description;
               TextField(this._tb4460[textString46]).restrict = TextLocalizer.textString;
               TextField(this._tb4460[textString46]).maxChars = TextLocalizer.count16;
               MovieClip(this._tb4460[textString49 + int(count2.count24 - 1)]).gotoAndStop(CommoncomponentsView._jo8252);
               UtilsUtils._xl9503(this._tb4460[textString48],this._yj10875.textString3);
               UtilsUtils._xl9503(this._tb4460[textString29],this._yj10875.textString2);
               this._ag15387.stage.focus = TextField(this._tb4460[textString46]);
               this.show(count2);
               return;
            case textString77:
               UtilsUtils._xl9503(this._tb4460[textString51],"");
               this._ag15387.stage.focus = TextField(this._tb4460[textString51]);
               TextField(this._tb4460[textString51]).restrict = TextLocalizer.textString2;
               TextField(this._tb4460[textString51]).maxChars = TextLocalizer.count2;
               UtilsUtils._xl9503(this._tb4460[textString50],this._yj10875.textString23);
               UtilsUtils._xl9503(this._tb4460[textString53],this._yj10875.textString35);
               UtilsUtils._xl9503(this._tb4460[textString29],this._yj10875.textString2);
               UtilsUtils._xl9503(this._tb4460[textString54][textString60 + 0],this._yj10875.textString24);
               UtilsUtils._xl9503(this._tb4460[textString54][textString60 + 1],this._yj10875.textString25);
               TextField(this._tb4460[textString53]).visible = false;
               MovieClip(this._tb4460[textString54]).visible = false;
               MovieClip(this._tb4460[textString54][textString59 + 0]).alpha = 0;
               MovieClip(this._tb4460[textString54][textString59 + 1]).alpha = 0;
               MovieClip(this._tb4460[textString54][textString58 + 0]).mouseEnabled = false;
               MovieClip(this._tb4460[textString54][textString58 + 1]).mouseEnabled = false;
               TextField(this._tb4460[textString54][textString60 + 0]).mouseEnabled = false;
               TextField(this._tb4460[textString54][textString60 + 1]).mouseEnabled = false;
               return;
            case textString78:
               count2 = BPadUI(this.items4[0]);
               UtilsUtils._xl9503(this._tb4460[textString48],this._yj10875.textString3);
               UtilsUtils._xl9503(this._tb4460[textString18],count2.textString);
               if(count2.count24 > 0)
               {
                  MovieClip(this._tb4460[textString20]).gotoAndStop(count2.count24);
               }
               else
               {
                  MovieClip(this._tb4460[textString20]).gotoAndStop(1);
               }
               UtilsUtils._xl9503(this._tb4460[textString61],this._yj10875.textString22);
               this.show(count2);
               return;
            case textString79:
               UtilsUtils._xl9503(this._tb4460[textString29],this._yj10875.textString2);
               UtilsUtils._xl9503(this._tb4460[textString63],this._yj10875.textString21);
               if(this._nw3403 != null)
               {
                  this._ij10651(this._nw3403);
               }
               else
               {
                  UtilsUtils._xl9503(this._tb4460[textString62],this._yj10875.textString20);
               }
               return;
            case textString80:
               UtilsUtils._xl9503(this._tb4460[textString66],this._yj10875.VOLVER);
               if(UserSession.getInstance().member)
               {
                  UtilsUtils._xl9503(this._tb4460[textString67],this._yj10875.textString55);
                  UtilsUtils._xl9503(this._tb4460[textString38],this._yj10875.textString54);
               }
               else
               {
                  UtilsUtils._xl9503(this._tb4460[textString67],this._yj10875.textString49);
                  UtilsUtils._xl9503(this._tb4460[textString38],this._yj10875.textString50);
               }
               return;
            case textString81:
               UtilsUtils._xl9503(this._tb4460[textString66],this._yj10875.VOLVER);
               UtilsUtils._xl9503(this._tb4460[textString67],this._yj10875.textString51);
               UtilsUtils._xl9503(this._tb4460[textString18],this._uy6039.textString);
               this.show(this._uy6039);
               return;
            default:
               return;
         }
      }
      
      public function onClick() : void
      {
         MovieClip(this._ag15387[urlString26]).addEventListener(MouseEvent.MOUSE_DOWN,this.authenticateUser2);
         MovieClip(this._ag15387[urlString26]).addEventListener(MouseEvent.ROLL_OVER,this.stop);
         MovieClip(this._ag15387[urlString26]).addEventListener(MouseEvent.ROLL_OUT,this.stop);
         MovieClip(this._ag15387[textString3]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop3);
         MovieClip(this._ag15387[textString3]).addEventListener(MouseEvent.ROLL_OVER,this._rx1506);
         MovieClip(this._ag15387[textString3]).addEventListener(MouseEvent.ROLL_OUT,this._rx1506);
         MovieClip(this._ag15387[textString5]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop3);
         MovieClip(this._ag15387[textString5]).addEventListener(MouseEvent.ROLL_OVER,this._rx1506);
         MovieClip(this._ag15387[textString5]).addEventListener(MouseEvent.ROLL_OUT,this._rx1506);
         MovieClip(this._ag15387[textString4]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop3);
         MovieClip(this._ag15387[textString4]).addEventListener(MouseEvent.ROLL_OVER,this._rx1506);
         MovieClip(this._ag15387[textString4]).addEventListener(MouseEvent.ROLL_OUT,this._rx1506);
         MovieClip(this._ag15387[textString6]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop3);
         MovieClip(this._ag15387[textString6]).addEventListener(MouseEvent.ROLL_OVER,this._rx1506);
         MovieClip(this._ag15387[textString6]).addEventListener(MouseEvent.ROLL_OUT,this._rx1506);
         MovieClip(this._sy1171).addEventListener(MouseEvent.MOUSE_DOWN,this.stop);
      }
      
      public function onClick1() : void
      {
         MovieClip(this._ag15387[urlString26]).removeEventListener(MouseEvent.MOUSE_DOWN,this.authenticateUser2);
         MovieClip(this._ag15387[urlString26]).removeEventListener(MouseEvent.ROLL_OVER,this.stop);
         MovieClip(this._ag15387[urlString26]).removeEventListener(MouseEvent.ROLL_OUT,this.stop);
         MovieClip(this._ag15387[textString3]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop3);
         MovieClip(this._ag15387[textString3]).removeEventListener(MouseEvent.ROLL_OVER,this._rx1506);
         MovieClip(this._ag15387[textString3]).removeEventListener(MouseEvent.ROLL_OUT,this._rx1506);
         MovieClip(this._ag15387[textString5]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop3);
         MovieClip(this._ag15387[textString5]).removeEventListener(MouseEvent.ROLL_OVER,this._rx1506);
         MovieClip(this._ag15387[textString5]).removeEventListener(MouseEvent.ROLL_OUT,this._rx1506);
         MovieClip(this._ag15387[textString4]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop3);
         MovieClip(this._ag15387[textString4]).removeEventListener(MouseEvent.ROLL_OVER,this._rx1506);
         MovieClip(this._ag15387[textString4]).removeEventListener(MouseEvent.ROLL_OUT,this._rx1506);
         MovieClip(this._ag15387[textString6]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop3);
         MovieClip(this._ag15387[textString6]).removeEventListener(MouseEvent.ROLL_OVER,this._rx1506);
         MovieClip(this._ag15387[textString6]).removeEventListener(MouseEvent.ROLL_OUT,this._rx1506);
         MovieClip(this._sy1171).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop);
      }
      
      public function stop(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
            param1.stopPropagation();
         }
      }
      
      public function onClick() : void
      {
         var count2:int = 0;
         switch(this._tb4460.currentLabel)
         {
            case textString68:
               MovieClip(this._tb4460[textString11 + 0]).addEventListener(MouseEvent.ROLL_OVER,this.stop5);
               MovieClip(this._tb4460[textString11 + 0]).addEventListener(MouseEvent.ROLL_OUT,this.stop5);
               MovieClip(this._tb4460[textString11 + 0]).addEventListener(MouseEvent.CLICK,this.stop6);
               MovieClip(this._tb4460[textString11 + 1]).addEventListener(MouseEvent.ROLL_OVER,this.stop5);
               MovieClip(this._tb4460[textString11 + 1]).addEventListener(MouseEvent.ROLL_OUT,this.stop5);
               MovieClip(this._tb4460[textString11 + 1]).addEventListener(MouseEvent.CLICK,this.stop6);
               return;
            case textString69:
               return;
            case textString70:
               MovieClip(this._tb4460[textString14]).addEventListener(MouseEvent.ROLL_OVER,this.stop);
               MovieClip(this._tb4460[textString14]).addEventListener(MouseEvent.ROLL_OUT,this.stop);
               MovieClip(this._tb4460[textString14]).addEventListener(MouseEvent.CLICK,this.stop7);
               MovieClip(this._tb4460[textString13]).addEventListener(MouseEvent.ROLL_OUT,this.stop);
               MovieClip(this._tb4460[textString13]).addEventListener(MouseEvent.ROLL_OVER,this.stop);
               MovieClip(this._tb4460[textString13]).addEventListener(MouseEvent.CLICK,this._vv14854);
               return;
            case textString71:
               MovieClip(this._tb4460[textString27]).addEventListener(MouseEvent.ROLL_OVER,this.stop8);
               MovieClip(this._tb4460[textString27]).addEventListener(MouseEvent.ROLL_OUT,this.stop8);
               MovieClip(this._tb4460[textString27]).addEventListener(MouseEvent.CLICK,this.stop9);
               MovieClip(this._tb4460[textString26]).addEventListener(MouseEvent.ROLL_OVER,this.stop8);
               MovieClip(this._tb4460[textString26]).addEventListener(MouseEvent.ROLL_OUT,this.stop8);
               MovieClip(this._tb4460[textString26]).addEventListener(MouseEvent.CLICK,this.stop10);
               MovieClip(this._tb4460[textString28]).addEventListener(MouseEvent.ROLL_OVER,this._ld9235);
               MovieClip(this._tb4460[textString28]).addEventListener(MouseEvent.ROLL_OUT,this._ld9235);
               MovieClip(this._tb4460[textString28]).addEventListener(MouseEvent.CLICK,this.stop11);
               return;
            case textString72:
               MovieClip(this._tb4460[textString31]).addEventListener(MouseEvent.ROLL_OVER,this.stop12);
               MovieClip(this._tb4460[textString31]).addEventListener(MouseEvent.ROLL_OUT,this.stop12);
               MovieClip(this._tb4460[textString31]).addEventListener(MouseEvent.CLICK,this.stop13);
               MovieClip(this._tb4460[textString32]).addEventListener(MouseEvent.ROLL_OVER,this.stop12);
               MovieClip(this._tb4460[textString32]).addEventListener(MouseEvent.ROLL_OUT,this.stop12);
               MovieClip(this._tb4460[textString32]).addEventListener(MouseEvent.CLICK,this._pa6081);
               TextField(this._tb4460[textString10]).addEventListener(Event.CHANGE,start);
               return;
            case textString74:
               return;
            case textString73:
               MovieClip(this._tb4460[textString34]).addEventListener(MouseEvent.ROLL_OVER,this.stop);
               MovieClip(this._tb4460[textString34]).addEventListener(MouseEvent.ROLL_OUT,this.stop);
               MovieClip(this._tb4460[textString34]).addEventListener(MouseEvent.CLICK,this.stop15);
               MovieClip(this._tb4460[textString35]).addEventListener(MouseEvent.ROLL_OVER,this.stop);
               MovieClip(this._tb4460[textString35]).addEventListener(MouseEvent.ROLL_OUT,this.stop);
               MovieClip(this._tb4460[textString35]).addEventListener(MouseEvent.CLICK,this.stop14);
               count2 = 0;
               while(count2 < count14)
               {
                  MovieClip(this._tb4460[textString39 + count2]).addEventListener(MouseEvent.CLICK,this.stop16);
                  MovieClip(this._tb4460[textString39 + count2]).addEventListener(MouseEvent.DOUBLE_CLICK,this._et6494);
                  MovieClip(this._tb4460[textString12 + count2]).addEventListener(MouseEvent.ROLL_OVER,this.stop);
                  MovieClip(this._tb4460[textString12 + count2]).addEventListener(MouseEvent.ROLL_OUT,this.stop);
                  MovieClip(this._tb4460[textString12 + count2]).addEventListener(MouseEvent.CLICK,this._vr5614);
                  MovieClip(this._tb4460[textString33 + count2]).addEventListener(MouseEvent.ROLL_OVER,this.stop);
                  MovieClip(this._tb4460[textString33 + count2]).addEventListener(MouseEvent.ROLL_OUT,this.stop);
                  MovieClip(this._tb4460[textString33 + count2]).addEventListener(MouseEvent.CLICK,this.stop21);
                  count2++;
               }
               count2 = 0;
               while(count2 < count15)
               {
                  MovieClip(this._tb4460[textString43][textString44 + count2]).addEventListener(MouseEvent.ROLL_OVER,this._yo3315);
                  MovieClip(this._tb4460[textString43][textString44 + count2]).addEventListener(MouseEvent.ROLL_OUT,this._yo3315);
                  MovieClip(this._tb4460[textString43][textString44 + count2]).addEventListener(MouseEvent.CLICK,this.stop20);
                  count2++;
               }
               MovieClip(this._tb4460[textString40]).addEventListener(MouseEvent.ROLL_OVER,this.stop17);
               MovieClip(this._tb4460[textString40]).addEventListener(MouseEvent.ROLL_OUT,this.stop17);
               MovieClip(this._tb4460[textString40]).addEventListener(MouseEvent.CLICK,this.stop19);
               MovieClip(this._tb4460[textString41]).addEventListener(MouseEvent.ROLL_OVER,this.stop17);
               MovieClip(this._tb4460[textString41]).addEventListener(MouseEvent.ROLL_OUT,this.stop17);
               MovieClip(this._tb4460[textString41]).addEventListener(MouseEvent.CLICK,this.stop18);
               return;
            case textString75:
               MovieClip(this._tb4460[textString14]).addEventListener(MouseEvent.ROLL_OVER,this.stop);
               MovieClip(this._tb4460[textString14]).addEventListener(MouseEvent.ROLL_OUT,this.stop);
               MovieClip(this._tb4460[textString14]).addEventListener(MouseEvent.CLICK,this.stop23);
               MovieClip(this._tb4460[textString13]).addEventListener(MouseEvent.ROLL_OUT,this.stop);
               MovieClip(this._tb4460[textString13]).addEventListener(MouseEvent.ROLL_OVER,this.stop);
               MovieClip(this._tb4460[textString13]).addEventListener(MouseEvent.CLICK,this.stop22);
               return;
            case textString76:
               count2 = 0;
               while(count2 < count15)
               {
                  MovieClip(this._tb4460[textString49 + count2]).addEventListener(MouseEvent.ROLL_OVER,this._qi13184);
                  MovieClip(this._tb4460[textString49 + count2]).addEventListener(MouseEvent.ROLL_OUT,this._qi13184);
                  MovieClip(this._tb4460[textString49 + count2]).addEventListener(MouseEvent.CLICK,this.stop24);
                  count2++;
               }
               MovieClip(this._tb4460[textString31]).addEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString31]).addEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString31]).addEventListener(MouseEvent.CLICK,this._rg1332);
               MovieClip(this._tb4460[textString47]).addEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString47]).addEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString47]).addEventListener(MouseEvent.CLICK,this.stop26);
               TextField(this._tb4460[textString46]).addEventListener(Event.CHANGE,_dw15947);
               return;
            case textString77:
               MovieClip(this._tb4460[textString31]).addEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString31]).addEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString31]).addEventListener(MouseEvent.CLICK,this.stop27);
               MovieClip(this._tb4460[textString52]).addEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString52]).addEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString52]).addEventListener(MouseEvent.CLICK,this.stop28);
               TextField(this._tb4460[textString51]).addEventListener(KeyboardEvent.KEY_DOWN,this._ft9866);
               MovieClip(this._tb4460[textString54][textString59 + 0]).addEventListener(MouseEvent.ROLL_OUT,this._fc10585);
               MovieClip(this._tb4460[textString54][textString59 + 0]).addEventListener(MouseEvent.ROLL_OVER,this._fc10585);
               MovieClip(this._tb4460[textString54][textString59 + 0]).addEventListener(MouseEvent.CLICK,this._pq11452);
               MovieClip(this._tb4460[textString54][textString59 + 1]).addEventListener(MouseEvent.ROLL_OUT,this._fc10585);
               MovieClip(this._tb4460[textString54][textString59 + 1]).addEventListener(MouseEvent.ROLL_OVER,this._fc10585);
               MovieClip(this._tb4460[textString54][textString59 + 1]).addEventListener(MouseEvent.CLICK,this._pq11452);
               return;
            case textString78:
               MovieClip(this._tb4460[textString47]).addEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString47]).addEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString47]).addEventListener(MouseEvent.CLICK,this.stop29);
               return;
            case textString79:
               MovieClip(this._tb4460[textString31]).addEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString31]).addEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString31]).addEventListener(MouseEvent.CLICK,this.stop30);
               MovieClip(this._tb4460[textString64]).addEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString64]).addEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString64]).addEventListener(MouseEvent.CLICK,this.stop31);
               return;
            case textString80:
               MovieClip(this._tb4460[textString65]).addEventListener(MouseEvent.ROLL_OVER,this.stop32);
               MovieClip(this._tb4460[textString65]).addEventListener(MouseEvent.ROLL_OUT,this.stop32);
               MovieClip(this._tb4460[textString65]).addEventListener(MouseEvent.CLICK,this.stop33);
               return;
            case textString81:
               MovieClip(this._tb4460[textString65]).addEventListener(MouseEvent.ROLL_OVER,this.stop32);
               MovieClip(this._tb4460[textString65]).addEventListener(MouseEvent.ROLL_OUT,this.stop32);
               MovieClip(this._tb4460[textString65]).addEventListener(MouseEvent.CLICK,this.stop33);
               return;
            default:
               return;
         }
      }
      
      public function onClick1() : void
      {
         var count2:int = 0;
         switch(this._tb4460.currentLabel)
         {
            case textString68:
               MovieClip(this._tb4460[textString11 + 0]).removeEventListener(MouseEvent.ROLL_OVER,this.stop5);
               MovieClip(this._tb4460[textString11 + 0]).removeEventListener(MouseEvent.ROLL_OUT,this.stop5);
               MovieClip(this._tb4460[textString11 + 0]).removeEventListener(MouseEvent.CLICK,this.stop6);
               MovieClip(this._tb4460[textString11 + 1]).removeEventListener(MouseEvent.ROLL_OVER,this.stop5);
               MovieClip(this._tb4460[textString11 + 1]).removeEventListener(MouseEvent.ROLL_OUT,this.stop5);
               MovieClip(this._tb4460[textString11 + 1]).removeEventListener(MouseEvent.CLICK,this.stop6);
               return;
            case textString69:
               return;
            case textString70:
               MovieClip(this._tb4460[textString14]).removeEventListener(MouseEvent.ROLL_OVER,this.stop);
               MovieClip(this._tb4460[textString14]).removeEventListener(MouseEvent.ROLL_OUT,this.stop);
               MovieClip(this._tb4460[textString14]).removeEventListener(MouseEvent.CLICK,this.stop7);
               MovieClip(this._tb4460[textString13]).removeEventListener(MouseEvent.ROLL_OUT,this.stop);
               MovieClip(this._tb4460[textString13]).removeEventListener(MouseEvent.ROLL_OVER,this.stop);
               MovieClip(this._tb4460[textString13]).removeEventListener(MouseEvent.CLICK,this._vv14854);
               return;
            case textString71:
               MovieClip(this._tb4460[textString27]).removeEventListener(MouseEvent.ROLL_OVER,this.stop8);
               MovieClip(this._tb4460[textString27]).removeEventListener(MouseEvent.ROLL_OUT,this.stop8);
               MovieClip(this._tb4460[textString27]).removeEventListener(MouseEvent.CLICK,this.stop9);
               MovieClip(this._tb4460[textString26]).removeEventListener(MouseEvent.ROLL_OVER,this.stop8);
               MovieClip(this._tb4460[textString26]).removeEventListener(MouseEvent.ROLL_OUT,this.stop8);
               MovieClip(this._tb4460[textString26]).removeEventListener(MouseEvent.CLICK,this.stop10);
               MovieClip(this._tb4460[textString28]).removeEventListener(MouseEvent.ROLL_OVER,this._ld9235);
               MovieClip(this._tb4460[textString28]).removeEventListener(MouseEvent.ROLL_OUT,this._ld9235);
               MovieClip(this._tb4460[textString28]).removeEventListener(MouseEvent.CLICK,this.stop11);
               return;
            case textString72:
               MovieClip(this._tb4460[textString31]).removeEventListener(MouseEvent.ROLL_OVER,this.stop12);
               MovieClip(this._tb4460[textString31]).removeEventListener(MouseEvent.ROLL_OUT,this.stop12);
               MovieClip(this._tb4460[textString31]).removeEventListener(MouseEvent.CLICK,this.stop13);
               MovieClip(this._tb4460[textString32]).removeEventListener(MouseEvent.ROLL_OVER,this.stop12);
               MovieClip(this._tb4460[textString32]).removeEventListener(MouseEvent.ROLL_OUT,this.stop12);
               MovieClip(this._tb4460[textString32]).removeEventListener(MouseEvent.CLICK,this._pa6081);
               TextField(this._tb4460[textString10]).removeEventListener(Event.CHANGE,start);
               return;
            case textString74:
               return;
            case textString73:
               MovieClip(this._tb4460[textString34]).removeEventListener(MouseEvent.ROLL_OVER,this.stop);
               MovieClip(this._tb4460[textString34]).removeEventListener(MouseEvent.ROLL_OUT,this.stop);
               MovieClip(this._tb4460[textString34]).removeEventListener(MouseEvent.CLICK,this.stop15);
               MovieClip(this._tb4460[textString35]).removeEventListener(MouseEvent.ROLL_OVER,this.stop);
               MovieClip(this._tb4460[textString35]).removeEventListener(MouseEvent.ROLL_OUT,this.stop);
               MovieClip(this._tb4460[textString35]).removeEventListener(MouseEvent.CLICK,this.stop14);
               count2 = 0;
               while(count2 < count14)
               {
                  MovieClip(this._tb4460[textString39 + count2]).removeEventListener(MouseEvent.CLICK,this.stop16);
                  MovieClip(this._tb4460[textString39 + count2]).removeEventListener(MouseEvent.DOUBLE_CLICK,this._et6494);
                  MovieClip(this._tb4460[textString12 + count2]).removeEventListener(MouseEvent.ROLL_OVER,this.stop);
                  MovieClip(this._tb4460[textString12 + count2]).removeEventListener(MouseEvent.ROLL_OUT,this.stop);
                  MovieClip(this._tb4460[textString12 + count2]).removeEventListener(MouseEvent.CLICK,this._vr5614);
                  MovieClip(this._tb4460[textString33 + count2]).removeEventListener(MouseEvent.ROLL_OVER,this.stop);
                  MovieClip(this._tb4460[textString33 + count2]).removeEventListener(MouseEvent.ROLL_OUT,this.stop);
                  MovieClip(this._tb4460[textString33 + count2]).removeEventListener(MouseEvent.CLICK,this.stop21);
                  count2++;
               }
               count2 = 0;
               while(count2 < count15)
               {
                  MovieClip(this._tb4460[textString43][textString44 + count2]).removeEventListener(MouseEvent.ROLL_OVER,this._yo3315);
                  MovieClip(this._tb4460[textString43][textString44 + count2]).removeEventListener(MouseEvent.ROLL_OUT,this._yo3315);
                  MovieClip(this._tb4460[textString43][textString44 + count2]).removeEventListener(MouseEvent.CLICK,this.stop20);
                  count2++;
               }
               MovieClip(this._tb4460[textString40]).removeEventListener(MouseEvent.ROLL_OVER,this.stop17);
               MovieClip(this._tb4460[textString40]).removeEventListener(MouseEvent.ROLL_OUT,this.stop17);
               MovieClip(this._tb4460[textString40]).removeEventListener(MouseEvent.CLICK,this.stop19);
               MovieClip(this._tb4460[textString41]).removeEventListener(MouseEvent.ROLL_OVER,this.stop17);
               MovieClip(this._tb4460[textString41]).removeEventListener(MouseEvent.ROLL_OUT,this.stop17);
               MovieClip(this._tb4460[textString41]).removeEventListener(MouseEvent.CLICK,this.stop18);
               return;
            case textString75:
               MovieClip(this._tb4460[textString14]).removeEventListener(MouseEvent.ROLL_OVER,this.stop);
               MovieClip(this._tb4460[textString14]).removeEventListener(MouseEvent.ROLL_OUT,this.stop);
               MovieClip(this._tb4460[textString14]).removeEventListener(MouseEvent.CLICK,this.stop23);
               MovieClip(this._tb4460[textString13]).removeEventListener(MouseEvent.ROLL_OUT,this.stop);
               MovieClip(this._tb4460[textString13]).removeEventListener(MouseEvent.ROLL_OVER,this.stop);
               MovieClip(this._tb4460[textString13]).removeEventListener(MouseEvent.CLICK,this.stop22);
               return;
            case textString76:
               count2 = 0;
               while(count2 < count15)
               {
                  MovieClip(this._tb4460[textString49 + count2]).removeEventListener(MouseEvent.ROLL_OVER,this._qi13184);
                  MovieClip(this._tb4460[textString49 + count2]).removeEventListener(MouseEvent.ROLL_OUT,this._qi13184);
                  MovieClip(this._tb4460[textString49 + count2]).removeEventListener(MouseEvent.CLICK,this.stop24);
                  count2++;
               }
               MovieClip(this._tb4460[textString31]).removeEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString31]).removeEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString31]).removeEventListener(MouseEvent.CLICK,this._rg1332);
               MovieClip(this._tb4460[textString47]).removeEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString47]).removeEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString47]).removeEventListener(MouseEvent.CLICK,this.stop26);
               TextField(this._tb4460[textString46]).removeEventListener(Event.CHANGE,_dw15947);
               return;
            case textString77:
               MovieClip(this._tb4460[textString31]).removeEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString31]).removeEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString31]).removeEventListener(MouseEvent.CLICK,this.stop27);
               MovieClip(this._tb4460[textString52]).removeEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString52]).removeEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString52]).removeEventListener(MouseEvent.CLICK,this.stop28);
               TextField(this._tb4460[textString51]).removeEventListener(KeyboardEvent.KEY_DOWN,this._ft9866);
               MovieClip(this._tb4460[textString54][textString59 + 0]).removeEventListener(MouseEvent.ROLL_OUT,this._fc10585);
               MovieClip(this._tb4460[textString54][textString59 + 0]).removeEventListener(MouseEvent.ROLL_OVER,this._fc10585);
               MovieClip(this._tb4460[textString54][textString59 + 0]).removeEventListener(MouseEvent.CLICK,this._pq11452);
               MovieClip(this._tb4460[textString54][textString59 + 1]).removeEventListener(MouseEvent.ROLL_OUT,this._fc10585);
               MovieClip(this._tb4460[textString54][textString59 + 1]).removeEventListener(MouseEvent.ROLL_OVER,this._fc10585);
               MovieClip(this._tb4460[textString54][textString59 + 1]).removeEventListener(MouseEvent.CLICK,this._pq11452);
               return;
            case textString78:
               MovieClip(this._tb4460[textString47]).removeEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString47]).removeEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString47]).removeEventListener(MouseEvent.CLICK,this.stop29);
               return;
            case textString79:
               MovieClip(this._tb4460[textString31]).removeEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString31]).removeEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString31]).removeEventListener(MouseEvent.CLICK,this.stop30);
               MovieClip(this._tb4460[textString64]).removeEventListener(MouseEvent.ROLL_OVER,this.stop25);
               MovieClip(this._tb4460[textString64]).removeEventListener(MouseEvent.ROLL_OUT,this.stop25);
               MovieClip(this._tb4460[textString64]).removeEventListener(MouseEvent.CLICK,this.stop31);
               return;
            case textString80:
               MovieClip(this._tb4460[textString65]).removeEventListener(MouseEvent.ROLL_OVER,this.stop32);
               MovieClip(this._tb4460[textString65]).removeEventListener(MouseEvent.ROLL_OUT,this.stop32);
               MovieClip(this._tb4460[textString65]).removeEventListener(MouseEvent.CLICK,this.stop33);
               return;
            case textString81:
               MovieClip(this._tb4460[textString65]).removeEventListener(MouseEvent.ROLL_OVER,this.stop32);
               MovieClip(this._tb4460[textString65]).removeEventListener(MouseEvent.ROLL_OUT,this.stop32);
               MovieClip(this._tb4460[textString65]).removeEventListener(MouseEvent.CLICK,this.stop33);
               return;
            default:
               return;
         }
      }
      
      private function stop(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.currentTarget);
         if(param1.type == MouseEvent.ROLL_OVER)
         {
            count.gotoAndStop(CommoncomponentsView._jo8252);
         }
         else if(param1.type == MouseEvent.ROLL_OUT)
         {
            count.gotoAndStop(CommoncomponentsView._vk6252);
         }
      }
      
      private function _rx1506(param1:MouseEvent) : void
      {
         var count:String = null;
         var count3:MovieClip = MovieClip(param1.currentTarget);
         if(this._qq4406 == count3)
         {
            return;
         }
         if(param1.type == MouseEvent.ROLL_OVER)
         {
            count3.gotoAndStop(CommoncomponentsView._jo8252);
            switch(count3.name)
            {
               case textString3:
                  count = this._yj10875.textString1;
                  break;
               case textString5:
                  count = this._yj10875.textString4;
                  break;
               case textString4:
                  count = this._yj10875.textString2;
                  break;
               case textString6:
                  count = this._yj10875.textString24;
            }
         }
         else if(param1.type == MouseEvent.ROLL_OUT)
         {
            count3.gotoAndStop(CommoncomponentsView._vk6252);
            count = this.textString85;
         }
         UtilsUtils._bj8346(this._ag15387[textString7],count);
      }
      
      private function stop3(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var count3:MovieClip = MovieClip(param1.currentTarget);
         if(this._qq4406 == count3)
         {
            return;
         }
         if(this.status == count3 && this._al508 != null)
         {
            this._lr1713(this._al508);
            this._al508 = null;
            this._jb3891._td7105();
         }
         switch(count3.name)
         {
            case textString3:
               this.destroy(count1);
               break;
            case textString5:
               this.destroy(count9);
               break;
            case textString4:
               this.destroy(count6);
               break;
            case textString6:
               this.destroy(count11);
         }
         this._qq4406.gotoAndStop(CommoncomponentsView._vk6252);
         this._qq4406 = count3;
         count3.gotoAndStop(CommoncomponentsView._jo8252);
      }
      
      public function destroy(param1:int) : void
      {
         this.show1();
         switch(param1)
         {
            case count:
               this._yj4516(textString69);
               this.stop4(this._ag15387[textString3]);
               break;
            case count1:
               this._jb3891._td7105();
               this.stop4(this._ag15387[textString3]);
               this._yj4516(textString68);
               this.textString85 = this._yj10875.textString1;
               break;
            case count2:
               this.textString85 = this._yj10875.textString30;
               this._uy6039 = this._ix5122();
               this._yj4516(textString70);
               this.textString3 = param1;
               this._jb3891._td7105();
               break;
            case count3:
               this._al508 = this._qr13352();
               this._yj4516(textString71);
               this.textString3 = param1;
               this._jb3891._td7105();
               break;
            case count4:
               this.textString85 = irrcrpt("<KTSY HTQTW=\"#555555\">",5) + this._yj10875.textString12 + " " + "</FONT>" + this.items4.length + " ";
               if(this.items4.length == 1)
               {
                  this.textString85 += this._yj10875.count;
               }
               else
               {
                  this.textString85 += this._yj10875.textString6.toLowerCase();
               }
               this._yj4516(textString72);
               break;
            case count5:
               this.items4 = new Array();
               this.textString85 = this._yj10875.textString2;
               this._yj4516(textString73);
               this._rt15759(this.count19);
               break;
            case count6:
               this.textString85 = this._yj10875.textString2;
               this._yj4516(textString74);
               this._jb3891._kw7646();
               this.count19 = 0;
               break;
            case count7:
               this.textString85 = String(this.items4.length) + " ";
               if(this.items4.length == 1)
               {
                  this.textString85 += this._yj10875.textString34;
               }
               else
               {
                  this.textString85 += this._yj10875.textString33;
               }
               this._yj4516(textString75);
               break;
            case count8:
               this.textString85 = this._yj10875.textString18;
               this._yj4516(textString76);
               break;
            case count9:
               this.textString85 = this._yj10875.textString4;
               this._yj4516(textString77);
               break;
            case count10:
               this.textString85 = this._yj10875.textString18;
               this._yj4516(textString78);
               break;
            case count11:
               this.textString85 = this._yj10875.textString3;
               if(this.items4.length > 0)
               {
                  this.items4 = new Array();
               }
               this._yj4516(textString79);
               break;
            case count12:
               this.textString85 = this._yj10875.textString48;
               this._yj4516(textString80);
               break;
            case count13:
               this._yj4516(textString81);
         }
         if(this.textString85 != null)
         {
            UtilsUtils._bj8346(this._ag15387[textString7],this.textString85);
         }
         this.textString3 = param1;
      }
      
      private function stop4(param1:MovieClip) : void
      {
         var count:MovieClip = null;
         for each(count in this.items2)
         {
            if(count == param1)
            {
               count.gotoAndStop(CommoncomponentsView._jo8252);
            }
            else
            {
               count.gotoAndStop(CommoncomponentsView._vk6252);
            }
         }
         this._qq4406 = param1;
      }
      
      private function _xm9865() : void
      {
         this._ch3584();
         this.onClick();
      }
      
      public function stop5(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.currentTarget);
         var count3:String = count.name.charAt(count.name.length - 1);
         if(param1.type == MouseEvent.ROLL_OVER)
         {
            count.alpha = 1;
            MovieClip(this._tb4460[textString12 + count3]).gotoAndStop(CommoncomponentsView._jo8252);
            UtilsUtils._np7275(this._tb4460[textString9 + count3],_at5301);
            UtilsUtils._np7275(this._tb4460[textString10 + count3],_rg8059);
         }
         else if(param1.type == MouseEvent.ROLL_OUT)
         {
            count.alpha = 0;
            MovieClip(this._tb4460[textString12 + count3]).gotoAndStop(CommoncomponentsView._vk6252);
            UtilsUtils._np7275(this._tb4460[textString9 + count3],_su101);
            UtilsUtils._np7275(this._tb4460[textString10 + count3],_ir857);
         }
      }
      
      public function stop6(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var count:MovieClip = MovieClip(param1.currentTarget);
         var count3:int = int(count.name.charAt(count.name.length - 1));
         if(count3 == 0 && items1.length > 0)
         {
            this.destroy(count3);
         }
         else if(count3 == 1 && this._jp15854() > 0)
         {
            this.destroy(count2);
         }
      }
      
      public function _tv15118() : void
      {
         if(this.textString3 == count1 && this._tb4460.currentLabel == textString68)
         {
            this._ch3584();
         }
      }
      
      private function _ix5122() : BPadUI
      {
         var count2:BPadUI = null;
         if(items != null && items.length > 0)
         {
            for each(count2 in items)
            {
               if(count2.isEnabled)
               {
                  return count2;
               }
            }
         }
         return null;
      }
      
      private function stop7(param1:Event) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this._jb3891._bi193(this._uy6039.id);
         MovieClip(this._tb4460[textString14]).visible = false;
         MovieClip(this._tb4460[textString13]).visible = false;
      }
      
      private function _vv14854(param1:Event) : void
      {
         if(this._uy6039.isEnabled)
         {
            this._jb3891._nc6237(this._uy6039);
         }
         this._fa6732();
      }
      
      public function _fa6732() : void
      {
         this._uy6039 = this._ix5122();
         this._jb3891._td7105();
         if(this._uy6039 == null)
         {
            this.destroy(count1);
         }
         else
         {
            MovieClip(this._tb4460[textString14]).visible = true;
            MovieClip(this._tb4460[textString13]).visible = true;
            this._ch3584();
         }
      }
      
      private function show(param1:BPadUI, param2:int = 225, param3:int = 62) : void
      {
         var count1:DisplayObjectContainer = this._ia8821(param1);
         count1.x = param2;
         count1.y = param3;
         this._ag15387.addChild(count1);
         if(this.items5 == null)
         {
            this.items5 = new Array();
         }
         this.items5.push(count1);
      }
      
      private function _qr13352() : Bpad
      {
         var count2:Bpad = null;
         if(items1 != null && items1.length > 0)
         {
            count2 = items1[0];
         }
         return count2;
      }
      
      private function _ng15935() : int
      {
         if(items1 != null)
         {
            return items1.length;
         }
         return 0;
      }
      
      private function stop8(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.currentTarget);
         if(param1.type == MouseEvent.ROLL_OVER)
         {
            count.gotoAndStop(CommoncomponentsView._jo8252);
            if(count.name == textString26)
            {
               UtilsUtils._np7275(this._tb4460[textString23],_jd8476);
            }
            else if(count.name == textString27)
            {
               UtilsUtils._np7275(this._tb4460[textString24],_jd8476);
            }
         }
         else if(param1.type == MouseEvent.ROLL_OUT)
         {
            count.gotoAndStop(CommoncomponentsView._vk6252);
            if(count.name == textString26)
            {
               UtilsUtils._np7275(this._tb4460[textString23],_ar11608);
            }
            else if(count.name == textString27)
            {
               UtilsUtils._np7275(this._tb4460[textString24],_ar11608);
            }
         }
      }
      
      private function stop9(param1:Event = null) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this._lr1713(this._al508);
         this._jb3891._td7105();
         this._al508 = this._qr13352();
         if(this._al508 == null)
         {
            this.destroy(count1);
         }
         else
         {
            this.show1();
            this._ch3584();
         }
      }
      
      private function stop10(param1:Event) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this._lr1713(this._al508);
         if(this.items4.length > 0)
         {
            this.items4 = new Array();
         }
         this.items4.push(_me11735(this._al508,items));
         this._al508 = null;
         this.destroy(count4);
      }
      
      public function _lr1713(param1:Bpad) : void
      {
         this._jb3891._ch14699(param1.id);
         items1.splice(items1.indexOf(param1),1);
         this._jb3891._td7105();
      }
      
      private function stop11(param1:Event) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this.destroy(count1);
         this._jb3891._bs5131(this._al508);
         this._al508 = null;
      }
      
      private function _ld9235(param1:MouseEvent) : void
      {
         var count:String = null;
         var count3:MovieClip = MovieClip(param1.currentTarget);
         if(this._qq4406 == count3)
         {
            return;
         }
         if(param1.type == MouseEvent.ROLL_OVER)
         {
            count3.gotoAndStop(CommoncomponentsView._jo8252);
            count = this._yj10875.textString36;
         }
         else if(param1.type == MouseEvent.ROLL_OUT)
         {
            count3.gotoAndStop(CommoncomponentsView._vk6252);
            count = this.textString85;
         }
         UtilsUtils._bj8346(this._ag15387[textString7],count);
      }
      
      public function _mi11107() : void
      {
         var count2:String = null;
         if(this.textString3 == count3 && this._tb4460.currentLabel == textString71)
         {
            count2 = this._ng15935() - 1 > 0 ? "(" + (this._ng15935() - 1).toString() + ")" : "";
            UtilsUtils._xl9503(this._tb4460[textString25],"");
            UtilsUtils._xl9503(this._tb4460[textString24],this._yj10875.textString1 + " " + count2);
         }
      }
      
      private function stop12(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.currentTarget);
         if(param1.type == MouseEvent.ROLL_OVER)
         {
            count.gotoAndStop(CommoncomponentsView._jo8252);
            if(count.name == textString31)
            {
               UtilsUtils._np7275(this._tb4460[textString29],_jd8476);
            }
            else if(count.name == textString32)
            {
               UtilsUtils._np7275(this._tb4460[textString30],_jd8476);
            }
         }
         else if(param1.type == MouseEvent.ROLL_OUT)
         {
            count.gotoAndStop(CommoncomponentsView._vk6252);
            if(count.name == textString31)
            {
               UtilsUtils._np7275(this._tb4460[textString29],_ar11608);
            }
            else if(count.name == textString32)
            {
               UtilsUtils._np7275(this._tb4460[textString30],_ar11608);
            }
         }
      }
      
      private function stop13(param1:Event) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this.items4 = new Array();
         this._eb14888();
      }
      
      private function _pa6081(param1:Event) : void
      {
         var count:Array = null;
         var count3:BPadUI = null;
         if(this._dy867 == true)
         {
            this._dy867 = false;
         }
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var count1:String = TextField(this._tb4460[textString10]).text;
         if(count1.length > 0)
         {
            count = new Array();
            while(this.items4.length > 0)
            {
               count3 = BPadUI(this.items4.pop());
               count.push(count3.id);
            }
            this._jb3891._vu15525(count,UtilsUtils._bg5268(count1));
            Utils._iq4270((ServiceLocator.get(ResourceManager) as ResourceManager)._ix8228("audioLibrary.swf","ConsolaSend"));
            this._eb14888();
         }
      }
      
      private function _eb14888() : void
      {
         switch(this._qq4406.name)
         {
            case textString3:
               this.destroy(count1);
               return;
            case textString4:
               this.destroy(count5);
               return;
            default:
               return;
         }
      }
      
      private function _rt15759(param1:int = 0) : void
      {
         var _tn6858:BPadUI = null;
         var items7:Array = null;
         var count24:int = param1;
         items7 = items.filter(function(param1:BPadUI, param2:int, param3:Array):Boolean
         {
            if(param1.isEnabled)
            {
               return false;
            }
            if(count24 > 0 && param1.count24 != count24)
            {
               return false;
            }
            return true;
         });
         items7.sort(this._jv13325);
         this.items3 = items7;
      }
      
      private function _jv13325(param1:BPadUI, param2:BPadUI) : int
      {
         if(param1.isEnabled1 && !param2.isEnabled1)
         {
            return -1;
         }
         if(!param1.isEnabled1 && param2.isEnabled1)
         {
            return 1;
         }
         if(param1.textString.toLowerCase() < param2.textString.toLowerCase())
         {
            return -1;
         }
         if(param1.textString.toLowerCase() > param2.textString.toLowerCase())
         {
            return 1;
         }
         return 0;
      }
      
      private function _io14724(param1:int) : Boolean
      {
         var count:BPadUI = null;
         var count1:int = 0;
         var count3:int = (this.items3.length - 1) / count14;
         if(param1 > count3 || param1 < 0)
         {
            return false;
         }
         while(count1 < count14)
         {
            count = BPadUI(this.items3[param1 * count14 + count1]);
            if(count != null)
            {
               UtilsUtils._xl9503(this._tb4460[textString18 + count1],count.textString);
               MovieClip(this._tb4460[textString20 + count1]).gotoAndStop(count.count24);
               UtilsUtils._xl9503(this._tb4460[textString19 + count1],count.textString2);
               MovieClip(this._tb4460[textString12 + count1]).visible = true;
               if(count.isEnabled1 && count._nr6929._eb11619 >= 0 && count._nr6929._ls5877.id != 2 && count._nr6929._ls5877.id != 3)
               {
                  MovieClip(this._tb4460[textString33 + count1]).visible = true;
               }
               else
               {
                  MovieClip(this._tb4460[textString33 + count1]).visible = false;
               }
               if(this.items4.indexOf(count) < 0)
               {
                  if(count.isEnabled1)
                  {
                     UtilsUtils._np7275(this._tb4460[textString18 + count1],_oe8454);
                  }
                  else
                  {
                     UtilsUtils._np7275(this._tb4460[textString18 + count1],_yn2395);
                  }
                  MovieClip(this._tb4460[textString39 + count1]).alpha = 0;
                  UtilsUtils._np7275(this._tb4460[textString19 + count1],_yn2395);
               }
               else
               {
                  UtilsUtils._np7275(this._tb4460[textString18 + count1],_rg8059);
                  UtilsUtils._np7275(this._tb4460[textString19 + count1],_rg8059);
                  MovieClip(this._tb4460[textString39 + count1]).alpha = 1;
               }
            }
            else
            {
               UtilsUtils._xl9503(this._tb4460[textString18 + count1],this._yj10875.textString2);
               UtilsUtils._xl9503(this._tb4460[textString19 + count1],"");
               MovieClip(this._tb4460[textString33 + count1]).visible = false;
               MovieClip(this._tb4460[textString12 + count1]).visible = false;
               MovieClip(this._tb4460[textString20 + count1]).gotoAndStop(5);
               MovieClip(this._tb4460[textString39 + count1]).alpha = 0;
               UtilsUtils._np7275(this._tb4460[textString18 + count1],_yn2395);
               UtilsUtils._np7275(this._tb4460[textString19 + count1],_yn2395);
            }
            count1++;
         }
         var count2:int = int(this._yf3447());
         var count7:String = count2.toString() + " / " + this.items3.length.toString();
         UtilsUtils._xl9503(this._tb4460[textString38],count7);
         return true;
      }
      
      private function _yf3447() : int
      {
         var count2:BPadUI = null;
         var count:int = 0;
         for each(count2 in this.items3)
         {
            if(count2.isEnabled1)
            {
               count++;
            }
         }
         return count;
      }
      
      private function stop14(param1:Event) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var count:int = int(this.count20);
         if(this._io14724(this.count20 + 1))
         {
            ++this.count20;
         }
      }
      
      private function stop15(param1:Event) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var count:int = int(this.count20);
         if(this._io14724(this.count20 - 1))
         {
            --this.count20;
         }
      }
      
      public function stop16(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(this.items3.length < 1)
         {
            return;
         }
         var count3:MovieClip = MovieClip(param1.currentTarget);
         var count1:int = int(count3.name.charAt(count3.name.length - 1));
         var count2:int = this.count20 * count14 + count1;
         if(count2 < this.items3.length)
         {
            var count:BPadUI = BPadUI(this.items3[count2]);
            if(this.items4.indexOf(null) < 0)
            {
               count3.alpha = 1;
               UtilsUtils._np7275(this._tb4460[textString18 + count1],_rg8059);
               UtilsUtils._np7275(this._tb4460[textString19 + count1],_rg8059);
               this.items4.push(null);
            }
            else
            {
               count3.alpha = 0;
               if(null.isEnabled1)
               {
                  UtilsUtils._np7275(this._tb4460[textString18 + count1],_oe8454);
               }
               else
               {
                  UtilsUtils._np7275(this._tb4460[textString18 + count1],_ir857);
               }
               UtilsUtils._np7275(this._tb4460[textString19 + count1],_ir857);
               this.items4.splice(this.items4.indexOf(null),1);
            }
         }
         if(this.items4.length > 0)
         {
            TextField(this._tb4460[textString36]).visible = true;
            MovieClip(this._tb4460[textString40]).visible = true;
            UtilsUtils._xl9503(this._tb4460[textString37],this._yj10875.textString16);
         }
         else
         {
            TextField(this._tb4460[textString36]).visible = false;
            MovieClip(this._tb4460[textString40]).visible = false;
            UtilsUtils._xl9503(this._tb4460[textString37],this._yj10875.textString52);
         }
      }
      
      public function _et6494(param1:MouseEvent) : void
      {
         var count3:MovieClip = MovieClip(param1.currentTarget);
         var count1:int = int(count3.name.charAt(count3.name.length - 1));
         var count2:int = this.count20 * count14 + count1;
         if(count2 < this.items3.length)
         {
            var count:BPadUI = BPadUI(this.items3[count2]);
            this.items4 = new Array();
            this.items4.push(null);
            this.stop18(null);
         }
      }
      
      private function stop17(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.currentTarget);
         if(param1.type == MouseEvent.ROLL_OVER)
         {
            if(count.name == textString40)
            {
               count.gotoAndStop(CommoncomponentsView._jo8252);
               UtilsUtils._np7275(this._tb4460[textString36],_jd8476);
            }
            else if(count.name == textString41)
            {
               if(Boolean(TextField(this._tb4460[textString36]).visible) || Boolean(this._on11614()))
               {
                  count.gotoAndStop(CommoncomponentsView._jo8252);
                  UtilsUtils._np7275(this._tb4460[textString37],_jd8476);
               }
            }
         }
         else if(param1.type == MouseEvent.ROLL_OUT)
         {
            count.gotoAndStop(CommoncomponentsView._vk6252);
            if(count.name == textString40)
            {
               UtilsUtils._np7275(this._tb4460[textString36],_ar11608);
            }
            else if(count.name == textString41)
            {
               UtilsUtils._np7275(this._tb4460[textString37],_ar11608);
            }
         }
      }
      
      private function _on11614() : Boolean
      {
         var count2:BPadUI = null;
         for each(count2 in this.items3)
         {
            if(count2.isEnabled1)
            {
               return true;
            }
         }
         return false;
      }
      
      private function stop18(param1:Event) : void
      {
         var count:BPadUI = null;
         var count3:int = 0;
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(!TextField(this._tb4460[textString36]).visible && Boolean(this._on11614()) && param1 != null)
         {
            if(!UtilsUtils._jx14255(textString82,count17))
            {
               count3 = int(UtilsUtils.getTime(textString82));
               this._jb3891._sk9027(Math.abs(count17 - (getTimer() - count3)));
               return;
            }
            for each(count in this.items3)
            {
               if(count.isEnabled1)
               {
                  this.items4.push(count);
               }
            }
         }
         if(this.items4.length < 1)
         {
            return;
         }
         this.destroy(count4);
      }
      
      private function stop19(param1:Event) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(this.items4.length < 1)
         {
            return;
         }
         this.destroy(count7);
      }
      
      private function _yo3315(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.currentTarget);
         var count3:int = int(count.name.charAt(count.name.length - 1));
         if(this.count19 - 1 == count3)
         {
            return;
         }
         this.stop(param1);
      }
      
      private function stop20(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.currentTarget);
         var count3:int = int(count.name.charAt(count.name.length - 1));
         var count1:int = count3 + 1;
         if(this.count19 == count1)
         {
            this.count19 = 0;
            this._rt15759();
            count.gotoAndStop(CommoncomponentsView._vk6252);
         }
         else
         {
            this._rt15759(count1);
            if(this.count19 > 0 && this.count19 != count1)
            {
               MovieClip(this._tb4460[textString43][textString44 + (this.count19 - 1)]).gotoAndStop(CommoncomponentsView._vk6252);
            }
            count.gotoAndStop(CommoncomponentsView._jo8252);
            this.count19 = count1;
         }
         this.count20 = 0;
         if(this.items4.length > 0)
         {
            this.items4 = new Array();
         }
         this._io14724(this.count20);
      }
      
      private function stop21(param1:Event) : void
      {
         var count:BPadUI = null;
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var count3:MovieClip = MovieClip(param1.currentTarget);
         var count1:int = int(count3.name.charAt(count3.name.length - 1));
         var count2:int = this.count20 * count14 + count1;
         count = BPadUI(this.items3[count2]);
         this._jb3891.enterScene(count);
      }
      
      private function _vr5614(param1:Event) : void
      {
         var count3:MovieClip = MovieClip(param1.currentTarget);
         var count1:int = int(count3.name.charAt(count3.name.length - 1));
         var count2:int = this.count20 * count14 + count1;
         this.items4 = new Array();
         this.items4.push(this.items3[count2]);
         this.destroy(count8);
      }
      
      private function stop22(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this.destroy(count5);
      }
      
      private function stop23(param1:Event) : void
      {
         var count:BPadUI = null;
         var count3:int = 0;
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var count1:Array = new Array();
         while(this.items4.length > 0)
         {
            count = BPadUI(this.items4.pop());
            count1.push(count.id);
            count3 = int(items.indexOf(count));
            if(count3 >= 0)
            {
               items.splice(count3,1);
            }
            _rm10923(count.id);
         }
         this._jb3891._jo1081(count1);
         this.destroy(count5);
         this._jb3891._td7105();
      }
      
      private function _qi13184(param1:MouseEvent) : void
      {
         var count:BPadUI = BPadUI(this.items4[0]);
         var count3:MovieClip = MovieClip(param1.currentTarget);
         var count1:int = int(count3.name.charAt(count3.name.length - 1));
         if(count.count24 - 1 == count1)
         {
            return;
         }
         this.stop(param1);
      }
      
      private function stop24(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var count:BPadUI = BPadUI(this.items4[0]);
         var count3:MovieClip = MovieClip(param1.currentTarget);
         var count1:int = int(count3.name.charAt(count3.name.length - 1));
         var count2:int = count1 + 1;
         if(count.count24 != count2)
         {
            MovieClip(this._tb4460[textString49 + (count.count24 - 1)]).gotoAndStop(CommoncomponentsView._vk6252);
         }
         count3.gotoAndStop(CommoncomponentsView._jo8252);
         count.count24 = count2;
         MovieClip(this._tb4460[textString20]).gotoAndStop(count2);
      }
      
      private function stop25(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.currentTarget);
         if(param1.type == MouseEvent.ROLL_OVER)
         {
            count.gotoAndStop(CommoncomponentsView._jo8252);
            if(count.name == textString31)
            {
               UtilsUtils._np7275(this._tb4460[textString29],_jd8476);
            }
            else if(count.name == textString47)
            {
               UtilsUtils._np7275(this._tb4460[textString48],_jd8476);
            }
         }
         else if(param1.type == MouseEvent.ROLL_OUT)
         {
            count.gotoAndStop(CommoncomponentsView._vk6252);
            if(count.name == textString31)
            {
               UtilsUtils._np7275(this._tb4460[textString29],_ar11608);
            }
            else if(count.name == textString47)
            {
               UtilsUtils._np7275(this._tb4460[textString48],_ar11608);
            }
         }
      }
      
      private function _rg1332(param1:MouseEvent) : void
      {
         this.destroy(count5);
      }
      
      private function stop26(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var count:BPadUI = BPadUI(this.items4[0]);
         count.description = TextField(this._tb4460[textString46]).text;
         count.description = UtilsUtils._bg5268(count.description);
         this._jb3891._kg9137(count.id,count.description,count.count24);
         this.destroy(count5);
      }
      
      private function stop27(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this.destroy(count1);
      }
      
      private function _ft9866(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER || param1.keyCode == Keyboard.NUMPAD_ENTER)
         {
            this.stop28(null);
         }
      }
      
      private function stop28(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var count:String = TextField(this._tb4460[textString51]).text;
         if(count.length > 0 && Boolean(UtilsUtils._jx14255("busquedaBpad",1500)))
         {
            TextField(this._tb4460[textString53]).visible = false;
            MovieClip(this._tb4460[textString54]).visible = false;
            this.show1();
            this._jb3891._uv15295(count);
         }
         this._ag15387.stage.focus = TextField(this._tb4460[textString51]);
      }
      
      public function _tl13529() : void
      {
         if(this.status == count9)
         {
            TextField(this._tb4460[textString53]).visible = true;
         }
      }
      
      public function _su6513(param1:BPadUI) : void
      {
         var count:int = 0;
         if(this.status == count9)
         {
            MovieClip(this._tb4460[textString54]).visible = true;
            UtilsUtils._xl9503(this._tb4460[textString54][textString55],param1.textString);
            UtilsUtils._xl9503(this._tb4460[textString54][textString56],param1.textString2);
            count = param1.count24;
            if(count == 0)
            {
               count = 1;
            }
            MovieClip(this._tb4460[textString54][textString57]).gotoAndStop(count);
            if(param1.isEnabled1)
            {
               UtilsUtils._np7275(this._tb4460[textString54][textString55],_oe8454);
            }
            else
            {
               UtilsUtils._np7275(this._tb4460[textString54][textString55],_yn2395);
            }
            if(!param1.isEnabled1 || param1._nr6929._eb11619 < 0 || param1._nr6929._ls5877.id == 2 || param1._nr6929._ls5877.id == 3)
            {
               MovieClip(this._tb4460[textString54][textString59 + 1]).visible = false;
            }
            if(this.items4.length > 0)
            {
               this.items4 = new Array();
            }
            this.items4.push(param1);
            this.show(param1,222,100);
         }
      }
      
      public function _fc10585(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.currentTarget);
         var count3:int = int(count.name.charAt(count.name.length - 1));
         var count1:BPadUI = BPadUI(this.items4[0]);
         if(count3 == 0 && !count1.isEnabled)
         {
            return;
         }
         if(count3 == 1 && count1._nr6929._eb11619 < 0)
         {
            return;
         }
         if(param1.type == MouseEvent.ROLL_OVER)
         {
            count.alpha = 1;
            MovieClip(this._tb4460[textString54][textString58 + count3]).gotoAndStop(CommoncomponentsView._jo8252);
            UtilsUtils._np7275(this._tb4460[textString54][textString60 + count3],_rg8059);
         }
         else if(param1.type == MouseEvent.ROLL_OUT)
         {
            count.alpha = 0;
            MovieClip(this._tb4460[textString54][textString58 + count3]).gotoAndStop(CommoncomponentsView._vk6252);
            UtilsUtils._np7275(this._tb4460[textString54][textString60 + count3],_ir857);
         }
      }
      
      public function _pq11452(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.currentTarget);
         var count3:int = int(count.name.charAt(count.name.length - 1));
         var count1:BPadUI = BPadUI(this.items4[0]);
         if(count3 == 0 && count1.isEnabled)
         {
            this.destroy(count10);
            this._jb3891._qq16004(count1.id);
         }
         else if(count3 == 1 && count1._nr6929._eb11619 >= 0)
         {
            this._jb3891.enterScene(count1);
         }
      }
      
      private function stop29(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(this._qq4406.name == textString5)
         {
            this.destroy(count9);
         }
         else if(this._qq4406.name == textString6 && Boolean(this._qq4406.visible))
         {
            this.destroy(count11);
         }
         else
         {
            this.destroy(count1);
         }
      }
      
      private function stop30(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this.destroy(count1);
      }
      
      public function stop31(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var count:BPadUI = BPadUI(this.items4[0]);
         if(count != null)
         {
            this.destroy(count10);
            this._jb3891._qq16004(count.id);
         }
      }
      
      public function _xw3022() : Boolean
      {
         return this.status == count11 && this._dy867;
      }
      
      public function _ij10651(param1:PersonAnimation) : void
      {
         var count:BPadUI = new BPadUI();
         count.id = param1.id;
         count.textString = param1.name;
         count.count1 = param1.count1;
         count.count2 = param1.count2;
         count.colors = param1.colors;
         count.textString1 = param1.textString1;
         UtilsUtils._xl9503(this._tb4460[textString62],count.textString);
         if(this.items4.length > 0)
         {
            this.items4 = new Array();
         }
         this.items4.push(count);
      }
      
      public function _xv9548(param1:PersonAnimation) : void
      {
         var count:BPadUI = new BPadUI();
         count.id = param1.id;
         count.textString = param1.name;
         count.count1 = param1.count1;
         count.count2 = param1.count2;
         count.colors = param1.colors;
         count.textString1 = param1.textString1;
         if(this.items4.length > 0)
         {
            this.items4 = new Array();
         }
         this.items4.push(count);
         if(!this._dy867)
         {
            this._ag15387.visible = true;
            this._jb3891._cf13877();
         }
         this.destroy(count10);
      }
      
      public function set _ed1033(param1:Boolean) : void
      {
         var count:MovieClip = MovieClip(this._ag15387[textString6]);
         if(count.visible != param1)
         {
            if(count.visible)
            {
               this._nw3403 = null;
               if(this.status == count11 && this.items4.length == 0)
               {
                  this.destroy(count1);
               }
            }
            count.visible = param1;
         }
      }
      
      public function get _ed1033() : Boolean
      {
         return MovieClip(this._ag15387[textString6]).visible;
      }
      
      private function stop32(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.currentTarget);
         if(param1.type == MouseEvent.ROLL_OVER)
         {
            count.gotoAndStop(CommoncomponentsView._jo8252);
            if(count.name == textString65)
            {
               UtilsUtils._np7275(this._tb4460[textString66],_jd8476);
            }
         }
         else if(param1.type == MouseEvent.ROLL_OUT)
         {
            count.gotoAndStop(CommoncomponentsView._vk6252);
            if(count.name == textString65)
            {
               UtilsUtils._np7275(this._tb4460[textString66],_ar11608);
            }
         }
      }
      
      private function stop33(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this.destroy(count1);
      }
      
      private function _ia8821(param1:BPadUI) : DisplayObjectContainer
      {
         var count:PersonAnimation = new PersonAnimation();
         count.id = param1.id;
         count.name = param1.textString;
         count.count1 = param1.count1;
         if(param1.colors is String)
         {
            count.colors = new ColorModel(String(param1.colors));
         }
         else
         {
            count.colors = ColorModel(param1.colors);
         }
         return PersonController._ku11706(count,"cara_mediana");
      }
      
      private function show1() : void
      {
         var count2:DisplayObjectContainer = null;
         if(this.items5 == null)
         {
            return;
         }
         for each(count2 in this.items5)
         {
            if(count2.parent != null)
            {
               count2.parent.removeChild(count2);
            }
         }
         this.items5 = null;
      }
   }
}

