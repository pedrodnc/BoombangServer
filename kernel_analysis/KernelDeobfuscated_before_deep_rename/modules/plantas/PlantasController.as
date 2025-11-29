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
      
      private static const _ci16101:String = "mcFichaDatosPlanta";
      
      private static const _my5683:String = "mcFichaInformacionPlanta";
      
      private static const _ud35:String = "mcFichaPlantaMuerta";
      
      private static const _ov2824:String = "mcFichaPlantaFinalizada";
      
      private static const _xf10880:String = "mcRegadera";
      
      private static const _jy14568:String = "mcFichaDatosDragon";
      
      private static const _dh10499:String = "mcFichaInformacionDragon";
      
      private static const _ps15629:String = "mcFichaDragonMuerto";
      
      private static const _eb7529:String = "mcFichaDragonFinalizado";
      
      private static const _ow12318:String = "mcComidaDragon";
      
      private static const _pl1869:String = "tf_Titulo";
      
      private static const _pd1513:String = "tf_Descripcion";
      
      private static const _ba6168:String = "tf_Evolucion";
      
      private static const _vc10730:String = "tf_Agua";
      
      private static const _ck255:String = "mcBarraEvolucion";
      
      private static const _pe10369:String = "mcBarraAgua";
      
      private static const _sg461:String = "mcNivel";
      
      private static const _sx12027:String = "mcBotonRegar";
      
      private static const _gu4817:String = "mcBotonCerrar";
      
      private static const _bb3573:String = "mcBotonSiguiente";
      
      private static const _fu3176:String = "informacion";
      
      private static const _bg12448:String = "datos";
      
      private static const _rf15253:String = "muerta";
      
      private static const VALUE_MIN_COUNT:int = 0;
      
      private static const VALUE_MAX_COUNT:int = 100;
      
      private static const _sk10010:String = "w ";
      
      private static const _bb9337:String = "d ";
      
      private static const _tq2906:String = "h ";
      
      private static const _vd14329:String = "m ";
      
      private static const _nf10932:String = "s ";
      
      private static const _uk9949:int = 7;
      
      private static const _fg14290:int = 24;
      
      private static const _jd8811:int = 60;
      
      private static const _ey5062:int = _uk9949 * _fg14290 * _jd8811;
      
      private static const _iv10156:int = 2;
      
      private static const _if5805:String = "FichaDatosPlanta.swf";
      
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
      
      private var _jr6723:String;
      
      private var _jp7435:String;
      
      private var _xa50:String;
      
      private var _hh11407:String;
      
      private var _iy10037:String;
      
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
      
      private var _wb54:int;
      
      private var _ib13772:DatosDePlanta;
      
      private var _fl3768:PrivadosModel;
      
      private var _el5747:String;
      
      private var _lp2754:CatobjectsController;
      
      private var _cq13333:PlantasModel;
      
      public function PlantasController(param1:PrivadosModel)
      {
         super();
         this._visible = false;
         this._fl3768 = param1;
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029([_if5805],this._pa12409);
         this._if12127 = new PlantasUtils();
         this._cq13333 = new PlantasModel();
      }
      
      private function _pa12409() : void
      {
         this._dk3463 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_if5805,"mcFichaDatosPlanta");
         this._ep5685 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_if5805,"mcFichaInformacionPlanta");
         this._cx9262 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_if5805,"mcFichaPlantaMuerta");
         this._bx9880 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_if5805,"mcFichaPlantaFinalizada");
         this._kx568 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_if5805,"mcRegadera");
         this._aa9162 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_if5805,"mcFichaDatosDragon");
         this._oe19 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_if5805,"mcFichaInformacionDragon");
         this._tq3076 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_if5805,"mcFichaDragonMuerto");
         this._ya4440 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_if5805,"mcFichaDragonFinalizado");
         this._oi6961 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_if5805,"mcComidaDragon");
         this._dk3463.addEventListener(MouseEvent.MOUSE_DOWN,this._ok14162);
         this._dk3463.addEventListener(MouseEvent.MOUSE_UP,this._gf12898);
         this._ep5685.addEventListener(MouseEvent.MOUSE_DOWN,this._ok14162);
         this._ep5685.addEventListener(MouseEvent.MOUSE_UP,this._gf12898);
         this._cx9262.addEventListener(MouseEvent.MOUSE_DOWN,this._ok14162);
         this._cx9262.addEventListener(MouseEvent.MOUSE_UP,this._gf12898);
         this._aa9162.addEventListener(MouseEvent.MOUSE_DOWN,this._ok14162);
         this._aa9162.addEventListener(MouseEvent.MOUSE_UP,this._gf12898);
         this._oe19.addEventListener(MouseEvent.MOUSE_DOWN,this._ok14162);
         this._oe19.addEventListener(MouseEvent.MOUSE_UP,this._gf12898);
         this._tq3076.addEventListener(MouseEvent.MOUSE_DOWN,this._ok14162);
         this._tq3076.addEventListener(MouseEvent.MOUSE_UP,this._gf12898);
         this._ly14978();
         this._hu12389();
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
         this._hu12389();
         this._sk881();
         if(this._if12127 != null)
         {
            this._if12127.destroy();
         }
      }
      
      public function _db5584(param1:int, param2:DatosDePlanta) : void
      {
         this._wb54 = param1;
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
         if(this._if12127._qo10278(this._wb54,this._oa9838))
         {
            this._fl3768.regarPlanta(this._wb54);
         }
      }
      
      public function _hr4834() : void
      {
         this._sg7788();
         this._hu12389();
      }
      
      private function _hn14872() : void
      {
         var _loc1_:int = 0;
         if(this._ib13772 != null)
         {
            _loc1_ = (this._ib13772.tiempoTotalAgua - this._ib13772.tiempoRestanteAgua) * 100 / this._ib13772.tiempoTotalAgua;
            if(_loc1_ > 100)
            {
               _loc1_ = 100;
            }
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            MovieClip(this._xm7830[_pe10369][_sg461]).gotoAndStop(_loc1_);
            TextField(this._xm7830[_vc10730]).text = DateUtils._po2157(this._ib13772.tiempoRestanteAgua,2);
         }
      }
      
      private function _dr6187() : void
      {
         var _loc1_:int = 0;
         if(this._ib13772 != null)
         {
            _loc1_ = (this._ib13772.tiempoTotalCrecer - this._ib13772.tiempoRestanteCrecer) * 100 / this._ib13772.tiempoTotalCrecer;
            if(_loc1_ > 100)
            {
               _loc1_ = 100;
            }
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            MovieClip(this._xm7830[_ck255][_sg461]).gotoAndStop(_loc1_);
            TextField(this._xm7830[_ba6168]).text = DateUtils._po2157(this._ib13772.tiempoRestanteCrecer,2);
         }
      }
      
      private function _bw11193() : void
      {
         MovieClip(this._xm7830[_pe10369][_sg461]).gotoAndStop(VALUE_MAX_COUNT);
         MovieClip(this._xm7830[_ck255][_sg461]).gotoAndStop(VALUE_MIN_COUNT);
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
         this._hu12389();
         if(this._xm7830 != null && this._ib13772 != null)
         {
            this._visible = true;
            _xw1367.getInstance()._uc3178(this._xm7830,_xw1367._wa4051);
            this._xm7830.visible = true;
            this._xm7830[_pl1869].text = this._ib13772._hs9331;
            this._pm15317(this._xm7830);
            this._wu11854();
         }
      }
      
      private function _fr9557() : void
      {
         this._hu12389();
         if(this._al1001 != null && this._ib13772 != null)
         {
            this._visible = true;
            _xw1367.getInstance()._uc3178(this._al1001,_xw1367._wa4051);
            this._al1001.visible = true;
            this._pm15317(this._al1001);
            this._al1001[_pl1869].text = this._ib13772._hs9331;
            this._al1001[_pd1513].text = this._cq13333._xv32(this._lp2754._dv13852) + this._ib13772._hs9331 + this._cq13333._kw14833(this._lp2754._dv13852);
         }
      }
      
      private function _sq11047() : void
      {
         this._hu12389();
         if(this._rd45 != null)
         {
            this._visible = true;
            _xw1367.getInstance()._uc3178(this._rd45,_xw1367._wa4051);
            this._rd45.visible = true;
            this._pm15317(this._rd45);
            this._rd45[_pl1869].text = this._ib13772._hs9331;
            this._rd45[_pd1513].text = this._cq13333._pj15520(this._lp2754._dv13852);
         }
      }
      
      private function _pm15317(param1:MovieClip) : void
      {
         var _loc4_:Point = SceneObjectManager.getInstance()._lc12635(this._wb54);
         if(_loc4_.x - param1.width / 2 > 0)
         {
            param1.x = _loc4_.x - param1.width / 2 - 80;
         }
         else
         {
            param1.x = _loc4_.x + param1.width / 8;
         }
         param1.y = _loc4_.y - param1.height + 40;
      }
      
      public function _hu12389() : void
      {
         if(this._xm7830 != null)
         {
            this._xm7830.visible = false;
            _xw1367.getInstance()._na10792(this._xm7830,_xw1367._wa4051);
         }
         if(this._al1001 != null)
         {
            this._al1001.visible = false;
            _xw1367.getInstance()._na10792(this._al1001,_xw1367._wa4051);
         }
         if(this._rd45 != null)
         {
            this._rd45.visible = false;
            _xw1367.getInstance()._na10792(this._rd45,_xw1367._wa4051);
         }
         if(this._np9287 != null)
         {
            this._np9287.visible = false;
            _xw1367.getInstance()._na10792(this._np9287,_xw1367._wa4051);
         }
         this._visible = false;
      }
      
      private function _ly14978() : void
      {
         this._bs7662 = new CommoncomponentsController(this._dk3463[_gu4817],this._hu12389);
         this._ag13598 = new CommoncomponentsController(this._dk3463[_sx12027],this._sg7788);
         this._jw2664 = new CommoncomponentsController(this._dk3463[_pe10369],null,this._me409,this._wu11854);
         this._fy3982 = new CommoncomponentsController(this._dk3463[_ck255],null,this._av13289,this._wu11854);
         this._yy778 = new CommoncomponentsController(this._ep5685[_bb3573],this._nb10244);
         this._lx6327 = new CommoncomponentsController(this._ep5685[_gu4817],this._hu12389);
         this._ku13279 = new CommoncomponentsController(this._cx9262[_gu4817],this._hu12389);
         this._oh14208 = new CommoncomponentsController(this._cx9262[_sx12027],this._hr4834);
         this._ps14185 = new CommoncomponentsController(this._aa9162[_gu4817],this._hu12389);
         this._ni4825 = new CommoncomponentsController(this._aa9162[_sx12027],this._sg7788);
         this._kw6702 = new CommoncomponentsController(this._aa9162[_pe10369],null,this._me409,this._wu11854);
         this._ux10309 = new CommoncomponentsController(this._aa9162[_ck255],null,this._av13289,this._wu11854);
         this._gd13640 = new CommoncomponentsController(this._oe19[_bb3573],this._nb10244);
         this._pp3035 = new CommoncomponentsController(this._oe19[_gu4817],this._hu12389);
         this._un1659 = new CommoncomponentsController(this._tq3076[_gu4817],this._hu12389);
         this._tf15261 = new CommoncomponentsController(this._tq3076[_sx12027],this._hr4834);
      }
      
      private function _sk881() : void
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
      
      private function _ok14162(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         MovieClip(param1.currentTarget).startDrag();
      }
      
      private function _gf12898(param1:MouseEvent) : void
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
         this._xm7830[_pd1513].visible = true;
         this._xm7830[_sx12027].visible = false;
         TextField(this._xm7830[_pd1513]).text = this._cq13333._or10490(this._lp2754._dv13852);
      }
      
      private function _av13289() : void
      {
         this._xm7830[_pd1513].visible = true;
         this._xm7830[_sx12027].visible = false;
         TextField(this._xm7830[_pd1513]).text = this._cq13333._ng3024(this._lp2754._dv13852);
      }
      
      private function _wu11854() : void
      {
         this._xm7830[_pd1513].visible = false;
         this._xm7830[_sx12027].visible = true;
      }
      
      private function _lj11358() : void
      {
         if(this._ib13772 != null)
         {
            this._lp2754 = this._fl3768._wp8897(this._wb54);
            if(this._lp2754._dv13852 == CatobjectsController._jh10992)
            {
               this._xm7830 = this._dk3463;
               this._al1001 = this._ep5685;
               this._rd45 = this._cx9262;
               this._np9287 = this._bx9880;
               this._oa9838 = this._kx568;
            }
            else if(this._lp2754._dv13852 == CatobjectsController._of16060)
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
               this._ib13772._uf1803 = this._lp2754.description;
            }
         }
      }
   }
}

