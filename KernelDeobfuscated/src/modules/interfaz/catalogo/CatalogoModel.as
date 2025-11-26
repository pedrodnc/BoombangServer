package src.modules.interfaz.catalogo
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.text.*;
   import src.*;
   import src.allData.*;
   import src.allData.catObjects.*;
   import src.allData.sceneObjects.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.allData.sceneObjects.loadObject.*;
   import src.logs.*;
   import src.modules.interfaz.InterfazManager;
   import src.modules.objetos.*;
   import src.org.osflash.thunderbolt.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class CatalogoModel
   {
      
      private static const urlString8:String = "mcCompraObjetos";
      
      private static const textString1:String = "mcVistaObjeto";
      
      private static const textString2:String = "tfCatalogo";
      
      private static const textString1:String = "mcFondo";
      
      private static const textString4:String = "mcCatalogo";
      
      private static const textString12:String = "mcObjeto";
      
      private static const textString1:String = "mcIconoMember";
      
      private static const textString3:String = "mcBotonCerrar";
      
      private static const textString8:String = "mcMonedaOro";
      
      private static const textString9:String = "mcMonedaPlata";
      
      private static const textString6:String = "mcBotonScrollMas";
      
      private static const textString7:String = "mcBotonScrollMenos";
      
      private static const textString12:String = "mcAvance";
      
      private static const textString1:String = "mcContenedorObjeto";
      
      private static const textString1:String = "tfTexto";
      
      private static const textString15:String = "mcAvisoNoPlata";
      
      private static const textString16:String = "mcBotonComprarOro";
      
      private static const textString17:String = "mcBotonComprarPlata";
      
      private static const textString3:String = "mcBotonAceptar";
      
      private static const textString2:String = "mcBotonCancelar";
      
      private static const textString20:String = "tfNombreObjeto";
      
      private static const textString21:String = "tfDescripcionObjeto";
      
      private static const textString22:String = "tfCostoObjeto";
      
      private static const textString23:String = "mcBotonTamano";
      
      private static const textString24:String = "mcSeparadorTamano";
      
      private static const textString25:String = "mcFlechaTamano";
      
      private static const textString26:String = "mcCargando";
      
      private static const textString27:String = "mcComprado";
      
      private static const TF_TITULO:String = "tfTitulo";
      
      private static const textString28:String = "tfMensaje";
      
      private static const textString29:String = "tfComprar";
      
      private static const textString30:String = "tfCancelar";
      
      private static const textString31:String = "mcVistaMember";
      
      private static const textString:String = "normal";
      
      private static const textString1:String = "rollover";
      
      private static const textString4:String = "vacio";
      
      private static const textString35:String = "vacio";
      
      private static const textString36:String = "inicio";
      
      private static const textString37:String = "confirmarOro";
      
      private static const textString38:String = "confirmarPlata";
      
      private static const textString39:String = "comprandoOro";
      
      private static const textString40:String = "comprandoPlata";
      
      private static const textString41:String = "compradoOro";
      
      private static const textString42:String = "compradoPlata";
      
      private static const count:int = -1;
      
      private static const count1:int = 0;
      
      private static const count2:int = 1;
      
      private static const count3:int = 2;
      
      private static const count4:int = 3;
      
      private static const count5:int = 4;
      
      private static const count6:int = 5;
      
      private static const count7:int = 6;
      
      private static const count8:int = 7;
      
      private static const count9:int = 100;
      
      private static const count10:int = 5;
      
      private static const count11:int = 17;
      
      private static const count12:int = 0;
      
      private static const count13:int = 0;
      
      private static const count14:int = 1;
      
      private static const count15:int = 2;
      
      private static const count16:Number = 0.5;
      
      private static const count17:int = 1;
      
      private static const count18:int = 2;
      
      private static const count19:int = 5;
      
      private static const count6:int = 76;
      
      private static const count7:int = 6;
      
      private static const count22:int = 320;
      
      private static const count23:int = 250;
      
      private var _xd15368:MovieClip;
      
      private var _uk10025:MovieClip;
      
      private var _unidades:TextField;
      
      private var count24:int = -1;
      
      private var logs:Logger;
      
      private var _jm3064:ObjetosController;
      
      private var count25:int = -1;
      
      private var items:Array;
      
      private var count26:int;
      
      private var count27:int = 0;
      
      private var _no7733:CatobjectsController;
      
      private var _dl3635:MovieClip;
      
      private var _lp469:InterfazManager;
      
      private var _hl8190:SceneObjectManager;
      
      private var _im12039:CatalogoModel;
      
      private var count28:int;
      
      private var _bs5729:MovieClip;
      
      private var _do1698:UIPanel;
      
      private var count29:int = 0;
      
      public function CatalogoModel(param1:MovieClip, param2:InterfazManager, param3:ObjetosController)
      {
         super();
         this._xd15368 = param1[urlString8];
         this._uk10025 = param1[textString1];
         this._unidades = this._uk10025["mcUnidades"].textField.textField;
         this._uk10025["mcUnidades"].addEventListener(Event.CHANGE,this.unidadesFun);
         this._uk10025["mcUnidades"].addEventListener(Event.MOUSE_LEAVE,this.unidadesFun);
         this._uk10025["mcUnidades"].addEventListener(MouseEvent.CLICK,this.unidadesFun);
         this._uk10025["mcUnidades"].addEventListener(TextEvent.TEXT_INPUT,this.unidadesFun);
         this._unidades.addEventListener(Event.CHANGE,this.unidadesFun);
         this._unidades.addEventListener(Event.MOUSE_LEAVE,this.unidadesFun);
         this._unidades.addEventListener(MouseEvent.CLICK,this.unidadesFun);
         this._unidades.addEventListener(TextEvent.TEXT_INPUT,this.unidadesFun);
         this._lp469 = param2;
         this._jm3064 = param3;
         this._hl8190 = SceneObjectManager.getInstance();
         this._im12039 = new CatalogoModel();
         this.logs = Logger.getInstance();
         this._xd15368.visible = false;
         this._uk10025.visible = false;
         this._dl3635 = MovieClip(this._xd15368[textString12]);
         this._dl3635.visible = false;
         MovieClip(this._xd15368[textString3]).buttonMode = true;
         MovieClip(this._xd15368[textString6]).buttonMode = true;
         MovieClip(this._xd15368[textString7]).buttonMode = true;
         StringUtils._dp2863(this._uk10025,this._we8238);
         this._xd15368.tabEnabled = false;
         this._xd15368.tabChildren = false;
         this._bs5729 = param1["mcCompraObjetos"]["mcCatalogo0"];
         this._bs5729.visible = CatalogObject.getInstance().getList1().length > 0;
         this._do1698 = new UIPanel();
         this._do1698._xe10297 = UITextField.TOP;
         this._do1698.fontSize = 11;
         this._do1698.visible = false;
         this._do1698.padding = 2;
         param1["mcCompraObjetos"].addChild(this._do1698);
      }
      
      private function unidadesFun(param1:Event) : void
      {
         if(this._no7733._sb8254 > 0)
         {
            UtilsUtils._xl9503(this._uk10025[textString16][textString22],(this._no7733._sb8254 * parseInt(this._unidades.text)).toString());
         }
         else if(this._no7733._fi8088 > 0)
         {
            UtilsUtils._xl9503(this._uk10025[textString17][textString22],(this._no7733._fi8088 * parseInt(this._unidades.text)).toString());
         }
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this.authenticateUser2();
         this._jm3064.removeEventListener(ObjetosEvents.textString,this.move1);
         StringUtils._ff5056(this._uk10025);
      }
      
      public function show() : void
      {
         var count2:int = 0;
         var count:int = 0;
         if(this._xd15368.visible == false)
         {
            count2 = this._uk10025.x - this._xd15368.x;
            count = this._uk10025.y - this._xd15368.y;
            _xw1367.getInstance()._uc3178(this._xd15368,_xw1367.count5);
            _xw1367.getInstance()._uc3178(this._uk10025,_xw1367.count5);
            this._xd15368.x = count6;
            this._xd15368.y = count7;
            this._uk10025.x = count6 + count2;
            this._uk10025.Y = count7 + count;
            this._xd15368.visible = true;
            this._qk12131();
            this._hl8190.addEventListener(LoadobjectModel._bs1884,this.move);
            MovieClip(this._xd15368[textString1]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop);
            MovieClip(this._uk10025[textString1]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop);
            this._iq9094(count11);
         }
      }
      
      public function authenticateUser2() : void
      {
         var count2:int = 0;
         var count:MovieClip = null;
         if(this._xd15368.visible == true)
         {
            this._xd15368.visible = false;
            this._hl8190.removeEventListener(LoadobjectModel._bs1884,this.move);
            this.move3();
            this.move4();
            MovieClip(this._xd15368[textString1]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop);
            MovieClip(this._uk10025[textString1]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop);
            _xw1367.getInstance().move2(this._xd15368,_xw1367.count5);
            _xw1367.getInstance().move2(this._uk10025,_xw1367.count5);
            count2 = 0;
            while(count2 < count10)
            {
               count = this._xd15368[textString12 + (count2 + 1)];
               StringUtils.cleanChildsMovieclip(count[textString1]);
               count2++;
            }
            this._rk15869(count);
            this.count25 = -1;
            this._no7733 = null;
         }
      }
      
      private function stop(param1:MouseEvent) : void
      {
         ThunderboltModel.info("anulaClick");
         param1.stopImmediatePropagation();
         param1.stopPropagation();
      }
      
      private function stop(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         MovieClip(param1.target).gotoAndStop(textString);
         this.authenticateUser2();
      }
      
      private function stop1(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(textString1);
      }
      
      private function stop2(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(textString);
      }
      
      private function _sl641(param1:MouseEvent) : void
      {
         var count:int = int(param1.target.idCatalogo);
         MovieClip(param1.target).alpha = 1;
         MovieClip(param1.target).filters = [new GlowFilter(6710886,1,4,4,20)];
         this._do1698.text = "catalog.categories." + count + ".name";
         this._do1698.x = (param1.target as MovieClip).x + (param1.target as MovieClip).width * 0.5;
         this._do1698.y = (param1.target as MovieClip).y + (param1.target as MovieClip).height;
         this._do1698._sl14850();
         this._do1698.visible = true;
      }
      
      private function _bt6978(param1:MouseEvent) : void
      {
         var count:int = int(param1.target.idCatalogo);
         if(count != this.count25)
         {
            MovieClip(param1.target).alpha = count16;
            MovieClip(param1.target).filters = [];
         }
         this._do1698.visible = false;
      }
      
      private function stop3(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(param1.target.idCatalogo == 35)
         {
            ExternalInterface.call("showLTD");
            this.authenticateUser2();
            return;
         }
         if(param1.target.idCatalogo == 36)
         {
            ExternalInterface.call("showVIP");
            this.authenticateUser2();
            return;
         }
         if(param1.target.idCatalogo == 37)
         {
            ExternalInterface.call("showMarket");
            this.authenticateUser2();
            return;
         }
         this._iq9094(param1.target.idCatalogo);
      }
      
      private function stop4(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this.count26 += count19;
         this.stop6();
         this._fe12100();
      }
      
      private function stop5(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(this.count26 - count19 > 0)
         {
            this.count26 -= count19;
         }
         else
         {
            this.count26 = 0;
         }
         this.stop6();
         this._fe12100();
      }
      
      private function _fe12100() : void
      {
         if(this.items.length < count10)
         {
            MovieClip(this._xd15368[textString7]).visible = false;
            MovieClip(this._xd15368[textString6]).visible = false;
         }
         else
         {
            MovieClip(this._xd15368[textString7]).visible = true;
            MovieClip(this._xd15368[textString6]).visible = true;
            if(this.count26 > 0)
            {
               MovieClip(this._xd15368[textString7]).mouseEnabled = true;
               MovieClip(this._xd15368[textString7]).buttonMode = true;
               MovieClip(this._xd15368[textString7]).alpha = 1;
            }
            else
            {
               MovieClip(this._xd15368[textString7]).mouseEnabled = false;
               MovieClip(this._xd15368[textString7]).buttonMode = false;
               MovieClip(this._xd15368[textString7]).alpha = 0.5;
            }
            if(this.count26 + count10 + 1 <= this.items.length)
            {
               MovieClip(this._xd15368[textString6]).mouseEnabled = true;
               MovieClip(this._xd15368[textString6]).buttonMode = true;
               MovieClip(this._xd15368[textString6]).alpha = 1;
            }
            else
            {
               MovieClip(this._xd15368[textString6]).mouseEnabled = false;
               MovieClip(this._xd15368[textString6]).buttonMode = false;
               MovieClip(this._xd15368[textString6]).alpha = 0.5;
            }
         }
      }
      
      private function _iq9094(param1:int) : void
      {
         if(param1 != this.count25)
         {
            this.count25 = param1;
            var count:int = 0;
            while(0 <= count9)
            {
               var count1:MovieClip = this._xd15368[textString4 + 0];
               if(count1 != null)
               {
                  if(null.idCatalogo == param1)
                  {
                     null.alpha = 1;
                     null.filters = [new GlowFilter(6710886,1,4,4,20)];
                  }
                  else
                  {
                     null.alpha = count16;
                     null.filters = [];
                  }
               }
               count++;
            }
            this.count26 = 0;
            if(param1 == count12)
            {
               this.items = CatalogObject.getInstance().getList1();
            }
            else
            {
               this.items = CatalogObject.getInstance().getList(param1);
            }
            var count3:* = "catalog.categories." + param1 + ".name";
            MovieClip(this._xd15368[textString4 + param1]).alpha = 1;
            UtilsUtils._xl9503(this._xd15368[textString2],null);
            this.stop6();
            this._fe12100();
            this._uk10025.visible = false;
         }
      }
      
      private function move(param1:LoadobjectModel) : void
      {
         var count:int = 0;
         var count3:MovieClip = null;
         var count2:CatobjectsController = param1.obj.obj._sl11700;
         if(count2.items1.indexOf(this.count25) >= 0 || this.count25 == 0)
         {
            switch(param1.obj.type)
            {
               case LoadobjectModel.count3:
                  count = 0;
                  while(count < this.count28)
                  {
                     count3 = this._xd15368[textString12 + (count + 1)];
                     if(count3.visible == true)
                     {
                        if(count3._iu7542 == param1.obj.obj.count)
                        {
                           StringUtils.cleanChildsMovieclip(count3[textString1]);
                           if(count2._su5362)
                           {
                              var count1:MovieClip = (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._bn15619(count2.textString17,"AssetObject");
                              MovieClip(count3[textString1]).addChild(null);
                           }
                           else
                           {
                              count1 = new MovieClip();
                              count1.addChild(count2._nk15832);
                           }
                           null.x = (count3.width - null.width) / 2;
                           null.y = (count3.height - null.height) / 2;
                           null.smoothing = true;
                           MovieClip(count3[textString1]).addChild(null);
                           break;
                        }
                     }
                     count++;
                  }
                  return;
               case LoadobjectModel.count2:
                  if(count2 == this._no7733)
                  {
                     if(this._uk10025.currentLabel == textString36 && this.count24 == count1)
                     {
                        this.parseData();
                     }
                     else
                     {
                        this._kf12698();
                     }
                  }
                  return;
            }
         }
      }
      
      private function stop6() : void
      {
         var count2:MovieClip = null;
         var count:CatobjectsController = null;
         var count3:Bitmap = null;
         var count1:MovieClip = null;
         var count7:int = 0;
         this.count28 = 0;
         var count2:Array = [];
         while(count7 < count10)
         {
            count2 = this._xd15368[textString12 + (count7 + 1)];
            if(this.count26 + count7 < this.items.length)
            {
               count2.gotoAndStop(textString);
               UtilsUtils._xl9503(count2[textString1],"");
               count2.buttonMode = true;
               ++this.count28;
               count = CatobjectsController(this.items[this.count26 + count7]);
               count2._iu7542 = count.id;
               if(count.member)
               {
                  count2[textString1].visible = true;
               }
               else
               {
                  count2[textString1].visible = false;
               }
               count2[textString8].visible = false;
               count2[textString9].visible = false;
               if(count._sb8254 > 0)
               {
                  count2[textString8].visible = true;
               }
               if(count._fi8088 > 0)
               {
                  count2[textString9].visible = true;
               }
               StringUtils.cleanChildsMovieclip(count2[textString1]);
               if(count._nk15832 != null)
               {
                  count3 = count._nk15832;
                  count3.x = Math.round((count2.width - count3.width) / 2);
                  count3.y = Math.round((count2.height - count3.height) / 2);
                  MovieClip(count2[textString1]).addChild(count3);
               }
               else
               {
                  count1 = StringUtils._so3313(this._dl3635);
                  count1.x = Math.round((count2.width - count1.width) / 2);
                  count1.y = Math.round((count2.height - count1.height) / 2);
                  MovieClip(count2[textString1]).addChild(count1);
                  if(count._su5362)
                  {
                     count2.push(count.textString17);
                  }
                  else
                  {
                     this._hl8190._dc2044(count);
                  }
               }
            }
            else
            {
               StringUtils.cleanChildsMovieclip(count2[textString1]);
               count2.gotoAndStop(textString4);
               count2.buttonMode = false;
               UtilsUtils._xl9503(count2[textString1],this._im12039.textString2);
               count2[textString1].visible = false;
               count2[textString8].visible = false;
               count2[textString9].visible = false;
            }
            count7++;
         }
         if(count2.length > 0)
         {
            (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._vv13029(count2,this.initialize);
         }
      }
      
      private function initialize() : void
      {
         this.stop6();
         this._fe12100();
      }
      
      private function stop7(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.target);
         var count3:int = int(count.name.charAt(count.name.length - 1));
         if(count3 <= this.count28)
         {
            MovieClip(param1.target).gotoAndStop(textString1);
         }
      }
      
      private function stop8(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.target);
         var count3:int = int(count.name.charAt(count.name.length - 1));
         if(count3 <= this.count28)
         {
            MovieClip(param1.target).gotoAndStop(textString);
         }
      }
      
      private function stop9(param1:MouseEvent) : void
      {
         var count:int = 0;
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var count3:MovieClip = MovieClip(param1.target);
         var count1:int = int(count3.name.charAt(count3.name.length - 1));
         if(count1 <= this.count28)
         {
            count = int(param1.currentTarget._iu7542);
            this._ja12969(count);
         }
         this._unidades.text = "1";
      }
      
      private function _ja12969(param1:int) : void
      {
         var count:CatobjectsController = null;
         this._uk10025.visible = true;
         this._no7733 = null;
         for each(count in this.items)
         {
            if(count.id == param1)
            {
               this._no7733 = count;
               if(this._uk10025.currentLabel == textString36 && this.count24 == count1)
               {
                  this.parseData();
                  break;
               }
               this._rk15869(count1);
               break;
            }
         }
      }
      
      private function parseData() : void
      {
         var count2:int = 0;
         var count:MovieClip = null;
         var count3:MovieClip = null;
         var count1:int = 0;
         UtilsUtils._xl9503(this._uk10025[textString20],this._no7733.name);
         UtilsUtils._xl9503(this._uk10025[textString21],this._no7733.description);
         UtilsUtils._xl9503(this._uk10025[textString16][textString22],(this._no7733._sb8254 * parseInt(this._unidades.text)).toString());
         UtilsUtils._xl9503(this._uk10025[textString17][textString22],(this._no7733._fi8088 * parseInt(this._unidades.text)).toString());
         UtilsUtils._xl9503(this._uk10025[textString15][textString1],this._im12039._qa14188);
         MovieClip(this._uk10025[textString15]).visible = false;
         MovieClip(this._uk10025[textString15]).mouseChildren = false;
         MovieClip(this._uk10025[textString15]).mouseEnabled = false;
         TextField(this._uk10025[textString20]).mouseEnabled = false;
         TextField(this._uk10025[textString21]).mouseEnabled = false;
         if(this._no7733._fi8088 > 0)
         {
            MovieClip(this._uk10025[textString17]).visible = true;
         }
         else
         {
            MovieClip(this._uk10025[textString17]).visible = false;
         }
         if(this._no7733._sb8254 > 0)
         {
            MovieClip(this._uk10025[textString16]).visible = true;
         }
         else
         {
            MovieClip(this._uk10025[textString16]).visible = false;
         }
         if(!this._no7733.member)
         {
            MovieClip(this._uk10025[textString31]).visible = false;
         }
         else
         {
            if(UserSession.getInstance().member)
            {
            }
            MovieClip(this._uk10025[textString31]).visible = true;
            UtilsUtils._xl9503(this._uk10025[textString31][textString1],this._im12039._af14267);
         }
         this._kf12698();
         count2 = 0;
         while(count2 < 3)
         {
            if(this._no7733.items4[count2] != 0)
            {
               count1++;
            }
            count2++;
         }
         count2 = 0;
         while(count2 < 3)
         {
            count = MovieClip(this._uk10025[textString23 + count2]);
            count3 = MovieClip(this._uk10025[textString24 + count2]);
            if(count1 > 1 && this._no7733.items4[count2] != 0)
            {
               count.visible = true;
               count3.visible = true;
            }
            else
            {
               if(this.count27 == count2)
               {
                  this.count27 = count13;
               }
               count.visible = false;
               count3.visible = false;
            }
            count2++;
         }
         if(count1 > 1)
         {
            MovieClip(this._uk10025[textString25]).visible = true;
         }
         else
         {
            MovieClip(this._uk10025[textString25]).visible = false;
         }
         this.stop13(this.count27);
         this._op15399();
      }
      
      private function _kf12698() : void
      {
         var count2:MovieClip = null;
         var count:SceneObjectProperties = null;
         var count3:Bitmap = null;
         var count1:Number = NaN;
         var count2:Number = NaN;
         var count7:Number = NaN;
         var items:MovieClip = null;
         if(this._uk10025 != null && this._uk10025[textString1] != null)
         {
            count2 = MovieClip(this._uk10025[textString1]);
            StringUtils.cleanChildsMovieclip(count2);
            count = new SceneObjectProperties(-1,this._no7733.id,0,0,this._no7733.colors,this._no7733,"");
            if(this._no7733._kc6805 != null)
            {
               count3 = count._rd1942(1);
               count3.smoothing = true;
               if(count3.width != 0 && count3.height != 0)
               {
                  count1 = count22 / count3.width;
                  count2 = count23 / count3.height;
                  count7 = Math.min(count1,count2);
                  if(count7 < 1)
                  {
                     count3.scaleX = count3.scaleY = count7;
                  }
               }
               count3.x = -count3.width / 2;
               count3.y = -count3.height / 2;
               count2.addChild(count3);
            }
            else
            {
               items = StringUtils._so3313(this._dl3635);
               items.x = items.y = 0;
               items.x = -items.width / 2;
               items.y = -items.height / 2;
               count2.addChild(items);
               if(count._sl11700._su5362)
               {
                  (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._vv13029([count._sl11700.textString17],this._kf12698);
               }
               else
               {
                  this._hl8190.loadObject(count);
               }
            }
            count.destroy();
            count = null;
         }
      }
      
      private function _rk15869(param1:int) : void
      {
         this.move4();
         switch(param1)
         {
            case count:
               UtilsUtils._vt11823(this._uk10025,textString35);
               break;
            case count1:
               UtilsUtils._vt11823(this._uk10025,textString36);
               break;
            case count2:
               UtilsUtils._vt11823(this._uk10025,textString37);
               break;
            case count3:
               UtilsUtils._vt11823(this._uk10025,textString38);
               break;
            case count4:
               UtilsUtils._vt11823(this._uk10025,textString39);
               break;
            case count5:
               UtilsUtils._vt11823(this._uk10025,textString40);
               break;
            case count6:
               UtilsUtils._vt11823(this._uk10025,textString41);
               break;
            case count7:
               UtilsUtils._vt11823(this._uk10025,textString42);
         }
         this.count24 = param1;
         this._op15399();
      }
      
      private function _we8238() : void
      {
         switch(this._uk10025.currentLabel)
         {
            case textString36:
               this._cs4168();
               this._km15385();
               if(this._no7733 != null)
               {
                  this.parseData();
               }
               return;
            case textString37:
            case textString38:
               this._cs4168();
               this._fm5551();
               return;
            case textString39:
            case textString40:
               this._cs4168();
               this.parseData1();
               return;
            case textString41:
            case textString42:
               this._cs4168();
               this.parseData2();
               return;
            default:
               return;
         }
      }
      
      private function _op15399() : void
      {
         var count2:int = 0;
         var count:int = 0;
         var count3:Number = NaN;
         var count1:MovieClip = this._uk10025["discountLabel"];
         count1.visible = false;
         if(Boolean(this._no7733) && Boolean(this._no7733._ob13927))
         {
            count2 = this._no7733.count42 > 0 ? int(this._no7733.count42) : int(this._no7733.count43);
            count = this._no7733._sb8254 > 0 ? int(this._no7733._sb8254) : int(this._no7733._fi8088);
            count3 = count2 != 0 ? (count2 - count) / count2 : 0;
            count1.visible = count3 > 0;
            count1["title"].text = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("catalog.sale");
            UtilsUtils._xl9503(count1["oldPrice"],count2 + ".-");
            UtilsUtils._xl9503(count1["newPrice"],count + ".-");
            UtilsUtils._xl9503(count1["savings"],"-" + Math.ceil(count3 * 100) + "%");
         }
      }
      
      private function stop10(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(textString1);
         TextField(param1.target[textString1]).textColor = 16777215;
      }
      
      private function stop11(param1:MouseEvent) : void
      {
         var count:int = int(MovieClip(param1.target).name.charAt(MovieClip(param1.target).name.length - 1));
         if(count != this.count27)
         {
            MovieClip(param1.target).gotoAndStop(textString);
            TextField(param1.target[textString1]).textColor = 10066329;
         }
      }
      
      private function stop12(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         var count:int = int(MovieClip(param1.target).name.charAt(MovieClip(param1.target).name.length - 1));
         this.stop13(count);
      }
      
      private function stop13(param1:int) : void
      {
         var count:MovieClip = null;
         var count3:int = 0;
         this.count27 = param1;
         while(count3 < 3)
         {
            count = MovieClip(this._uk10025[textString23 + count3]);
            if(count3 != this.count27)
            {
               count.gotoAndStop(textString);
               TextField(count[textString1]).textColor = 10066329;
            }
            else
            {
               count.gotoAndStop(textString1);
               TextField(count[textString1]).textColor = 16777215;
               this._uk10025[textString25].x = count.x + count.width / 2;
            }
            count3++;
         }
         var count1:MovieClip = MovieClip(this._uk10025[textString1]);
         count1.scaleX = count1.scaleY = this._no7733.items4[this.count27];
      }
      
      private function stop14(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(textString1);
      }
      
      private function stop15(param1:MouseEvent) : void
      {
         MovieClip(param1.target).gotoAndStop(textString);
      }
      
      private function stop16(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this.stop15(param1);
         if(UserSession.getInstance().member && this._no7733.member || !this._no7733.member)
         {
            this._rk15869(count2);
         }
         else
         {
            this.authenticateUser2();
            this._lp469._aa3338();
         }
         TextField(this._uk10025[textString16][textString22]).text = "" + parseInt(TextField(this._uk10025[textString16][textString22]).text) * parseInt(this._unidades.text);
         UtilsUtils._xl9503(this._uk10025[textString16][textString22],TextField(this._uk10025[textString16][textString22]).text);
      }
      
      private function stop17(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this.stop15(param1);
         if(UserSession.getInstance().member && this._no7733.member || !this._no7733.member)
         {
            if(UserSession.getInstance()._ea4493 < this._no7733._fi8088)
            {
               MovieClip(this._uk10025[textString15]).visible = true;
               return;
            }
            this._rk15869(count3);
         }
         else
         {
            this.authenticateUser2();
            this._lp469._aa3338();
         }
         TextField(this._uk10025[textString17][textString22]).text = "" + parseInt(TextField(this._uk10025[textString17][textString22]).text) * parseInt(this._unidades.text);
         UtilsUtils._xl9503(this._uk10025[textString17][textString22],TextField(this._uk10025[textString17][textString22]).text);
      }
      
      private function stop18(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(this._no7733._sb8254 * parseInt(this._unidades.text) > UserSession.getInstance()._dx11054)
         {
            this._lp469.move3();
         }
         else
         {
            this._rk15869(count4);
            this._uh518(count17);
         }
      }
      
      private function stop19(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(this._no7733._fi8088 * parseInt(this._unidades.text) > UserSession.getInstance()._ea4493)
         {
            this._lp469.move3();
         }
         else
         {
            this._rk15869(count5);
            this._uh518(count18);
         }
      }
      
      private function stop20(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         this._rk15869(count1);
      }
      
      private function _uh518(param1:int) : void
      {
         if(this.count29 == 0)
         {
            this._jm3064.addEventListener(ObjetosEvents.textString,this.move1);
         }
         ++this.count29;
         switch(param1)
         {
            case count17:
               this._jm3064.handleSocket(this._no7733.id,CatobjectsController.getString(this.count27),this._unidades.text);
               return;
            case count18:
               this._jm3064.handleSocket1(this._no7733.id,CatobjectsController.getString(this.count27),this._unidades.text);
               return;
            default:
               return;
         }
      }
      
      private function move1(param1:ObjetosEvents) : void
      {
         var count:uint = uint(String(param1.items[1]).charCodeAt(0));
         switch(count)
         {
            case ObjetosController.count4:
            case ObjetosController.count5:
               this._ts810(param1.items);
               --this.count29;
               if(this.count29 == 0)
               {
                  this._jm3064.removeEventListener(ObjetosEvents.textString,this.move1);
               }
               return;
            default:
               return;
         }
      }
      
      private function _ts810(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new Logs(Logger.count2,"FichaCompraObjetos.recTramaBuyObject",param1.toString()));
            return;
         }
         var count:uint = uint(String(param1[1]).charCodeAt(0));
         var count3:int = int(param1[2]);
         switch(count3)
         {
            case ObjetosController.count6:
               if(this._uk10025 != null && this._uk10025.visible == true && (this.count24 == count4 || this.count24 == count5))
               {
                  this._lp469.move3();
               }
               return;
            case ObjetosController.count7:
               this._lp469._od7419(0);
               switch(count)
               {
                  case ObjetosController.count4:
                     if(this._uk10025 != null && this._uk10025.visible == true && this.count24 == count4)
                     {
                        this._rk15869(count6);
                     }
                     break;
                  case ObjetosController.count5:
                     if(this._uk10025 != null && this._uk10025.visible == true && this.count24 == count5)
                     {
                        this._rk15869(count7);
                     }
               }
               return;
            case ObjetosController.count8:
               if(this._uk10025 != null && this._uk10025.visible == true && this.count24 == count4)
               {
                  this._lp469.move3();
               }
               return;
            default:
               this.logs._kp3815(new Logs(Logger.count,"FichaCompraObjetos.recTramaBuyObject","buyObjectResponse invalid=" + count3));
               return;
         }
      }
      
      private function _km15385() : void
      {
         MovieClip(this._uk10025[textString16]).mouseChildren = false;
         TextField(this._uk10025[textString16][textString22]).mouseEnabled = false;
         MovieClip(this._uk10025[textString17]).mouseChildren = false;
         TextField(this._uk10025[textString17][textString22]).mouseEnabled = false;
         this._cn2704();
      }
      
      private function _fm5551() : void
      {
         UtilsUtils._xl9503(this._uk10025[textString29],this._im12039._ps14738);
         TextField(this._uk10025[textString29]).mouseEnabled = false;
         UtilsUtils._xl9503(this._uk10025[textString30],this._im12039.textString2);
         TextField(this._uk10025[textString30]).mouseEnabled = false;
         MovieClip(this._uk10025[textString3]).mouseChildren = false;
         MovieClip(this._uk10025[textString2]).mouseChildren = false;
         switch(this.count24)
         {
            case count2:
               UtilsUtils._xl9503(this._uk10025[textString16][textString22],(this._no7733._sb8254 * parseInt(this._unidades.text)).toString());
               break;
            case count3:
               UtilsUtils._xl9503(this._uk10025[textString17][textString22],(this._no7733._fi8088 * parseInt(this._unidades.text)).toString());
         }
         this._cn2704();
      }
      
      private function parseData1() : void
      {
         switch(this.count24)
         {
            case count4:
               UtilsUtils._xl9503(this._uk10025[textString16][textString22],(this._no7733._sb8254 * parseInt(this._unidades.text)).toString());
               return;
            case count5:
               UtilsUtils._xl9503(this._uk10025[textString17][textString22],(this._no7733._fi8088 * parseInt(this._unidades.text)).toString());
               return;
            default:
               return;
         }
      }
      
      private function parseData2() : void
      {
         switch(this.count24)
         {
            case count6:
               UtilsUtils._xl9503(this._uk10025[textString16][textString22],(this._no7733._sb8254 * parseInt(this._unidades.text)).toString());
               break;
            case count7:
               UtilsUtils._xl9503(this._uk10025[textString17][textString22],(this._no7733._fi8088 * parseInt(this._unidades.text)).toString());
         }
         UtilsUtils._xl9503(this._uk10025[TF_TITULO],this._im12039._hy5274);
         UtilsUtils._xl9503(this._uk10025[textString28],this._im12039._yt12270);
      }
      
      private function _cn2704() : void
      {
         UtilsUtils._xl9503(this._uk10025[textString23 + count13][textString1],this._im12039.NORMAL);
         TextField(this._uk10025[textString23 + count13][textString1]).mouseEnabled = false;
         UtilsUtils._xl9503(this._uk10025[textString23 + count15][textString1],this._im12039._hj14790);
         TextField(this._uk10025[textString23 + count15][textString1]).mouseEnabled = false;
         UtilsUtils._xl9503(this._uk10025[textString23 + count14][textString1],this._im12039._cw10346);
         TextField(this._uk10025[textString23 + count14][textString1]).mouseEnabled = false;
      }
      
      private function _kc2267(param1:MovieClip) : void
      {
         param1.addEventListener(MouseEvent.ROLL_OVER,this.stop1);
         param1.addEventListener(MouseEvent.ROLL_OUT,this.stop2);
      }
      
      private function move2(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.ROLL_OVER,this.stop1);
         param1.removeEventListener(MouseEvent.ROLL_OUT,this.stop2);
      }
      
      private function _qk12131() : void
      {
         var count2:int = 0;
         var count:MovieClip = null;
         var count3:MovieClip = null;
         this._kc2267(this._xd15368[textString3]);
         MovieClip(this._xd15368[textString3]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop);
         this._kc2267(this._xd15368[textString6]);
         MovieClip(this._xd15368[textString6]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop4);
         this._kc2267(this._xd15368[textString7]);
         MovieClip(this._xd15368[textString7]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop5);
         count2 = 0;
         while(count2 < count10)
         {
            count = this._xd15368[textString12 + (count2 + 1)];
            count.addEventListener(MouseEvent.MOUSE_DOWN,this.stop9);
            count.mouseChildren = false;
            count.addEventListener(MouseEvent.ROLL_OVER,this.stop7);
            count.addEventListener(MouseEvent.ROLL_OUT,this.stop8);
            count2++;
         }
         count2 = 0;
         while(count2 <= count9)
         {
            count3 = this._xd15368[textString4 + count2];
            if(count3 != null)
            {
               count3.addEventListener(MouseEvent.MOUSE_OVER,this._sl641);
               count3.addEventListener(MouseEvent.MOUSE_OUT,this._bt6978);
               count3.addEventListener(MouseEvent.MOUSE_DOWN,this.stop3);
               count3.alpha = count16;
               count3.buttonMode = true;
               count3.idCatalogo = count2;
            }
            count2++;
         }
      }
      
      private function move3() : void
      {
         var count2:int = 0;
         var count:MovieClip = null;
         var count3:MovieClip = null;
         this.move2(this._xd15368[textString3]);
         MovieClip(this._xd15368[textString3]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop);
         this.move2(this._xd15368[textString6]);
         MovieClip(this._xd15368[textString6]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop4);
         this.move2(this._xd15368[textString7]);
         MovieClip(this._xd15368[textString7]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop5);
         count2 = 0;
         while(count2 < count10)
         {
            count = this._xd15368[textString12 + (count2 + 1)];
            count.removeEventListener(MouseEvent.MOUSE_DOWN,this.stop9);
            count.removeEventListener(MouseEvent.ROLL_OVER,this.stop7);
            count.removeEventListener(MouseEvent.ROLL_OUT,this.stop8);
            count2++;
         }
         count2 = 0;
         while(count2 <= count9)
         {
            count3 = this._xd15368[textString4 + count2];
            if(count3 != null)
            {
               count3.removeEventListener(MouseEvent.MOUSE_OVER,this._sl641);
               count3.removeEventListener(MouseEvent.MOUSE_OUT,this._bt6978);
               count3.removeEventListener(MouseEvent.MOUSE_DOWN,this.stop3);
            }
            count2++;
         }
      }
      
      public function _cs4168() : void
      {
         switch(this.count24)
         {
            case count1:
               this._uv4014();
               MovieClip(this._uk10025[textString16]).addEventListener(MouseEvent.ROLL_OVER,this.stop14);
               MovieClip(this._uk10025[textString16]).addEventListener(MouseEvent.ROLL_OUT,this.stop15);
               MovieClip(this._uk10025[textString16]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop16);
               MovieClip(this._uk10025[textString16]).buttonMode = true;
               MovieClip(this._uk10025[textString17]).addEventListener(MouseEvent.ROLL_OVER,this.stop14);
               MovieClip(this._uk10025[textString17]).addEventListener(MouseEvent.ROLL_OUT,this.stop15);
               MovieClip(this._uk10025[textString17]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop17);
               MovieClip(this._uk10025[textString17]).buttonMode = true;
               return;
            case count2:
               this._uv4014();
               MovieClip(this._uk10025[textString16]).buttonMode = false;
               this._kc2267(this._uk10025[textString3]);
               MovieClip(this._uk10025[textString3]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop18);
               MovieClip(this._uk10025[textString3]).buttonMode = true;
               this._kc2267(this._uk10025[textString2]);
               MovieClip(this._uk10025[textString2]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop20);
               MovieClip(this._uk10025[textString2]).buttonMode = true;
               return;
            case count3:
               this._uv4014();
               MovieClip(this._uk10025[textString17]).buttonMode = false;
               this._kc2267(this._uk10025[textString3]);
               MovieClip(this._uk10025[textString3]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop19);
               MovieClip(this._uk10025[textString3]).buttonMode = true;
               this._kc2267(this._uk10025[textString2]);
               MovieClip(this._uk10025[textString2]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop20);
               MovieClip(this._uk10025[textString2]).buttonMode = true;
               return;
            case count4:
               return;
            case count5:
               return;
            case count6:
               return;
            case count7:
               return;
            case count8:
               return;
            default:
               return;
         }
      }
      
      public function move4() : void
      {
         switch(this.count24)
         {
            case count1:
               this.move5();
               MovieClip(this._uk10025[textString16]).removeEventListener(MouseEvent.ROLL_OVER,this.stop14);
               MovieClip(this._uk10025[textString16]).removeEventListener(MouseEvent.ROLL_OUT,this.stop15);
               MovieClip(this._uk10025[textString16]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop16);
               MovieClip(this._uk10025[textString17]).removeEventListener(MouseEvent.ROLL_OVER,this.stop14);
               MovieClip(this._uk10025[textString17]).removeEventListener(MouseEvent.ROLL_OUT,this.stop15);
               MovieClip(this._uk10025[textString17]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop17);
               return;
            case count2:
               this.move5();
               this.move2(this._uk10025[textString3]);
               MovieClip(this._uk10025[textString3]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop18);
               this.move2(this._uk10025[textString2]);
               MovieClip(this._uk10025[textString2]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop20);
               return;
            case count3:
               this.move5();
               this.move2(this._uk10025[textString3]);
               MovieClip(this._uk10025[textString3]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop19);
               this.move2(this._uk10025[textString2]);
               MovieClip(this._uk10025[textString2]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop20);
               return;
            case count4:
               return;
            case count5:
               return;
            case count6:
               return;
            case count7:
               return;
            case count8:
               return;
            default:
               return;
         }
      }
      
      public function _uv4014() : void
      {
         var count2:int = 0;
         while(count2 < 3)
         {
            MovieClip(this._uk10025[textString23 + count2]).addEventListener(MouseEvent.ROLL_OVER,this.stop10);
            MovieClip(this._uk10025[textString23 + count2]).addEventListener(MouseEvent.ROLL_OUT,this.stop11);
            MovieClip(this._uk10025[textString23 + count2]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop12);
            MovieClip(this._uk10025[textString23 + count2]).buttonMode = true;
            count2++;
         }
      }
      
      public function move5() : void
      {
         var count2:int = 0;
         while(count2 < 3)
         {
            MovieClip(this._uk10025[textString23 + count2]).removeEventListener(MouseEvent.ROLL_OVER,this.stop10);
            MovieClip(this._uk10025[textString23 + count2]).removeEventListener(MouseEvent.ROLL_OUT,this.stop11);
            MovieClip(this._uk10025[textString23 + count2]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop12);
            count2++;
         }
      }
   }
}

