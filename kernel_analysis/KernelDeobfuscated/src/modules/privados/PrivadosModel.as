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
         return Configuration.urlString9 == Configuration.urlString4;
      }
      
      public function isEnglishServer() : Boolean
      {
         return Configuration.urlString9 == Configuration.urlString7;
      }
      
      public function isMexicanServer() : Boolean
      {
         return Configuration.urlString9 == Configuration.urlString6;
      }
      
      public function isChileServer() : Boolean
      {
         return Configuration.urlString9 == Configuration.urlString5;
      }
      
      public function isSpanishIp() : Boolean
      {
         return UserSession.getInstance().urlString9.toUpperCase() == CountryModel.textString3;
      }
      
      public function sendMsgAccionGenerica(param1:int, param2:int, param3:int) : void
      {
         this._vp454.sendMsgAccionGenerica(param1,param2,param3);
      }
      
      public function sendMsgVoodoo(param1:int, param2:int) : void
      {
         this._vp454.handleSocket10(param1,param2);
      }
      
      public function playObjectSound(param1:Sound) : void
      {
         Utils._iq4270(param1);
      }
      
      public function getPersonajeEnPosicion(param1:int, param2:int, param3:Boolean) : int
      {
         var count1:PersonController = null;
         for each(count1 in this._ix11826.items)
         {
            if(count1 != null && (param3 == false || count1._cp3023 == false) && count1.attack(param1,param2))
            {
               return count1._md8722.count25;
            }
         }
         return -1;
      }
      
      public function getPersonajeEnPosicionGrilla(param1:int, param2:int, param3:Boolean) : int
      {
         var count1:PersonController = null;
         var count2:Point = new Point(param1,param2);
         for each(count1 in this._ix11826.items)
         {
            if(count1 != null && (param3 == false || count1._cp3023 == false) && count1._md8722._gn15250.equals(count2))
            {
               return count1._md8722.count25;
            }
         }
         return -1;
      }
      
      public function getPosicionPersonaje(param1:int) : Point
      {
         if(param1 >= 0 && param1 < this._ix11826.items.length && this._ix11826.items[param1] != null)
         {
            return PersonController(this._ix11826.items[param1])._ey9519();
         }
         return null;
      }
      
      public function getOrientacionPersonaje(param1:int) : int
      {
         if(param1 >= 0 && param1 < this._ix11826.items.length && this._ix11826.items[param1] != null)
         {
            return PersonController(this._ix11826.items[param1])._mt10880();
         }
         return -1;
      }
      
      public function getSceneScale() : Number
      {
         return SceneType.scale;
      }
      
      public function distanciaPersonajePrincipal(param1:int, param2:int) : Number
      {
         var count3:PersonController = null;
         var count1:Number = NaN;
         for each(count3 in this._ix11826.items)
         {
            if(count3 != null && count3._cp3023)
            {
               return count3._na13725(param1,param2);
            }
         }
         return Number.MAX_VALUE;
      }
      
      public function posicionObjetoEnGrilla(param1:int) : Point
      {
         var count:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count != null)
         {
            return SceneType._bi7400(new Point(count.x,count.y));
         }
         return new Point(-1,-1);
      }
      
      public function posicionPersonajePrincipalEnGrilla() : Point
      {
         var count2:PersonController = null;
         for each(count2 in this._ix11826.items)
         {
            if(count2 != null && count2._cp3023)
            {
               return count2._md8722._gn15250.clone();
            }
         }
         return new Point(-1,-1);
      }
      
      public function perfumarPersonajePrincipal(param1:int) : void
      {
         var count:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count != null && count._sl11700.count46 == CatobjectsController.count16)
         {
            this._vp454.sendMsgPerfumar(param1);
         }
      }
      
      public function getIdPosPersonajePrincipal() : int
      {
         return UserSession.getInstance().count25;
      }
      
      public function getPersonajeParado(param1:int) : MovieClip
      {
         var count:PersonModel = null;
         if(param1 >= 0 && param1 < this._ix11826.items.length && this._ix11826.items[param1] != null)
         {
            count = PersonModel.getInstance();
            return PersonController._ku11706(PersonController(this._ix11826.items[param1])._md8722,"parado");
         }
         return null;
      }
      
      public function getPersonajeCara(param1:int) : MovieClip
      {
         var count:PersonModel = null;
         if(param1 >= 0 && param1 < this._ix11826.items.length && this._ix11826.items[param1] != null)
         {
            count = PersonModel.getInstance();
            return PersonController._ku11706(PersonController(this._ix11826.items[param1])._md8722,"cara_grande");
         }
         return null;
      }
      
      public function getPersonajeEspejo(param1:int) : MovieClip
      {
         var count:PersonModel = null;
         if(param1 >= 0 && param1 < this._ix11826.items.length && this._ix11826.items[param1] != null)
         {
            count = PersonModel.getInstance();
            return PersonController._ku11706(PersonController(this._ix11826.items[param1])._md8722,"espejo");
         }
         return null;
      }
      
      public function getNombrePersonaje(param1:int) : String
      {
         if(param1 >= 0 && param1 < this._ix11826.items.length && this._ix11826.items[param1] != null)
         {
            return PersonController(this._ix11826.items[param1])._md8722.name;
         }
         return null;
      }
      
      public function getIdUsuarioPersonaje(param1:int) : int
      {
         if(param1 >= 0 && param1 < this._ix11826.items.length && this._ix11826.items[param1] != null)
         {
            return PersonController(this._ix11826.items[param1])._md8722.id;
         }
         return -1;
      }
      
      public function getIdPosPersonaje(param1:String) : int
      {
         var count:PersonController = null;
         for each(count in this._ix11826.items)
         {
            if(count != null && count._md8722.name == param1)
            {
               return count._md8722.count25;
            }
         }
         return -1;
      }
      
      public function getIdPosPersonajeByIdUsuario(param1:int) : int
      {
         var count:PersonController = null;
         for each(count in this._ix11826.items)
         {
            if(count != null && count._md8722.id == param1)
            {
               return count._md8722.count25;
            }
         }
         return -1;
      }
      
      public function getIdPosPersonajeSeleccionado() : int
      {
         if(this._dc14886._ia2579() != null)
         {
            return this._dc14886._ia2579().count25;
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
         var count:Point = new Point(-1,-1);
         var count3:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count3 != null)
         {
            count.x = count3.x;
            count.y = count3.y;
         }
         return count;
      }
      
      public function seleccionarMascota(param1:int) : void
      {
         var count:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count != null && count.show6())
         {
            this._tb12411.seleccionarMascota(param1);
         }
      }
      
      public function deseleccionarMascota(param1:int) : void
      {
         var count:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count != null && count.show6())
         {
            this._tb12411.seleccionarMascota(-1);
         }
      }
      
      public function cambiarLocZ(param1:int, param2:int) : void
      {
         var count3:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count3 != null)
         {
            count3.graphics.locz = param2;
         }
      }
      
      public function resetLocZ(param1:int) : void
      {
         var count:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count != null)
         {
            count.graphics.locz = count._sl11700.items6;
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
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count16,param4);
      }
      
      public function cheetoHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         param3 = UtilsUtils._bg5268(param3);
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count21,param4);
      }
      
      public function alienHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         param3 = UtilsUtils._bg5268(param3);
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count18,param4);
      }
      
      public function pirataHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count20,param4);
      }
      
      public function loroHablarConCorazon(param1:int, param2:int, param3:String, param4:String) : void
      {
         param3 = UtilsUtils._bg5268(param3);
         param4 = UtilsUtils._bg5268(param4);
         this._wg7925._kg10630(param4,null,param1,param2,Basechat.count17,param3);
      }
      
      public function estatuaHablar(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count19);
      }
      
      public function inciensoFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count22);
      }
      
      public function radioFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count1);
      }
      
      public function violetaFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count28);
      }
      
      public function verdeFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count29);
      }
      
      public function cartelFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count24);
      }
      
      public function zodiacTalk(param1:int, param2:int, param3:String) : void
      {
         var count1:int = 0;
         if(param3 == "gemini")
         {
            count1 = 17;
         }
         else
         {
            count1 = 10;
         }
         var count2:Number = Number(new Date().getTime());
         var count7:String = "object.zodiac." + param3 + "." + Math.floor(count2 / (24 * 3600 * 1000)) % count1;
         var items:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1(count7);
         this._wg7925._kg10630(items,null,param1,param2,Basechat.count28);
      }
      
      public function getTexto(param1:String) : String
      {
         var count:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1(param1);
         return (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1(count);
      }
      
      public function marronFrase(param1:int, param2:int, param3:String, param4:String) : void
      {
         var count2:String = param3 + UserSession.getInstance().name + param4;
         this._wg7925._kg10630(count2,null,param1,param2,Basechat.count25);
      }
      
      public function marronFraseNoName(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count25);
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
         var count3:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         count3._sr13322(param2,count3.items5);
      }
      
      public function changePosition(param1:int, param2:Number, param3:Number) : void
      {
         var count1:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         var count2:Point = SceneType._bi7400(new Point(param2,param3));
         var count7:Array = [count2.x,count2.y];
         SceneObjectManager.getInstance().render2(param1,param2,param3,0,new DatatypesModel(count2.x,count2.y),count7);
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
         var count:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(param1));
         if(count != null && count.show4())
         {
            this._tb12411.enterObject(count);
         }
      }
      
      public function openObject(param1:int, param2:Boolean) : void
      {
         if(param2)
         {
            this._vp454.handleSocket13(param1,"");
         }
         else
         {
            this._vp454.handleSocket13(param1,"1234");
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
         SoundeffectsManager.stop(param1);
      }
   }
}

