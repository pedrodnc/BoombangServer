package src.modules.privados
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   import src.allData.*;
   import src.allData.catObjects.*;
   import src.allData.country.*;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.config.*;
   import src.modules.SoundEffects.*;
   import src.modules.interfaz.baseChat.*;
   import src.modules.interfaz.fichaKeko.FichakekoModel;
   import src.person.*;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.utils.*;
   
   public class PrivadosModel
   {
      
      private var _vp454:PrivadosController;
      
      private var _ix11826:PersonBase;
      
      private var _dc14886:FichakekoModel;
      
      private var _tb12411:PrivadosModel;
      
      private var _wg7925:BasechatModel;
      
      private var _bl11315:SceneTypeIsland;
      
      public function PrivadosModel(param1:PrivadosController, param2:PersonBase, param3:FichakekoModel, param4:PrivadosModel, param5:BasechatModel, param6:SceneTypeIsland)
      {
         super();
         this._vp454 = param1;
         this._ix11826 = param2;
         this._dc14886 = param3;
         this._tb12411 = param4;
         this._wg7925 = param5;
         this._bl11315 = param6;
      }
      
      public function isSpanishServer() : Boolean
      {
         return Configuration._qs3725 == Configuration._gk8815;
      }
      
      public function isEnglishServer() : Boolean
      {
         return Configuration._qs3725 == Configuration._gl650;
      }
      
      public function isMexicanServer() : Boolean
      {
         return Configuration._qs3725 == Configuration._mi124;
      }
      
      public function isChileServer() : Boolean
      {
         return Configuration._qs3725 == Configuration._uo6813;
      }
      
      public function isSpanishIp() : Boolean
      {
         return UserSession.getInstance()._my547.toUpperCase() == CountryModel._pu2140;
      }
      
      public function sendMsgAccionGenerica(param1:int, param2:int, param3:int) : void
      {
         this._vp454.sendMsgAccionGenerica(param1,param2,param3);
      }
      
      public function sendMsgVoodoo(param1:int, param2:int) : void
      {
         this._vp454._kf6561(param1,param2);
      }
      
      public function playObjectSound(param1:Sound) : void
      {
         Utils._iq4270(param1);
      }
      
      public function getPersonajeEnPosicion(param1:int, param2:int, param3:Boolean) : int
      {
         var _loc4_:PersonController = null;
         for each(_loc4_ in this._ix11826._pf8204)
         {
            if(_loc4_ != null && (param3 == false || _loc4_._cp3023 == false) && _loc4_._aa6815(param1,param2))
            {
               return _loc4_._md8722._jr9311;
            }
         }
         return -1;
      }
      
      public function getPersonajeEnPosicionGrilla(param1:int, param2:int, param3:Boolean) : int
      {
         var _loc4_:PersonController = null;
         var _loc5_:Point = new Point(param1,param2);
         for each(_loc4_ in this._ix11826._pf8204)
         {
            if(_loc4_ != null && (param3 == false || _loc4_._cp3023 == false) && _loc4_._md8722._gn15250.equals(_loc5_))
            {
               return _loc4_._md8722._jr9311;
            }
         }
         return -1;
      }
      
      public function getPosicionPersonaje(param1:int) : Point
      {
         if(param1 >= 0 && param1 < this._ix11826._pf8204.length && this._ix11826._pf8204[param1] != null)
         {
            return PersonController(this._ix11826._pf8204[param1])._ey9519();
         }
         return null;
      }
      
      public function getOrientacionPersonaje(param1:int) : int
      {
         if(param1 >= 0 && param1 < this._ix11826._pf8204.length && this._ix11826._pf8204[param1] != null)
         {
            return PersonController(this._ix11826._pf8204[param1])._mt10880();
         }
         return -1;
      }
      
      public function getSceneScale() : Number
      {
         return SceneType.scale;
      }
      
      public function distanciaPersonajePrincipal(param1:int, param2:int) : Number
      {
         var _loc3_:PersonController = null;
         var _loc4_:Number = NaN;
         for each(_loc3_ in this._ix11826._pf8204)
         {
            if(_loc3_ != null && _loc3_._cp3023)
            {
               return _loc3_._na13725(param1,param2);
            }
         }
         return Number.MAX_VALUE;
      }
      
      public function posicionObjetoEnGrilla(param1:int) : Point
      {
         var _loc2_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc2_ != null)
         {
            return SceneType._bi7400(new Point(_loc2_.x,_loc2_.y));
         }
         return new Point(-1,-1);
      }
      
      public function posicionPersonajePrincipalEnGrilla() : Point
      {
         var _loc1_:PersonController = null;
         for each(_loc1_ in this._ix11826._pf8204)
         {
            if(_loc1_ != null && _loc1_._cp3023)
            {
               return _loc1_._md8722._gn15250.clone();
            }
         }
         return new Point(-1,-1);
      }
      
      public function perfumarPersonajePrincipal(param1:int) : void
      {
         var _loc2_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc2_ != null && _loc2_._sl11700._dv13852 == CatobjectsController._tp8413)
         {
            this._vp454.sendMsgPerfumar(param1);
         }
      }
      
      public function getIdPosPersonajePrincipal() : int
      {
         return UserSession.getInstance()._jr9311;
      }
      
      public function getPersonajeParado(param1:int) : MovieClip
      {
         var _loc2_:PersonModel = null;
         if(param1 >= 0 && param1 < this._ix11826._pf8204.length && this._ix11826._pf8204[param1] != null)
         {
            _loc2_ = PersonModel.getInstance();
            return PersonController._ku11706(PersonController(this._ix11826._pf8204[param1])._md8722,"parado");
         }
         return null;
      }
      
      public function getPersonajeCara(param1:int) : MovieClip
      {
         var _loc2_:PersonModel = null;
         if(param1 >= 0 && param1 < this._ix11826._pf8204.length && this._ix11826._pf8204[param1] != null)
         {
            _loc2_ = PersonModel.getInstance();
            return PersonController._ku11706(PersonController(this._ix11826._pf8204[param1])._md8722,"cara_grande");
         }
         return null;
      }
      
      public function getPersonajeEspejo(param1:int) : MovieClip
      {
         var _loc2_:PersonModel = null;
         if(param1 >= 0 && param1 < this._ix11826._pf8204.length && this._ix11826._pf8204[param1] != null)
         {
            _loc2_ = PersonModel.getInstance();
            return PersonController._ku11706(PersonController(this._ix11826._pf8204[param1])._md8722,"espejo");
         }
         return null;
      }
      
      public function getNombrePersonaje(param1:int) : String
      {
         if(param1 >= 0 && param1 < this._ix11826._pf8204.length && this._ix11826._pf8204[param1] != null)
         {
            return PersonController(this._ix11826._pf8204[param1])._md8722.name;
         }
         return null;
      }
      
      public function getIdUsuarioPersonaje(param1:int) : int
      {
         if(param1 >= 0 && param1 < this._ix11826._pf8204.length && this._ix11826._pf8204[param1] != null)
         {
            return PersonController(this._ix11826._pf8204[param1])._md8722.id;
         }
         return -1;
      }
      
      public function getIdPosPersonaje(param1:String) : int
      {
         var _loc2_:PersonController = null;
         for each(_loc2_ in this._ix11826._pf8204)
         {
            if(_loc2_ != null && _loc2_._md8722.name == param1)
            {
               return _loc2_._md8722._jr9311;
            }
         }
         return -1;
      }
      
      public function getIdPosPersonajeByIdUsuario(param1:int) : int
      {
         var _loc2_:PersonController = null;
         for each(_loc2_ in this._ix11826._pf8204)
         {
            if(_loc2_ != null && _loc2_._md8722.id == param1)
            {
               return _loc2_._md8722._jr9311;
            }
         }
         return -1;
      }
      
      public function getIdPosPersonajeSeleccionado() : int
      {
         if(this._dc14886._ia2579() != null)
         {
            return this._dc14886._ia2579()._jr9311;
         }
         return -1;
      }
      
      public function getIdUsuarioPersonajeSeleccionado() : int
      {
         if(this._dc14886._ia2579() != null)
         {
            return this._dc14886._ia2579().id;
         }
         return -1;
      }
      
      public function getObjectPos(param1:int) : Point
      {
         var _loc2_:Point = new Point(-1,-1);
         var _loc3_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc3_ != null)
         {
            _loc2_.x = _loc3_.x;
            _loc2_.y = _loc3_.y;
         }
         return _loc2_;
      }
      
      public function seleccionarMascota(param1:int) : void
      {
         var _loc2_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc2_ != null && _loc2_._uw12896())
         {
            this._tb12411.seleccionarMascota(param1);
         }
      }
      
      public function deseleccionarMascota(param1:int) : void
      {
         var _loc2_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc2_ != null && _loc2_._uw12896())
         {
            this._tb12411.seleccionarMascota(-1);
         }
      }
      
      public function cambiarLocZ(param1:int, param2:int) : void
      {
         var _loc3_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc3_ != null)
         {
            _loc3_.graphics.locz = param2;
         }
      }
      
      public function resetLocZ(param1:int) : void
      {
         var _loc2_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc2_ != null)
         {
            _loc2_.graphics.locz = _loc2_._sl11700._ja12821;
         }
      }
      
      public function sendMsgFireObj(param1:int, param2:int) : void
      {
         this._vp454.sendMsgFireObj(param1,param2);
      }
      
      public function sendMsgTopoObj(param1:int, param2:int) : void
      {
         this._vp454.sendMsgTopoObj(param1,param2);
      }
      
      public function sendMsgFroggyObj(param1:int, param2:int) : void
      {
         this._vp454.sendMsgFroggyObj(param1,param2);
      }
      
      public function sendMsgLoroObj(param1:int, param2:String) : void
      {
         this._vp454.sendMsgLoroObj(param1,param2);
      }
      
      public function sendMsgLoroUpdateObj(param1:int, param2:int, param3:String) : void
      {
         this._vp454.sendMsgLoroUpdateObj(param1,param2,param3);
      }
      
      public function sendMsgMascotaAction(param1:int, param2:int) : void
      {
         this._vp454.sendMsgMascotaAction(param1,param2);
      }
      
      public function loroHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         param3 = UtilsUtils._bg5268(param3);
         this._wg7925._kg10630(param3,null,param1,param2,Basechat._gw9556,param4);
      }
      
      public function cheetoHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         param3 = UtilsUtils._bg5268(param3);
         this._wg7925._kg10630(param3,null,param1,param2,Basechat._vq2508,param4);
      }
      
      public function alienHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         param3 = UtilsUtils._bg5268(param3);
         this._wg7925._kg10630(param3,null,param1,param2,Basechat._wl4689,param4);
      }
      
      public function pirataHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat._im13214,param4);
      }
      
      public function loroHablarConCorazon(param1:int, param2:int, param3:String, param4:String) : void
      {
         param3 = UtilsUtils._bg5268(param3);
         param4 = UtilsUtils._bg5268(param4);
         this._wg7925._kg10630(param4,null,param1,param2,Basechat._cl9787,param3);
      }
      
      public function estatuaHablar(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat._oq7016);
      }
      
      public function inciensoFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat._xx3666);
      }
      
      public function radioFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat._tg4679);
      }
      
      public function violetaFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat._bm296);
      }
      
      public function verdeFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat._pd10410);
      }
      
      public function cartelFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat._vq1916);
      }
      
      public function zodiacTalk(param1:int, param2:int, param3:String) : void
      {
         var _loc4_:int = 0;
         if(param3 == "gemini")
         {
            _loc4_ = 17;
         }
         else
         {
            _loc4_ = 10;
         }
         var _loc5_:Number = Number(new Date().getTime());
         var _loc6_:String = "object.zodiac." + param3 + "." + Math.floor(_loc5_ / (24 * 3600 * 1000)) % _loc4_;
         var _loc7_:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455(_loc6_);
         this._wg7925._kg10630(_loc7_,null,param1,param2,Basechat._bm296);
      }
      
      public function getTexto(param1:String) : String
      {
         var _loc2_:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455(param1);
         return (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455(_loc2_);
      }
      
      public function marronFrase(param1:int, param2:int, param3:String, param4:String) : void
      {
         var _loc5_:String = param3 + UserSession.getInstance().name + param4;
         this._wg7925._kg10630(_loc5_,null,param1,param2,Basechat._fi1144);
      }
      
      public function marronFraseNoName(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat._fi1144);
      }
      
      public function getDataMyPersonName() : String
      {
         return UserSession.getInstance().name;
      }
      
      public function filtrarTexto(param1:String) : String
      {
         return UtilsUtils._bg5268(param1);
      }
      
      public function getPlotXY(param1:Point) : Point
      {
         return SceneType.getPlotXY(param1);
      }
      
      public function changeFlip(param1:int, param2:int) : void
      {
         var _loc3_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         _loc3_._sr13322(param2,_loc3_._vf11740);
      }
      
      public function changePosition(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         var _loc5_:Point = SceneType._bi7400(new Point(param2,param3));
         var _loc6_:Array = [_loc5_.x,_loc5_.y];
         SceneObjectManager.getInstance()._vw7618(param1,param2,param3,0,new DatatypesModel(_loc5_.x,_loc5_.y),_loc6_);
      }
      
      public function sendMsgMontableMontarUsuario(param1:int, param2:int, param3:int) : void
      {
         this._vp454.sendMsgMontableMontarUsuario(param1,param2,param3);
      }
      
      public function sendMsgMontableDesmontarUsuario(param1:int, param2:int) : void
      {
         this._vp454.sendMsgMontableDesmontarUsuario(param1,param2);
      }
      
      public function sendMsgMontableMover(param1:int, param2:int, param3:int) : void
      {
         this._vp454.sendMsgMontableMover(param1,param2,param3);
      }
      
      public function sendMsgNoriaVelocidad(param1:int, param2:int) : void
      {
         this._vp454.sendMsgNoriaVelocidad(param1,param2);
      }
      
      public function sendMsgNoriaRotacion(param1:int, param2:int) : void
      {
         this._vp454.sendMsgNoriaRotacion(param1,param2);
      }
      
      public function enterObject(param1:int) : void
      {
         var _loc2_:SceneObjectRenderer = SceneObjectRenderer(this._bl11315._yk9656(param1));
         if(_loc2_ != null && _loc2_._id8009())
         {
            this._tb12411.enterObject(_loc2_);
         }
      }
      
      public function openObject(param1:int, param2:Boolean) : void
      {
         if(param2)
         {
            this._vp454._qr9037(param1,"");
         }
         else
         {
            this._vp454._qr9037(param1,"1234");
         }
      }
      
      public function sendMsgActivarCajita(param1:int) : void
      {
         this._vp454.sendMsgActivarCajita(param1);
      }
      
      public function sendMsgPerfumar(param1:int) : void
      {
         this._vp454.sendMsgPerfumar(param1);
      }
      
      public function sendMsgActivarSacoMonedas(param1:int) : void
      {
         this._vp454.sendMsgActivarSacoMonedas(param1);
      }
      
      public function openPopup(param1:String, param2:String = null, param3:Dictionary = null) : void
      {
         UtilsUtils.openPopup(param1,param2,param3);
      }
      
      public function simpleSendToURLObjects(param1:String, param2:String = null, param3:Dictionary = null) : void
      {
         UtilsUtils._mr14436(param1,param2,param3);
      }
      
      public function callJavaScript(param1:String) : void
      {
         UtilsUtils.callJavaScript(param1);
      }
      
      public function showPanelDatosPlanta(param1:int, param2:DatosDePlanta) : void
      {
         this._tb12411.showPanelDatosPlanta(param1,param2);
      }
      
      public function hidePanelDatosPlanta() : void
      {
         this._tb12411.hidePanelDatosPlanta();
      }
      
      public function getCuadroTextosPlantas(param1:int) : MovieClip
      {
         return this._tb12411.getCuadroTextosPlantas(param1);
      }
      
      public function activarPlanta(param1:int) : void
      {
         this._tb12411.activarPlanta(param1);
      }
      
      public function addSound(param1:Sound, param2:String, param3:int = 0, param4:Number = 1, param5:Number = 0, param6:Boolean = false, param7:int = 0) : void
      {
         SoundeffectsManager.addSound(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function removeSound(param1:String) : void
      {
         SoundeffectsManager.removeSound(param1);
      }
      
      public function playSound(param1:String) : void
      {
         SoundeffectsManager._ea6943(param1);
      }
      
      public function stopSound(param1:String) : void
      {
         SoundeffectsManager._hw3942(param1);
      }
   }
}

