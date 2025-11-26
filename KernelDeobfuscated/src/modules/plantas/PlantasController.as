package src.modules.plantas
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.*;
   import src.*;
   import src.allData.catObjects.*;
   import src.allData.sceneObjects.*;
   import src.modules.privados.PrivadosModel;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class PlantasController
   {
      
      private static const textString:String = "mcFichaDatosPlanta";
      
      private static const textString1:String = "mcFichaInformacionPlanta";
      
      private static const textString2:String = "mcFichaPlantaMuerta";
      
      private static const textString3:String = "mcFichaPlantaFinalizada";
      
      private static const textString4:String = "mcRegadera";
      
      private static const textString5:String = "mcFichaDatosDragon";
      
      private static const textString6:String = "mcFichaInformacionDragon";
      
      private static const textString7:String = "mcFichaDragonMuerto";
      
      private static const textString8:String = "mcFichaDragonFinalizado";
      
      private static const textString9:String = "mcComidaDragon";
      
      private static const textString10:String = "tf_Titulo";
      
      private static const textString11:String = "tf_Descripcion";
      
      private static const textString12:String = "tf_Evolucion";
      
      private static const textString13:String = "tf_Agua";
      
      private static const textString14:String = "mcBarraEvolucion";
      
      private static const textString15:String = "mcBarraAgua";
      
      private static const textString16:String = "mcNivel";
      
      private static const textString17:String = "mcBotonRegar";
      
      private static const textString18:String = "mcBotonCerrar";
      
      private static const textString19:String = "mcBotonSiguiente";
      
      private static const textString20:String = "informacion";
      
      private static const textString21:String = "datos";
      
      private static const textString22:String = "muerta";
      
      private static const VALUE_MIN_COUNT:int = 0;
      
      private static const VALUE_MAX_COUNT:int = 100;
      
      private static const textString23:String = "w ";
      
      private static const textString24:String = "d ";
      
      private static const textString25:String = "h ";
      
      private static const textString26:String = "m ";
      
      private static const textString27:String = "s ";
      
      private static const count:int = 7;
      
      private static const count1:int = 24;
      
      private static const count2:int = 60;
      
      private static const count3:int = count * count1 * count2;
      
      private static const count4:int = 2;
      
      private static const textString2:String = "FichaDatosPlanta.swf";
      
      private var _visible:Boolean;
      
      private var _xm7830:MovieClip;
      
      private var _al1001:MovieClip;
      
      private var _rd45:MovieClip;
      
      private var _np9287:MovieClip;
      
      private var _oa9838:MovieClip;
      
      private var _dk3463:MovieClip;
      
      private var _ep5685:MovieClip;
      
      private var _cx9262:MovieClip;
      
      private var _bx9880:MovieClip;
      
      private var _kx568:MovieClip;
      
      private var _aa9162:MovieClip;
      
      private var _oe19:MovieClip;
      
      private var _tq3076:MovieClip;
      
      private var _ya4440:MovieClip;
      
      private var _oi6961:MovieClip;
      
      private var _if12127:PlantasUtils;
      
      private var textString29:String;
      
      private var textString30:String;
      
      private var textString31:String;
      
      private var textString32:String;
      
      private var textString33:String;
      
      private var _bs7662:CommoncomponentsController;
      
      private var _lx6327:CommoncomponentsController;
      
      private var _ku13279:CommoncomponentsController;
      
      private var _ag13598:CommoncomponentsController;
      
      private var _oh14208:CommoncomponentsController;
      
      private var _yy778:CommoncomponentsController;
      
      private var _jw2664:CommoncomponentsController;
      
      private var _fy3982:CommoncomponentsController;
      
      private var _ps14185:CommoncomponentsController;
      
      private var _pp3035:CommoncomponentsController;
      
      private var _un1659:CommoncomponentsController;
      
      private var _ni4825:CommoncomponentsController;
      
      private var _tf15261:CommoncomponentsController;
      
      private var _gd13640:CommoncomponentsController;
      
      private var _kw6702:CommoncomponentsController;
      
      private var _ux10309:CommoncomponentsController;
      
      private var count1:int;
      
      private var _ib13772:DatosDePlanta;
      
      private var _fl3768:PrivadosModel;
      
      private var textString34:String;
      
      private var _lp2754:CatobjectsController;
      
      private var _cq13333:PlantasModel;
      
      public function PlantasController(param1:PrivadosModel)
      {
         super();
         this._visible = false;
         this._fl3768 = param1;
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029([textString2],this.onClick);
         this._if12127 = new PlantasUtils();
         this._cq13333 = new PlantasModel();
      }
      
      private function onClick() : void
      {
         this._dk3463 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(textString2,"mcFichaDatosPlanta");
         this._ep5685 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(textString2,"mcFichaInformacionPlanta");
         this._cx9262 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(textString2,"mcFichaPlantaMuerta");
         this._bx9880 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(textString2,"mcFichaPlantaFinalizada");
         this._kx568 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(textString2,"mcRegadera");
         this._aa9162 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(textString2,"mcFichaDatosDragon");
         this._oe19 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(textString2,"mcFichaInformacionDragon");
         this._tq3076 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(textString2,"mcFichaDragonMuerto");
         this._ya4440 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(textString2,"mcFichaDragonFinalizado");
         this._oi6961 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(textString2,"mcComidaDragon");
         this._dk3463.addEventListener(MouseEvent.MOUSE_DOWN,this.start);
         this._dk3463.addEventListener(MouseEvent.MOUSE_UP,this.stop1);
         this._ep5685.addEventListener(MouseEvent.MOUSE_DOWN,this.start);
         this._ep5685.addEventListener(MouseEvent.MOUSE_UP,this.stop1);
         this._cx9262.addEventListener(MouseEvent.MOUSE_DOWN,this.start);
         this._cx9262.addEventListener(MouseEvent.MOUSE_UP,this.stop1);
         this._aa9162.addEventListener(MouseEvent.MOUSE_DOWN,this.start);
         this._aa9162.addEventListener(MouseEvent.MOUSE_UP,this.stop1);
         this._oe19.addEventListener(MouseEvent.MOUSE_DOWN,this.start);
         this._oe19.addEventListener(MouseEvent.MOUSE_UP,this.stop1);
         this._tq3076.addEventListener(MouseEvent.MOUSE_DOWN,this.start);
         this._tq3076.addEventListener(MouseEvent.MOUSE_UP,this.stop1);
         this._ly14978();
         this.authenticateUser2();
      }
      
      public function loop() : void
      {
         if(this._if12127 != null)
         {
            this._if12127.loop();
         }
         if(this._visible)
         {
            this._hn14872();
            this._dr6187();
            this._xc14259();
         }
      }
      
      public function destroy() : void
      {
         this.authenticateUser2();
         this.destroy();
         if(this._if12127 != null)
         {
            this._if12127.destroy();
         }
      }
      
      public function show(param1:int, param2:DatosDePlanta) : void
      {
         this.count1 = param1;
         this._ib13772 = param2;
         this._lj11358();
         if(!this._visible)
         {
            if(param2.primeraVezPuesta)
            {
               this._fr9557();
            }
            else
            {
               this._pe8848();
            }
         }
      }
      
      public function _sg7788() : void
      {
         if(this._if12127._qo10278(this.count1,this._oa9838))
         {
            this._fl3768.regarPlanta(this.count1);
         }
      }
      
      public function _hr4834() : void
      {
         this._sg7788();
         this.authenticateUser2();
      }
      
      private function _hn14872() : void
      {
         var count2:int = 0;
         if(this._ib13772 != null)
         {
            count2 = (this._ib13772.tiempoTotalAgua - this._ib13772.tiempoRestanteAgua) * 100 / this._ib13772.tiempoTotalAgua;
            if(count2 > 100)
            {
               count2 = 100;
            }
            if(count2 < 0)
            {
               count2 = 0;
            }
            MovieClip(this._xm7830[textString15][textString16]).gotoAndStop(count2);
            TextField(this._xm7830[textString13]).text = DateUtils.getString(this._ib13772.tiempoRestanteAgua,2);
         }
      }
      
      private function _dr6187() : void
      {
         var count2:int = 0;
         if(this._ib13772 != null)
         {
            count2 = (this._ib13772.tiempoTotalCrecer - this._ib13772.tiempoRestanteCrecer) * 100 / this._ib13772.tiempoTotalCrecer;
            if(count2 > 100)
            {
               count2 = 100;
            }
            if(count2 < 0)
            {
               count2 = 0;
            }
            MovieClip(this._xm7830[textString14][textString16]).gotoAndStop(count2);
            TextField(this._xm7830[textString12]).text = DateUtils.getString(this._ib13772.tiempoRestanteCrecer,2);
         }
      }
      
      private function stop() : void
      {
         MovieClip(this._xm7830[textString15][textString16]).gotoAndStop(VALUE_MAX_COUNT);
         MovieClip(this._xm7830[textString14][textString16]).gotoAndStop(VALUE_MIN_COUNT);
      }
      
      private function _xc14259() : void
      {
         if(this._ib13772 != null)
         {
            if(this._ib13772.tiempoRestanteAgua <= 0)
            {
               if(!this._rd45.visible)
               {
                  this._sq11047();
               }
            }
         }
      }
      
      private function _pe8848() : void
      {
         this.authenticateUser2();
         if(this._xm7830 != null && this._ib13772 != null)
         {
            this._visible = true;
            _xw1367.getInstance()._uc3178(this._xm7830,_xw1367.count5);
            this._xm7830.visible = true;
            this._xm7830[textString10].text = this._ib13772._hs9331;
            this._pm15317(this._xm7830);
            this._wu11854();
         }
      }
      
      private function _fr9557() : void
      {
         this.authenticateUser2();
         if(this._al1001 != null && this._ib13772 != null)
         {
            this._visible = true;
            _xw1367.getInstance()._uc3178(this._al1001,_xw1367.count5);
            this._al1001.visible = true;
            this._pm15317(this._al1001);
            this._al1001[textString10].text = this._ib13772._hs9331;
            this._al1001[textString11].text = this._cq13333._xv32(this._lp2754.count46) + this._ib13772._hs9331 + this._cq13333._kw14833(this._lp2754.count46);
         }
      }
      
      private function _sq11047() : void
      {
         this.authenticateUser2();
         if(this._rd45 != null)
         {
            this._visible = true;
            _xw1367.getInstance()._uc3178(this._rd45,_xw1367.count5);
            this._rd45.visible = true;
            this._pm15317(this._rd45);
            this._rd45[textString10].text = this._ib13772._hs9331;
            this._rd45[textString11].text = this._cq13333._pj15520(this._lp2754.count46);
         }
      }
      
      private function _pm15317(param1:MovieClip) : void
      {
         var count1:Point = SceneObjectManager.getInstance().render9(this.count1);
         if(count1.x - param1.width / 2 > 0)
         {
            param1.x = count1.x - param1.width / 2 - 80;
         }
         else
         {
            param1.x = count1.x + param1.width / 8;
         }
         param1.y = count1.y - param1.height + 40;
      }
      
      public function authenticateUser2() : void
      {
         if(this._xm7830 != null)
         {
            this._xm7830.visible = false;
            _xw1367.getInstance().move2(this._xm7830,_xw1367.count5);
         }
         if(this._al1001 != null)
         {
            this._al1001.visible = false;
            _xw1367.getInstance().move2(this._al1001,_xw1367.count5);
         }
         if(this._rd45 != null)
         {
            this._rd45.visible = false;
            _xw1367.getInstance().move2(this._rd45,_xw1367.count5);
         }
         if(this._np9287 != null)
         {
            this._np9287.visible = false;
            _xw1367.getInstance().move2(this._np9287,_xw1367.count5);
         }
         this._visible = false;
      }
      
      private function _ly14978() : void
      {
         this._bs7662 = new CommoncomponentsController(this._dk3463[textString18],this.authenticateUser2);
         this._ag13598 = new CommoncomponentsController(this._dk3463[textString17],this._sg7788);
         this._jw2664 = new CommoncomponentsController(this._dk3463[textString15],null,this._me409,this._wu11854);
         this._fy3982 = new CommoncomponentsController(this._dk3463[textString14],null,this._av13289,this._wu11854);
         this._yy778 = new CommoncomponentsController(this._ep5685[textString19],this._nb10244);
         this._lx6327 = new CommoncomponentsController(this._ep5685[textString18],this.authenticateUser2);
         this._ku13279 = new CommoncomponentsController(this._cx9262[textString18],this.authenticateUser2);
         this._oh14208 = new CommoncomponentsController(this._cx9262[textString17],this._hr4834);
         this._ps14185 = new CommoncomponentsController(this._aa9162[textString18],this.authenticateUser2);
         this._ni4825 = new CommoncomponentsController(this._aa9162[textString17],this._sg7788);
         this._kw6702 = new CommoncomponentsController(this._aa9162[textString15],null,this._me409,this._wu11854);
         this._ux10309 = new CommoncomponentsController(this._aa9162[textString14],null,this._av13289,this._wu11854);
         this._gd13640 = new CommoncomponentsController(this._oe19[textString19],this._nb10244);
         this._pp3035 = new CommoncomponentsController(this._oe19[textString18],this.authenticateUser2);
         this._un1659 = new CommoncomponentsController(this._tq3076[textString18],this.authenticateUser2);
         this._tf15261 = new CommoncomponentsController(this._tq3076[textString17],this._hr4834);
      }
      
      private function destroy() : void
      {
         this._bs7662.destroy();
         this._lx6327.destroy();
         this._ku13279.destroy();
         this._ag13598.destroy();
         this._oh14208.destroy();
         this._yy778.destroy();
         this._jw2664.destroy();
         this._fy3982.destroy();
         this._ps14185.destroy();
         this._pp3035.destroy();
         this._un1659.destroy();
         this._ni4825.destroy();
         this._tf15261.destroy();
         this._gd13640.destroy();
         this._kw6702.destroy();
         this._ux10309.destroy();
      }
      
      private function start(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         MovieClip(param1.currentTarget).startDrag();
      }
      
      private function stop1(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         MovieClip(param1.currentTarget).stopDrag();
      }
      
      private function _nb10244() : void
      {
         if(this._ib13772 != null)
         {
            this._pe8848();
         }
      }
      
      private function _me409() : void
      {
         this._xm7830[textString11].visible = true;
         this._xm7830[textString17].visible = false;
         TextField(this._xm7830[textString11]).text = this._cq13333._or10490(this._lp2754.count46);
      }
      
      private function _av13289() : void
      {
         this._xm7830[textString11].visible = true;
         this._xm7830[textString17].visible = false;
         TextField(this._xm7830[textString11]).text = this._cq13333._ng3024(this._lp2754.count46);
      }
      
      private function _wu11854() : void
      {
         this._xm7830[textString11].visible = false;
         this._xm7830[textString17].visible = true;
      }
      
      private function _lj11358() : void
      {
         if(this._ib13772 != null)
         {
            this._lp2754 = this._fl3768._wp8897(this.count1);
            if(this._lp2754.count46 == CatobjectsController.count25)
            {
               this._xm7830 = this._dk3463;
               this._al1001 = this._ep5685;
               this._rd45 = this._cx9262;
               this._np9287 = this._bx9880;
               this._oa9838 = this._kx568;
            }
            else if(this._lp2754.count46 == CatobjectsController.count37)
            {
               this._xm7830 = this._aa9162;
               this._al1001 = this._oe19;
               this._rd45 = this._tq3076;
               this._np9287 = this._ya4440;
               this._oa9838 = this._oi6961;
            }
            if(this._lp2754 != null)
            {
               this._ib13772._hs9331 = this._lp2754.name;
               this._ib13772.textString1 = this._lp2754.description;
            }
         }
      }
   }
}

