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
   import src.modules.chooseScene.ChoosesceneController;
   import src.modules.chooseScene.ChoosesceneModel;
   import src.modules.login.*;
   import src.tv.boombang.commons.utils.*;
   import src.utils.*;
   
   public class PanelinferiorModel
   {
      
      private static const textString:String = "tfTiempo";
      
      private static const textString1:String = "tfTexto";
      
      private static const textString2:String = "tfHasGanado";
      
      private static const textString3:String = "tfCargando";
      
      private static const textString4:String = "tfRegalo";
      
      private static const textString5:String = "mcFondoCajaSorpresa";
      
      private static const textString6:String = "mcAbrirRegalo";
      
      private static const textString7:String = "normal";
      
      private static const textString8:String = "reloj";
      
      private static const textString9:String = "relojRollOver";
      
      private static const textString10:String = "abrelo";
      
      private static const textString11:String = "recibiendoRegalo";
      
      private static const textString12:String = "regalo";
      
      private static const textString13:String = "regaloBooms";
      
      private static const textString21:String = "noVisible";
      
      public static const count:int = 1;
      
      public static const count1:int = 2;
      
      public static const count2:int = 3;
      
      public static const count3:int = 4;
      
      public static const count4:int = 5;
      
      public static const count:int = 6;
      
      private static const textString15:String = "tfTitulo";
      
      private static const textString16:String = "tfTexto";
      
      private static const textString17:String = "tfCerrar";
      
      private static const textString18:String = "mcBotonCerrar";
      
      private static const textString19:String = "mcFondoBotonCerrar";
      
      private static const textString20:String = "mcRegaloObjeto";
      
      private static const textString21:String = "normal";
      
      private static const textString22:String = "rollover";
      
      private static const textString23:String = "tfBooms";
      
      public static const count6:Number = 514;
      
      public static const count7:Number = 555;
      
      private var _xc13040:MovieClip;
      
      private var textString3:int = 6;
      
      private var _mc1411:MovieClip;
      
      private var _gy10361:ChoosesceneModel;
      
      private var _vc10957:ChoosesceneController;
      
      private var count9:int;
      
      private var count10:int;
      
      private var count11:int;
      
      private var count12:int;
      
      private var logs:Logger;
      
      private var count:int;
      
      public function PanelinferiorModel(param1:MovieClip, param2:ChoosesceneModel, param3:ChoosesceneController)
      {
         super();
         this._xc13040 = param1;
         this._gy10361 = param2;
         this._vc10957 = param3;
         this._mc1411 = param1[textString6];
         this._xc13040.visible = false;
         this.logs = Logger.getInstance();
         StringUtils._dp2863(param1,this._jv11222);
         param1.hitArea = param1[textString5];
         MovieClip(param1[textString5]).visible = false;
         MovieClip(this._mc1411[textString18]).hitArea = MovieClip(this._mc1411[textString19]);
         MovieClip(this._mc1411[textString19]).visible = false;
         this._br9114();
         this._mc1411.visible = false;
         this._ps573();
         this.count = _xw1367.count5;
         this.init();
      }
      
      public function get status() : int
      {
         return this.textString3;
      }
      
      public function _ps573() : void
      {
         if(UserSession.getInstance()._lf431 < 0)
         {
            this._xo11249(count);
         }
         else if(UserSession.getInstance()._lf431 == 0)
         {
            this._xo11249(count2);
         }
         else
         {
            this._xo11249(count1);
         }
      }
      
      private function _jv11222() : void
      {
         switch(this._xc13040.currentLabel)
         {
            case textString7:
               this._xc13040.buttonMode = false;
               this._wn813();
               return;
            case textString8:
               this._xc13040.buttonMode = false;
               this._en11910();
               this._wn813();
               return;
            case textString9:
               this._xc13040.buttonMode = false;
               this._ps5293();
               this._wn813();
               return;
            case textString10:
               this._xc13040.buttonMode = true;
               this._rc13271();
               this._wn813();
               return;
            case textString11:
               this._xc13040.buttonMode = false;
               this._fr171();
               this.authenticateUser();
               this._wn813();
               return;
            case textString12:
               this._xc13040.buttonMode = false;
               this._ae10440();
               this._hn2970();
               this._wn813();
               return;
            case textString13:
               this._xc13040.buttonMode = false;
               this._iq9758();
               this._wn813();
               return;
            case textString21:
               return;
            default:
               return;
         }
      }
      
      private function init() : void
      {
         this.count9 = -1;
         this._wn813();
         this.onClick();
      }
      
      public function destroy() : void
      {
         if(this.textString3 == count3)
         {
            SceneObjectManager.getInstance().removeEventListener(LoadobjectModel._bs1884,this.move);
         }
         this.onClick1();
         this._vc10957.removeEventListener(LoginEvents.textString,this.authenticateUser1);
         StringUtils._ff5056(this._xc13040);
         this.authenticateUser2();
      }
      
      public function show() : void
      {
         if(this._xc13040.visible == false)
         {
            this._ps573();
            this._xc13040.x = count6;
            this._xc13040.y = DisplayUtils._ps6769().stageHeight - 102;
            this._xc13040.visible = true;
         }
      }
      
      public function authenticateUser2() : void
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
         var count2:MovieClip = null;
         var count:CatobjectsController = null;
         var count3:Bitmap = null;
         if(this.count10 > 0)
         {
            count2 = MovieClip(this._xc13040[textString20]);
            StringUtils.cleanChildsMovieclip(count2);
            count = CatalogObject.getInstance()._ms14382(this.count12);
            count3 = new Bitmap(count._nk15832.bitmapData);
            count3.x = -count3.width / 2;
            count3.y = -count3.height / 2;
            count3.smoothing = true;
            count2.addChild(count3);
         }
      }
      
      private function move(param1:LoadobjectModel) : void
      {
         var count:CatobjectsController = param1.obj.obj._sl11700;
         switch(param1.obj.type)
         {
            case LoadobjectModel.count3:
               if(count.id == this.count12)
               {
                  SceneObjectManager.getInstance().removeEventListener(LoadobjectModel._bs1884,this.move);
                  if(this.textString3 == count3)
                  {
                     this._xo11249(count4);
                  }
               }
               return;
            default:
               return;
         }
      }
      
      private function show() : void
      {
         if(this.textString3 == count3)
         {
            this._xo11249(count4);
         }
      }
      
      private function _ou8955(param1:MouseEvent) : void
      {
         if(this.textString3 == count1)
         {
            UtilsUtils._vt11823(this._xc13040,textString9);
         }
      }
      
      private function _dk5440(param1:MouseEvent) : void
      {
         if(this.textString3 == count1)
         {
            UtilsUtils._vt11823(this._xc13040,textString8);
         }
      }
      
      private function stop(param1:MouseEvent) : void
      {
         param1.stopPropagation();
         param1.stopImmediatePropagation();
         if(this.textString3 == count1)
         {
            this._mc1411.visible = true;
         }
         else if(this.textString3 == count2)
         {
            this._xo11249(count3);
         }
      }
      
      private function authenticateUser() : void
      {
         this._vc10957.addEventListener(LoginEvents.textString,this.authenticateUser1);
         this._vc10957.authenticateUser1();
      }
      
      private function authenticateUser1(param1:LoginEvents) : void
      {
         var count3:uint = uint(String(param1.items[1]).charCodeAt(0));
         if(count3 == LoginProtocol.count17)
         {
            this._vc10957.removeEventListener(LoginEvents.textString,this.authenticateUser1);
            if(param1.items.length < 4)
            {
               this.logs._kp3815(new Logs(Logger.count2,"CajaSorpresa.onLoginEvent",param1.items.toString()));
               return;
            }
            this.count10 = int(param1.items[2]);
            switch(this.count10)
            {
               case LoginProtocol.count19:
                  this.count11 = int(param1.items[3]);
                  break;
               case LoginProtocol.count20:
                  this.count12 = int(param1.items[3]);
                  break;
               default:
                  this.logs._kp3815(new Logs(Logger.count,"CajaSorpresa.onLoginEvent","tipoPremio invalid=" + this.count10));
                  return;
            }
            if(this.textString3 == count3)
            {
               if(this.count10 == LoginProtocol.count20)
               {
                  var count:CatobjectsController = CatalogObject.getInstance()._ms14382(this.count12);
                  this.logs._kp3815(new Logs(Logger.count,"CajaSorpresa.onLoginEvent","idObjeto invalid=" + this.count12));
               }
               else
               {
                  this._xo11249(count4);
               }
            }
         }
      }
      
      private function _en11910() : void
      {
         var count2:TextField = TextField(this._xc13040[textString]);
         count2.mouseEnabled = false;
         this._rn15568();
      }
      
      private function _ps5293() : void
      {
         var count2:TextField = TextField(this._xc13040[textString1]);
         count2.mouseEnabled = false;
         UtilsUtils._xl9503(count2,this._gy10361._yj2467);
      }
      
      private function _rc13271() : void
      {
         var count2:TextField = TextField(this._xc13040[textString1]);
         count2.mouseEnabled = false;
         UtilsUtils._xl9503(count2,this._gy10361._gx10275);
      }
      
      private function _ae10440() : void
      {
         var count2:TextField = TextField(this._xc13040[textString1]);
         count2.mouseEnabled = false;
         UtilsUtils._xl9503(count2,this._gy10361._pr9075);
         var count:TextField = TextField(this._xc13040[textString2]);
         count.mouseEnabled = false;
         if(this.count10 <= 0)
         {
            UtilsUtils._xl9503(count,this._gy10361._bo15896);
         }
         else
         {
            UtilsUtils._xl9503(count,this._gy10361._bd2711);
         }
      }
      
      private function _iq9758() : void
      {
         this._ae10440();
         var count2:TextField = TextField(this._xc13040[textString23]);
         count2.mouseEnabled = false;
         UtilsUtils._xl9503(count2,this.count11.toString());
      }
      
      private function _fr171() : void
      {
         var count2:TextField = TextField(this._xc13040[textString3]);
         count2.mouseEnabled = false;
         UtilsUtils._xl9503(count2,this._gy10361._qi9936);
      }
      
      private function _br9114() : void
      {
         UtilsUtils._xl9503(TextField(this._mc1411[textString15]),this._gy10361._ht5695);
         UtilsUtils._xl9503(TextField(this._mc1411[textString16]),this._gy10361._uo6910);
         UtilsUtils._xl9503(TextField(this._mc1411[textString17]),this._gy10361._ey14590);
      }
      
      private function _wn813() : void
      {
         if(this._xc13040[textString4])
         {
            UtilsUtils._xl9503(TextField(this._xc13040[textString4]),this._gy10361._aw15441);
         }
      }
      
      private function stop1(param1:MouseEvent) : void
      {
         MovieClip(this._mc1411[textString18]).gotoAndStop(textString22);
      }
      
      private function stop2(param1:MouseEvent) : void
      {
         MovieClip(this._mc1411[textString18]).gotoAndStop(textString21);
      }
      
      private function stop3(param1:MouseEvent) : void
      {
         param1.stopPropagation();
         param1.stopImmediatePropagation();
         this._mc1411.visible = false;
      }
      
      private function _rn15568() : void
      {
         var count2:TextField = null;
         var count:String = null;
         var count3:String = null;
         var count1:int = int(UserSession.getInstance()._lf431);
         count1 = count1 - (int(getTimer() / 1000) - UserSession.getInstance()._xj13389);
         if(count1 != this.count9)
         {
            if(count1 <= 0)
            {
               this._mc1411.visible = false;
               this._xo11249(count2);
            }
            else
            {
               count2 = TextField(this._xc13040[textString]);
               if(count2 != null)
               {
                  count = int(count1 / 60).toString();
                  count3 = int(count1 % 60).toString();
                  if(count.length < 2)
                  {
                     count = "0" + count;
                  }
                  if(count3.length < 2)
                  {
                     count3 = "0" + count3;
                  }
                  UtilsUtils._xl9503(count2,count + ":" + count3);
                  this.count9 = count1;
               }
            }
         }
      }
      
      public function _xo11249(param1:int) : void
      {
         switch(param1)
         {
            case count:
               UtilsUtils._vt11823(this._xc13040,textString21);
               break;
            case count:
               UtilsUtils._vt11823(this._xc13040,textString7);
               break;
            case count1:
               UtilsUtils._vt11823(this._xc13040,textString8);
               break;
            case count2:
               UtilsUtils._vt11823(this._xc13040,textString10);
               break;
            case count3:
               UserSession.getInstance()._lf431 = -1;
               UtilsUtils._vt11823(this._xc13040,textString11);
               break;
            case count4:
               if(this.count10 == LoginProtocol.count19)
               {
                  UtilsUtils._vt11823(this._xc13040,textString13);
                  break;
               }
               UtilsUtils._vt11823(this._xc13040,textString12);
         }
         this.textString3 = param1;
      }
      
      public function loop() : void
      {
         if(Boolean(this._xc13040.visible) && this.textString3 == count1)
         {
            this._rn15568();
         }
      }
      
      private function onClick() : void
      {
         this._xc13040.addEventListener(MouseEvent.ROLL_OVER,this._ou8955);
         this._xc13040.addEventListener(MouseEvent.ROLL_OUT,this._dk5440);
         this._xc13040.addEventListener(MouseEvent.CLICK,this.stop);
         MovieClip(this._mc1411[textString18]).addEventListener(MouseEvent.ROLL_OVER,this.stop1);
         MovieClip(this._mc1411[textString18]).addEventListener(MouseEvent.ROLL_OUT,this.stop2);
         MovieClip(this._mc1411[textString18]).addEventListener(MouseEvent.CLICK,this.stop3);
      }
      
      private function onClick1() : void
      {
         this._xc13040.removeEventListener(MouseEvent.ROLL_OVER,this._ou8955);
         this._xc13040.removeEventListener(MouseEvent.ROLL_OUT,this._dk5440);
         this._xc13040.removeEventListener(MouseEvent.CLICK,this.stop);
         MovieClip(this._mc1411[textString18]).removeEventListener(MouseEvent.ROLL_OVER,this.stop1);
         MovieClip(this._mc1411[textString18]).removeEventListener(MouseEvent.ROLL_OUT,this.stop2);
         MovieClip(this._mc1411[textString18]).removeEventListener(MouseEvent.CLICK,this.stop3);
      }
   }
}

