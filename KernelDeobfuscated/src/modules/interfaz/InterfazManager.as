package src.modules.interfaz
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.text.*;
   import flash.utils.*;
   import mx.utils.*;
   import src.*;
   import src.allData.*;
   import src.allData.color.*;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.allData.texts.*;
   import src.config.*;
   import src.loaders.*;
   import src.logs.*;
   import src.modules.*;
   import src.modules.antitimos.LoginEvents;
   import src.modules.bpad.*;
   import src.modules.chooseScene.*;
   import src.modules.concursos.*;
   import src.modules.creacionObjetos.CreacionobjetosController;
   import src.modules.creacionObjetos.fichas.*;
   import src.modules.creacionObjetos.formulas.*;
   import src.modules.creacionObjetos.skin.*;
   import src.modules.creditos.*;
   import src.modules.doors.*;
   import src.modules.enterScene.*;
   import src.modules.iluminarGrillas.*;
   import src.modules.interfaz.baseChat.*;
   import src.modules.interfaz.catalogo.*;
   import src.modules.interfaz.fichaKeko.*;
   import src.modules.interfaz.fichaKeko.booble.*;
   import src.modules.interfaz.grillas.*;
   import src.modules.interfaz.intercambios.*;
   import src.modules.interfaz.mochila.*;
   import src.modules.member.*;
   import src.modules.notificaciones.NotificacionesController;
   import src.modules.objetos.ObjetosController;
   import src.modules.plantas.*;
   import src.modules.privados.*;
   import src.modules.scene.*;
   import src.modules.ticketManager.*;
   import src.multiuser.*;
   import src.org.osflash.thunderbolt.*;
   import src.person.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.application.interactions.*;
   import src.tv.boombang.application.interactions.controller.*;
   import src.tv.boombang.application.payments.gui.windows.WindowsView;
   import src.tv.boombang.application.screen.*;
   import src.tv.boombang.application.user.gui.windows.*;
   import src.tv.boombang.application.user.gui.windows.activateIntercambio.*;
   import src.tv.boombang.application.user.gui.windows.cancelDeactivation.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.datatypes.movement.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.tv.boombang.core.datatypes.npc.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.windows.*;
   import src.utils.*;
   import src.utils.crypto.*;
   
   public class InterfazManager extends Sprite implements ModuleBase
   {
      
      public static var count:int;
      
      public static const count1:Number = 582;
      
      public static const count2:Number = 357;
      
      public static const count3:Number = 700;
      
      public static const count4:Number = 592;
      
      private static const count5:int = 2000;
      
      private static const count6:int = 10;
      
      public static const count7:int = 1000;
      
      private static const urlString1:String = "mcficha";
      
      private static const textString1:String = "mcClick";
      
      public static const count25:int = 0;
      
      public static const count9:int = 1;
      
      public static const count10:int = 2;
      
      public static const count11:int = 3;
      
      public static const count12:int = 4;
      
      private static const count13:int = 60 * 15;
      
      private static const count14:int = 60 * 60 * 24;
      
      private static var items:Array = new Array();
      
      private var count32:int;
      
      private var _cy15918:ModuleManager;
      
      private var _dv14621:InterfazController;
      
      private var _hd13280:LoginEvents;
      
      private var _fx11460:CreacionobjetosController;
      
      private var _bg10415:CreditosController;
      
      private var _mi10565:ConcursosController;
      
      public var _tb12411:PrivadosModel;
      
      private var enterScene:SceneTransition;
      
      private var _xh7232:MemberController;
      
      private var _mr4183:SceneController;
      
      private var count16:int;
      
      private var count17:int;
      
      private var isEnabled:Boolean;
      
      private var _cc9090:MovieClip;
      
      private var _sv11952:MovieClip;
      
      private var _et15486:MovieClip;
      
      private var _uf9866:MovieClip;
      
      public var _dc14886:FichakekoModel;
      
      public var baseChat:ChatBase;
      
      public var _rr6481:IntercambiosModel;
      
      public var _gv10340:CatalogoModel;
      
      public var _rl15912:MochilaModel;
      
      public var _xl2739:FichasModel;
      
      public var iluminarGrillas:IluminargrillasController;
      
      public var _yh6074:PlantasController;
      
      public var _ju426:MemberModel;
      
      private var isEnabled1:Boolean = true;
      
      private var isEnabled2:Boolean = true;
      
      private var logs:Logger;
      
      private var _ix11826:PersonBase;
      
      private var _dr1773:UserSession;
      
      private var _bl11315:SceneType;
      
      private var _jb3891:BPadController;
      
      private var _qh4523:UtilsModel;
      
      public var _xx1581:BasechatModel;
      
      private var integracionEscenarios:EntersceneModel;
      
      private var _wa11205:MovieClip;
      
      public var _og11605:GrillasModel;
      
      public var _ng15349:PlantasModel;
      
      private var _kg2026:FichasModel;
      
      private var _xe10392:MemberController;
      
      public var _ui11605:DoorsController;
      
      private var count18:int = 0;
      
      private var _tl9155:CreditsManager;
      
      private var _tl7614:NotificacionesController;
      
      private var _bn4337:ControllerController;
      
      private var _di15238:PersonController;
      
      private var _of15040:WindowsView;
      
      private var _mg1027:ScreenController;
      
      private var isEnabled3:Boolean;
      
      public function InterfazManager(param1:PersonBase, param2:LoginEvents, param3:CreditosController, param4:ObjetosController, param5:SceneTransition, param6:CreacionobjetosController, param7:SceneType, param8:MemberController, param9:CreditsManager, param10:NotificacionesController)
      {
         var count10:MovieClip = null;
         var textString12:MovieClip = null;
         super();
         GaUtils.getInstance().start(true,param5._nr6929.count2.label);
         this._dv14621 = new InterfazController();
         this._dv14621.addEventListener(InterfazEvents.textString,this.authenticateUser);
         this._mr4183 = new SceneController();
         this._mr4183.addEventListener(SceneEvents.textString1,this._yo217);
         this._xe10392 = param8;
         this._xe10392.addEventListener(MemberEvents.textString,this._gu4349);
         PacketBuilder.handleSocket(MessageTypeConstants.count28,this._cs14415);
         this._hd13280 = param2;
         this._bg10415 = param3;
         this.enterScene = param5;
         this._fx11460 = param6;
         this._bl11315 = param7;
         this._bl11315._cp8442 = this;
         this.enterScene.addEventListener(IslandChooser.textString1,this.stop);
         this._gt6454();
         this._wv5374();
         this._ix11826 = param1;
         this._dr1773 = UserSession.getInstance();
         this.logs = Logger.getInstance();
         this._cc9090 = MovieClip(LoadersManager.getInstance()._xb9567(AssetLoader.textString95));
         this._sv11952 = MovieClip(LoadersManager.getInstance()._xb9567(AssetLoader.textString96));
         this._et15486 = this._cc9090[textString1];
         this._jb3891 = BPadController._np546;
         this._tl9155 = param9;
         this._tl7614 = param10;
         _xw1367.getInstance()._uc3178(this._et15486,_xw1367.count3);
         var isEnabled:MovieClip = MovieClip(LoadersManager.getInstance()._xb9567(AssetLoader.textString94));
         this.baseChat = new ChatBase(this._dv14621,this._sv11952,isEnabled,this._vu3360,this,param1,this._bl11315);
         this.baseChat.init();
         this._dc14886 = new FichakekoModel(this._dv14621,this._cc9090,param1,this.baseChat,this,this._bl11315);
         var textString14:MovieClip = MovieClip(LoadersManager.getInstance()._xb9567(AssetLoader.textString98));
         this._gv10340 = new CatalogoModel(textString14,this,param4);
         this._gv10340.init();
         var count16:MovieClip = MovieClip(LoadersManager.getInstance()._xb9567(AssetLoader.textString99));
         this._rl15912 = new MochilaModel(count16,this,this._bl11315,param4);
         this._rl15912._qk2324(false);
         var count17:MovieClip = MovieClip(LoadersManager.getInstance()._xb9567(AssetLoader.textString97));
         this._rr6481 = new IntercambiosModel(count17,this,param1,this._dc14886,this._rl15912);
         this._kg2026 = new FichasModel();
         var count18:MovieClip = MovieClip(LoadersManager.getInstance()._xb9567(AssetLoader.textString32));
         this._ju426 = new MemberModel(count18,null,true,this._xe10392,this.move3);
         this._og11605 = new GrillasModel(this._bl11315);
         this._wa11205 = MovieClip(LoadersManager.getInstance()._xb9567(AssetLoader.textString106));
         addEventListener(Event.ADDED_TO_STAGE,this.move);
         this.textString7 = count25;
         this._xx1581 = new BasechatModel();
         var count19:MovieClip = MovieClip(LoadersManager.getInstance()._xb9567(AssetLoader.textString110));
         this._mi10565 = new ConcursosController(count19,this._xx1581,this._bl11315);
         var count20:String = TextManager._eo5308["textsEscenarios"][this._bl11315.getString() + this._bl11315._nr6929._fq658].toXMLString();
         if(this._bl11315 is SceneTypeIsland)
         {
            count10 = MovieClip(LoadersManager.getInstance()._xb9567(AssetLoader.textString100));
            textString12 = MovieClip(LoadersManager.getInstance()._xb9567(AssetLoader.textString102));
            this._tb12411 = new PrivadosModel(param5,count10,textString12,this,this._xx1581,param1,SceneTypeIsland(this._bl11315),new XML(count20));
         }
         SceneObjectManager.getInstance()._pe6003(this._bl11315);
         SceneObjectManager.getInstance()._vq14462();
         this._qh4523 = new UtilsModel();
         this._jb3891.addEventListener(BpadEvents.textString2,this._ks3587);
         this._jb3891.addEventListener(BpadEvents.textString1,this._ks3587);
         if(this._tb12411 != null)
         {
            this.integracionEscenarios = new EntersceneModel(this._xx1581,this._tb12411._kd14266(),this.baseChat,this,this._bl11315);
         }
         else
         {
            this.integracionEscenarios = new EntersceneModel(this._xx1581,null,this.baseChat,this,this._bl11315,param1);
         }
         var count21:MovieClip = MovieClip(LoadersManager.getInstance()._xb9567(AssetLoader.textString109));
         this._ng15349 = new PlantasModel(count21,this._tb12411);
         this._yh6074 = new PlantasController(this._tb12411);
         var count22:MovieClip = MovieClip(LoadersManager.getInstance()._xb9567(AssetLoader.textString104));
         this._ui11605 = new DoorsController(count22,this._tb12411,this._bl11315);
         this._ui11605.addEventListener(DoorsEvents.textString1,this._wg8107);
         BaseEscenario(this._bl11315._wy2643).integracionEscenarios = this.integracionEscenarios;
         BaseEscenario(this._bl11315._wy2643).xmlTexts = new XML(count20);
         BaseEscenario(this._bl11315._wy2643)._BaseEscenarioInit();
         this.iluminarGrillas = new IluminargrillasController(this._bl11315);
         this._jb3891._fo382(BPadController._yk9555);
         this._jb3891.show();
         if(param5._ho5911()._lg6512.count1 > 0)
         {
            this._mg1027 = new ScreenController(param5._ho5911()._lg6512.count1);
            this._mg1027.x = param5._ho5911()._lg6512.x;
            this._mg1027.y = param5._ho5911()._lg6512.y;
            _xw1367.getInstance()._uc3178(this._mg1027 as MovieClip,param5._ho5911()._lg6512._ok7591,false,2);
         }
         PacketBuilder.handleSocket(MessageTypeConstants.count57,this.parseData);
         PacketBuilder.handleSocket(MessageTypeConstants.count64,this._kc922);
         this._bn4337 = new ControllerController();
      }
      
      private function _kc922(param1:NetworkEventWrapper) : void
      {
         if(param1.flags[1] == MessageTypeConstants.count65)
         {
            this._bn4337._br6591(this._ix11826.items[param1.items[1]],this._ix11826.items[this._dr1773.count25],InteractionsUtils._ob13942(param1.items[0]));
            Utils._iq4270((ServiceLocator.get(ResourceManager) as ResourceManager)._ix8228("audioLibrary.swf","InboxActionSound"));
         }
         else if(param1.flags[1] == MessageTypeConstants.count66)
         {
            Communications._qj6199(InteractionsUtils._ob13942(param1.items[0]),param1.items[1]);
         }
         else if(param1.flags[1] == MessageTypeConstants.count68)
         {
            this._bn4337._wq13594(this._ix11826.items[param1.items[0]]);
            var count:Boolean = this._dc14886._xp513(param1.items[0]);
         }
         else if(param1.flags[1] == MessageTypeConstants.count67)
         {
            var count3:InteractionsUtils = InteractionsUtils._ob13942(param1.items[0]);
            var count1:int = int(param1.items[1]);
            var count2:int = int(param1.items[2]);
            var count7:int = int(param1.items[3]);
            var items:int = int(param1.items[4]);
            var count8:int = int(param1.items[5]);
            var count6:int = int(param1.items[6]);
            if(0 == this._dr1773.count25)
            {
               this._dc14886._xp513(0);
            }
            if(0 == this._dr1773.count25)
            {
               this._bn4337._wq13594(this._ix11826.items[0]);
            }
            PersonController(this._ix11826.items[0])._qj6199(0,0,0,0,null.id - 1,true);
            PersonController(this._ix11826.items[0])._qj6199(0,0,0,0,null.id - 1,false);
         }
         else if(param1.flags[1] == MessageTypeConstants.count69)
         {
            this._bn4337._wq13594(this._ix11826.items[param1.items[0]]);
         }
      }
      
      public function parseData(param1:NetworkEventWrapper) : void
      {
         var count:MovementModel = null;
         var count1:Array = param1.items.concat();
         while(true)
         {
            count = MovementModel.parse(count1);
            if(count == null)
            {
               break;
            }
            if(count._sh1968 == MovementModel._fd15912)
            {
               PersonController(this._ix11826.items[count.id])._hv9874(count);
            }
            else if(count._sh1968 == MovementModel._xh1545)
            {
               var count3:SceneObjectRenderer = SceneObjectRenderer(this._bl11315.render5(count.id));
            }
         }
      }
      
      public function _gv13950(param1:NpcModel, param2:int, param3:int) : void
      {
         if(this._xl2739 != null)
         {
            return;
         }
         if(param1 == NpcModel._fi15052)
         {
            this._rd7244(param2,param3);
         }
         else
         {
            this._xl2739 = new FichasModel(this._wa11205,new Skin(),0,"","","",this,param2);
         }
      }
      
      public function _rd7244(param1:int, param2:int) : void
      {
         var count3:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("formulaGroup." + param2 + ".npc.name");
         var count1:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("formulaGroup." + param2 + ".npc.description");
         var count2:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("formulaGroup." + param2 + ".npc.help");
         this._xl2739 = new FichasModel(this._wa11205,this._vs6011(param1),param1,count3,count1,count2,this);
      }
      
      private function _vs6011(param1:int) : Skin
      {
         var count:Skin = null;
         switch(param1)
         {
            case Formulas.count2:
            case Formulas.count3:
            case Formulas.count4:
            case Formulas.count5:
            case Formulas.count16:
            case Formulas.count17:
            case Formulas.count15:
            case Formulas.count29:
            case Formulas.count30:
            case Formulas.count31:
            case Formulas.count32:
            case Formulas.count33:
            case Formulas.count34:
               count = new Skin();
               break;
            case Formulas.count6:
            case Formulas.count7:
            case Formulas.count8:
            case Formulas.count9:
            case Formulas.count24:
            case Formulas.count23:
            case Formulas.count22:
            case Formulas.count21:
            case Formulas.count20:
            case Formulas.count18:
            case Formulas.count19:
            case Formulas.count35:
            case Formulas.count36:
            case Formulas.count37:
            case Formulas.count38:
            case Formulas.count39:
            case Formulas.count40:
            case Formulas.count41:
            case Formulas.count42:
               count = new Skin();
               break;
            case Formulas.count10:
               count = new Skin();
               break;
            case Formulas.count11:
            case Formulas.count12:
            case Formulas.count13:
            case Formulas.count14:
            case Formulas.count25:
            case Formulas.count26:
            case Formulas.count27:
            default:
               count = new Skin();
         }
         return count;
      }
      
      public function _sw13842(param1:int, param2:int, param3:String, param4:String, param5:int) : void
      {
         this._xx1581._kg10630(param3,null,param1,param2,param5,param4);
      }
      
      public function _hk12937() : void
      {
         this._tl7614._bv5027();
      }
      
      private function destroy() : void
      {
         if(this._tb12411 != null)
         {
            this._tb12411.destroy();
            this._tb12411 = null;
         }
      }
      
      public function init(param1:Object = null) : void
      {
      }
      
      private function move(param1:Event = null) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.move);
         this.stage.addEventListener(FocusEvent.FOCUS_OUT,this._ah3316,false,0,true);
         this.stage.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this._hh12371,false,0,true);
         this.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onClick,false,0,true);
         this._qp6715();
      }
      
      private function _ah3316(param1:FocusEvent) : void
      {
         var count:Object = param1.target;
         var count3:Object = param1.relatedObject;
         this._xa7094(count,count3);
      }
      
      private function _hh12371(param1:FocusEvent) : void
      {
         var count:Object = param1.target;
         var count3:Object = param1.relatedObject;
         if(this._xa7094(count,count3))
         {
            param1.preventDefault();
         }
      }
      
      private function _xa7094(param1:Object, param2:Object) : Boolean
      {
         var count1:Boolean = false;
         if(param2 is TextField)
         {
            if(TextField(param2).type != TextFieldType.INPUT)
            {
               count1 = true;
            }
         }
         else
         {
            count1 = true;
         }
         if(count1)
         {
            if(param1 is TextField)
            {
               var count3:TextField = TextField(param1);
               if(null.type == TextFieldType.INPUT && stage.contains(null))
               {
                  stage.focus = null;
                  return true;
               }
            }
         }
         return false;
      }
      
      private function move1() : void
      {
         this.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onClick);
         this.stage.removeEventListener(FocusEvent.FOCUS_OUT,this._ah3316);
         this.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this._hh12371);
         if(this._mg1027)
         {
            this._mg1027.destroy();
         }
      }
      
      public function loop() : void
      {
         this._qp6715();
         this._dc14886.loop();
         this.baseChat.loop();
         this._xx1581.loop();
         BaseEscenario(this._bl11315._wy2643)._BaseEscenarioLoop();
         if(this._yh6074 != null)
         {
            this._yh6074.loop();
         }
         if(this._tb12411 != null)
         {
            this._tb12411.loop();
         }
         if(this._og11605 != null)
         {
            this._og11605.loop();
         }
         if(this._mi10565 != null)
         {
            this._mi10565.loop();
         }
         if(this._tl9155 != null)
         {
            this.baseChat._ss2843(CreditsManager._cd5741);
         }
      }
      
      private function _qp6715() : void
      {
         var count2:int = 0;
         if(this.stage != null)
         {
            count2 = this.stage.stageWidth;
            if(this.count18 == 0)
            {
               this.count18 = count2;
               this._xx1581._ky7789(count2 > Configuration.count2 * 0.85);
            }
            else if(this.count18 != count2)
            {
               this.count18 = count2;
               this._xx1581._ho14280(count2 > Configuration.count2 * 0.85);
            }
         }
      }
      
      public function _ww1376() : void
      {
         this.baseChat.move();
      }
      
      public function destroy() : void
      {
         GaUtils.getInstance().stop();
         PacketBuilder.handleSocket1(MessageTypeConstants.count28,this._cs14415);
         PacketBuilder.handleSocket1(MessageTypeConstants.count57,this.parseData);
         PacketBuilder.handleSocket1(MessageTypeConstants.count64,this._kc922);
         UIDialog.getInstance().removeAll();
         if(this._tb12411 != null)
         {
            this._tb12411.seleccionarMascota(-1);
         }
         if(this._dv14621 != null)
         {
            this._dv14621.removeEventListener(InterfazEvents.textString,this.authenticateUser);
            this._dv14621.destroy();
            this._cy15918 = null;
            this._dv14621 = null;
         }
         if(this._mi10565 != null)
         {
            this._mi10565.destroy();
            this._mi10565 = null;
         }
         if(this._mr4183 != null)
         {
            this._mr4183.removeEventListener(SceneEvents.textString1,this._yo217);
            this._mr4183.destroy();
            this._mr4183 = null;
         }
         if(this._xe10392 != null)
         {
            this._xe10392.removeEventListener(MemberEvents.textString,this._gu4349);
         }
         if(this._ju426 != null)
         {
            this._ju426.destroy();
            this._ju426 = null;
         }
         if(this._dc14886 != null)
         {
            this._dc14886.destroy();
            this._dc14886 = null;
         }
         if(this.baseChat != null)
         {
            this.baseChat.destroy();
            this.baseChat = null;
         }
         if(this._rr6481 != null)
         {
            this._rr6481.destroy();
            this._rr6481 = null;
         }
         if(this._yh6074 != null)
         {
            this._yh6074.destroy();
            this._yh6074 = null;
         }
         if(this._gv10340 != null)
         {
            this._gv10340.destroy();
            this._gv10340 = null;
         }
         if(this._rl15912 != null)
         {
            this._rl15912.destroy();
            this._rl15912 = null;
         }
         if(this._xl2739 != null)
         {
            this._xl2739.destroy();
            this._xl2739 = null;
         }
         if(this._og11605 != null)
         {
            this._og11605.destroy();
            this._og11605 = null;
         }
         if(this.iluminarGrillas != null)
         {
            this.iluminarGrillas.destroy();
            this.iluminarGrillas = null;
         }
         if(this.enterScene != null)
         {
            this.enterScene.removeEventListener(IslandChooser.textString1,this.stop);
         }
         if(this._ui11605 != null)
         {
            this._ui11605.removeEventListener(DoorsEvents.textString1,this._wg8107);
            this._ui11605.destroy();
            this._ui11605 = null;
         }
         if(this._ng15349 != null)
         {
            this._ng15349.destroy();
            this._ng15349 = null;
         }
         if(this._bn4337 != null)
         {
            this._bn4337.destroy();
            this._bn4337 = null;
         }
         this._jb3891.removeEventListener(BpadEvents.textString2,this._ks3587);
         this._jb3891.removeEventListener(BpadEvents.textString1,this._ks3587);
         this._jb3891.authenticateUser2();
         BaseEscenario(this._bl11315._wy2643)._BaseEscenarioDestroy();
         _xw1367.getInstance().move2(this._et15486,_xw1367.count3);
         this._bl11315.items3 = null;
         this._qh4523 = null;
         this.move1();
         this._xx1581.destroy();
         this._xx1581 = null;
         this._jb3891._in3424();
         this._dr1773._ne4166();
         this.destroy();
      }
      
      private function _yo217(param1:SceneEvents) : void
      {
         var count:Array = null;
         var count3:String = null;
         var count1:Array = null;
         var count2:Array = null;
         var count7:Array = null;
         var items:Array = null;
         var count8:Array = null;
         var count6:Array = null;
         var count:Array = null;
         var count10:Array = null;
         count = param1.items;
         var textString12:uint = uint(String(count.shift()).charCodeAt(0));
         switch(textString12)
         {
            case SceneController.count:
               count3 = count[0];
               if(count3 == "")
               {
                  return;
               }
               count1 = SocketManager.getList2(count.shift());
               count2 = SocketManager.getList2(count.shift());
               count7 = SocketManager.getList2(count.shift());
               items = SocketManager.getList2(count.shift());
               count8 = SocketManager.getList2(count.shift());
               count6 = SocketManager.getList2(count.shift());
               count = SocketManager.getList2(count.shift());
               count10 = [count1,count2,count7,items,count8,count6,count];
               this._bl11315._dc11123(count10);
               return;
               break;
            default:
               return;
         }
      }
      
      private function stop(param1:ModuleLoader) : void
      {
         if(!TicketmanagerController._xh10884(TicketmanagerController.textString6))
         {
            return;
         }
         var count:Array = param1.items;
         var count3:int = int(count.shift());
         if(count3 >= 0)
         {
            this.textString7 = count10;
         }
      }
      
      private function _gu4349(param1:MemberEvents) : void
      {
         var count2:Array = param1.items;
         var count7:uint = uint(String(count2[0]).charCodeAt(0));
         switch(count7)
         {
            case MemberController._sk8258:
               var count:int = int(count2[1]);
               var count3:Boolean = Boolean(int(count2[2]));
               var count1:PersonController = this._ix11826._xc6184(0);
               if(count1 != null)
               {
                  if(this._dr1773.id != 0)
                  {
                     null._md8722.member = false;
                  }
                  this._dc14886._gx2621(false,0);
               }
               return;
            default:
               return;
         }
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:Array = param1.items;
         var count3:uint = uint(String(count[0]).charCodeAt(0));
         switch(count3)
         {
            case SocketManager.count23:
               this._jn11121(count);
               return;
            case SocketManager.count16:
               this._uj14694(count);
               return;
            case SocketManager.count24:
               this._bi4838(count);
               return;
            case SocketManager.count37:
               this._uh13315(count);
               return;
            case MessageTypeConstants.count76:
            case SocketManager.count26:
               this._yv4036(count);
               return;
            case SocketManager.count85:
               this._kb3546(count);
               return;
            case SocketManager.count51:
               this._uj10807(count);
               return;
            case SocketManager.count42:
            case SocketManager.count43:
               this._mn16086(count);
               return;
            case SocketManager.count53:
               this._hq15361(count);
               return;
            case SocketManager.count41:
               this._uj13665(count);
               return;
            case SocketManager.count44:
               this._nu5164(count);
               return;
            case SocketManager.count25:
               this._mi3598(count);
               return;
            case SocketManager.count28:
               this._vi10605();
               return;
            case SocketManager.count29:
               this._be11110();
               return;
            case SocketManager.count45:
               this._so531();
               return;
            case SocketManager.count35:
               this._qx9238(count);
               return;
            case SocketManager.count33:
               this._wc4206(count);
               return;
            case SocketManager.count39:
               this._gr7773(count);
               return;
            case SocketManager.count38:
               this._go7526();
               return;
            case SocketManager.count59:
               this.handleSocket1(count);
               return;
            case SocketManager.count20:
               this._ym14056(count);
               return;
            case SocketManager.count21:
               this._xt9844(count);
               return;
            case SocketManager.count32:
               this._hm13105(count);
               return;
            default:
               return;
         }
      }
      
      public function get textString7() : int
      {
         return this.count32;
      }
      
      public function set textString7(param1:int) : void
      {
         this.count32 = param1;
      }
      
      public function get _ud1642() : ModuleManager
      {
         return this._cy15918;
      }
      
      public function set _ud1642(param1:ModuleManager) : void
      {
         this._cy15918 = param1;
      }
      
      public function _ho5911() : SceneType
      {
         return this._bl11315;
      }
      
      private function _vi10605() : void
      {
         this._dc14886._uy9428()._ak11554(BoobleUtils._nj15369);
      }
      
      private function _be11110() : void
      {
         this._dc14886._uy9428()._ak11554(BoobleUtils._ja7340);
      }
      
      private function _so531() : void
      {
         this.move3();
      }
      
      private function _vu3360() : void
      {
         if(this._mi13335() && Boolean(this._dr1773.isEnabled8))
         {
            this._lh1803();
         }
      }
      
      public function _lh1803() : void
      {
         var count2:NavigationmenuModel = null;
         var count:int = 0;
         var count3:int = 0;
         var count1:int = 0;
         var count2:int = 0;
         var count7:int = 0;
         var items:int = 0;
         this.isEnabled3 = false;
         if(this._bl11315.items3 != null && this._bl11315.items3.length == 6)
         {
            count = int(this._bl11315.items3[0]);
            count3 = int(this._bl11315.items3[1]);
            count1 = int(this._bl11315.items3[2]);
            count2 = int(this._bl11315.items3[3]);
            count7 = int(this._bl11315.items3[4]);
            items = int(this._bl11315.items3[5]);
            if(count != 0 || count3 != 0 || count1 != 0 || count2 != 0 || count7 != 0 || items != 0)
            {
               count2 = new NavigationmenuModel();
               count2._ls5877 = NavigationmenuModel._bn928(count);
               count2.count2 = NavigationmenuModel._bn928(count3);
               count2._vn12441 = count1;
               count2._un6586 = count2;
               count2._eb11619 = count7;
               count2._fq658 = items;
               count2.name = "";
               if(TicketmanagerController._xm12587(TicketmanagerController.textString6))
               {
                  this.enterScene.handleSocket1(count2,"");
                  return;
               }
            }
         }
         if(this._bl11315.items5.length > 0 && Boolean((this._bl11315.items5[0] as DoorsModel).isEnabled))
         {
            this.isEnabled3 = true;
            count2 = (this._bl11315.items5[0] as DoorsModel)._ol8098();
            this._kw12357(count2,"");
            return;
         }
         this.textString7 = count9;
      }
      
      public function _gv14852() : void
      {
         this.textString7 = count9;
      }
      
      public function _kw12357(param1:NavigationmenuModel, param2:String) : void
      {
         if(TicketmanagerController._xm12587(TicketmanagerController.textString6))
         {
            this.enterScene.handleSocket1(param1,param2);
         }
      }
      
      public function _go7526() : void
      {
         this.textString7 = count11;
      }
      
      public function _ge1586() : void
      {
         this.textString7 = count12;
      }
      
      public function _mi13335() : Boolean
      {
         if(Interfaz._le11313(this._dr1773.count25,this._ix11826))
         {
            if(PersonController(this._ix11826.items[this._dr1773.count25])._fl1743())
            {
               return true;
            }
         }
         return false;
      }
      
      public function _pq590(param1:int) : void
      {
         this._bn4337._wq13594(this._ix11826.items[param1]);
         this._dc14886._pq590(param1);
         this.baseChat._pq590(param1);
      }
      
      public function move2() : void
      {
         if(UserSession.getInstance()._uf6036 == UserSession._ma6151)
         {
            UIDialog.getInstance().removeAll();
            UIDialog.getInstance().add(new ActivateintercambioView(),count1,stage.stageHeight - 300);
         }
         else if(UserSession.getInstance()._uf6036 == UserSession._kr15451)
         {
            CommunicationsModel._aq15017("1","");
         }
         else if(UserSession.getInstance()._uf6036 == UserSession._lb6305)
         {
            UIDialog.getInstance().add(new CanceldeactivationModel("windows.cancelDeactivateKey.exchangesDescription",true),count3,stage.stageHeight - 65);
         }
      }
      
      public function _mf2432() : void
      {
         CommunicationsModel._aq15017("0","");
      }
      
      private function _cs14415(param1:NetworkEventWrapper) : void
      {
         var count7:uint = param1._qp16092(1);
         switch(count7)
         {
            case MessageTypeConstants.count39:
               if(param1.frame.length < 4)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"InterfaceModule.onIntercambioEvent",param1.frame.toString()));
                  return;
               }
               var count:int = int(param1.items[0]);
               var count3:* = int(param1.items[1]) == 1;
               for each(var count2 in this._ix11826.items)
               {
                  if(count2 != null && null._md8722.id == 0)
                  {
                     null._md8722.isEnabled = false;
                     this._dc14886._pf7495(null._md8722.id,false);
                     if(null._cp3023)
                     {
                        UserSession.getInstance().isEnabled = false;
                        this.baseChat.stop6(false);
                     }
                     break;
                  }
               }
               return;
               break;
            default:
               return;
         }
      }
      
      public function hide() : void
      {
         this.hidePanelDatosPlanta();
         this._ms4986();
         this._yx13025();
         this._eo8823();
         this._hk12937();
      }
      
      public function hidePanelDatosPlanta() : void
      {
         if(this._yh6074 != null)
         {
            this._yh6074.authenticateUser2();
         }
      }
      
      public function _ms4986() : void
      {
         if(this._gv10340 != null)
         {
            this._gv10340.authenticateUser2();
         }
      }
      
      public function _yx13025() : void
      {
         if(this._xl2739 != null)
         {
            this._xl2739.authenticateUser2();
         }
      }
      
      public function _eo8823() : void
      {
         if(this._ju426 != null)
         {
            this._ju426.authenticateUser2();
         }
      }
      
      public function _jv3334(param1:int, param2:DatosDePlanta) : void
      {
         if(this._yh6074 != null)
         {
            this.hide();
            this._yh6074.show(param1,param2);
         }
      }
      
      public function _to4684() : void
      {
         if(this._xl2739 != null)
         {
            this.hide();
            this._xl2739.show();
         }
      }
      
      public function move3() : void
      {
         if(this._of15040)
         {
            UIDialog.getInstance().remove(this._of15040);
         }
         ExternalInterface.call("showCredits");
      }
      
      public function _aa3338() : void
      {
         if(this._ju426 != null)
         {
            this.hide();
            this._ju426.show(0,0);
         }
      }
      
      public function _sx2755() : void
      {
         if(this._gv10340 != null)
         {
            this.hide();
            this._gv10340.show();
         }
      }
      
      public function _bv14620(param1:PersonAnimation) : void
      {
         this.hide();
         this._rl15912._qk2324(true,param1);
      }
      
      public function _ou4685(param1:int) : void
      {
         if(UserSession.getInstance().isEnabled)
         {
            this._rr6481._ou4685(param1);
         }
         else
         {
            UIDialog.getInstance().add(new WindowsView(),610,189);
         }
      }
      
      public function _hl388() : void
      {
         this._rl15912._qk2324(false);
      }
      
      public function _ht10080(param1:DataobjectsModel, param2:int) : void
      {
         this._rr6481._ht10080(param1,param2);
      }
      
      public function _va929() : void
      {
      }
      
      public function _ek15376(param1:Boolean = true, param2:Boolean = true, param3:Boolean = true) : void
      {
         this._fs5977();
         if(param3)
         {
            this._ic1958();
         }
         if(param2)
         {
            this._aa2650();
         }
         if(param1)
         {
            this._fi927();
         }
      }
      
      public function _aa2650() : void
      {
         if(this._tb12411 != null)
         {
            this._tb12411._ge9034();
         }
      }
      
      public function _fs5977() : void
      {
         if(this._rl15912 != null)
         {
            this._rl15912.authenticateUser2();
         }
      }
      
      public function _fi927() : void
      {
         if(this._jb3891 != null)
         {
            this._jb3891._wq9363();
         }
      }
      
      public function _ic1958() : void
      {
         if(this._ui11605 != null)
         {
            this._ui11605.authenticateUser2();
         }
      }
      
      public function _mw9535() : void
      {
         if(this._rl15912 != null)
         {
            if(this._rl15912._lr8283() == false)
            {
               this._in10682();
            }
            else
            {
               this._fs5977();
            }
         }
      }
      
      public function _in10682() : void
      {
         this._ek15376();
         if(this._rl15912 != null)
         {
            this._rl15912.show();
         }
      }
      
      public function _od7419(param1:int) : void
      {
         this._in10682();
         if(this._rl15912 != null)
         {
            this._rl15912._ja12969(param1);
         }
      }
      
      private function _wg8107(param1:DoorsEvents) : void
      {
         switch(param1.type)
         {
            case DoorsEvents.textString1:
               this._ek15376(true,true,false);
               return;
            case DoorsEvents.textString:
               return;
            default:
               return;
         }
      }
      
      private function _ks3587(param1:BpadEvents) : void
      {
         switch(param1.type)
         {
            case BpadEvents.textString2:
               this._ek15376(false);
               return;
            case BpadEvents.textString1:
               return;
            default:
               return;
         }
      }
      
      public function _it1203() : void
      {
         this._ek15376(true,false);
      }
      
      public function _vs11457(param1:int, param2:int) : void
      {
         if(this._tb12411 != null)
         {
            this._tb12411.handleSocket15(param1,param2);
         }
      }
      
      public function _cr11263(param1:int) : void
      {
         this._ui11605._cr11263(param1);
      }
      
      public function _up14749() : void
      {
         this._ui11605._up14749();
      }
      
      private function _yv4036(param1:Array) : void
      {
         var count:int = 0;
         if(!Interfaz._pb10174(param1,4,"InterfaceModule.recTramaChat"))
         {
            return;
         }
         var count6:* = String(param1[0]).charCodeAt(0) == SocketManager.count26;
         count = int(param1[1]);
         var count:String = param1[2];
         var count10:int = int(param1[3]);
         if(param1[4])
         {
            var count3:Array = SocketManager.getList1(param1[4]);
         }
         GoogleAnalytics.finish(GoogleAnalytics.textString2,count);
         if(!Interfaz._gq12169(count10,"InterfaceModule.recTramaChat"))
         {
            return;
         }
         switch(count10)
         {
            case Basechat.count:
            case Basechat.count1:
            case Basechat.count5:
            case Basechat.count3:
            case 40:
            case 41:
            case Basechat.count4:
            case Basechat.count6:
            case Basechat.count7:
            case Basechat.count8:
            case Basechat.count9:
            case Basechat.count32:
            case Basechat.count33:
               if(!Interfaz._le11313(count,this._ix11826))
               {
                  this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaChat","idPosPerson invalid=" + count));
                  return;
               }
               var count2:Boolean = true;
               var count7:PersonController = PersonController(this._ix11826.items[count]);
               if(count7._md8722.render(count))
               {
                  return;
               }
               var items:int = count10;
               if(count6)
               {
                  switch(count10)
                  {
                     case Basechat.count:
                        items = int(Basechat.count11);
                        break;
                     case Basechat.count1:
                        items = int(Basechat.count12);
                  }
               }
               if(0 == Basechat.count4 || 0 == 40)
               {
                  count2 = false;
               }
               if(0 == Basechat.count12)
               {
                  var count8:String = CryptoUtils.hashData(StringUtil.trim(count.toLowerCase()));
                  if(count8 == "53e13769bf50d30f0cd2aefd578c3c15")
                  {
                     if(count != this._dr1773.count25)
                     {
                        this._bn2970(count);
                     }
                     return;
                  }
               }
               if(0 == Basechat.count11 || 0 == Basechat.count12)
               {
                  if(count.indexOf("#infoanswer ") == 0)
                  {
                     count = count.substr("#infoanswer ".length);
                     return;
                  }
               }
               if(null._md8722.count10 >= 13 || this._mn1709(null._md8722.id) == false)
               {
                  if(null._md8722.count10 <= 13)
                  {
                     count = UtilsUtils._bg5268(count);
                  }
                  this._kg10630(count,null._md8722.count25,0);
               }
               return;
               break;
            case Basechat.count10:
               var count1:PersonController = PersonController(this._ix11826.items[count]);
               if(count1 != null)
               {
                  this._xx1581._kg10630(count,null._md8722,250,172,Basechat.count10);
               }
               return;
            case Basechat.count2:
               count = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1(count,null);
               this._xx1581._kg10630(count,null,506,1000,Basechat.count2);
               return;
            default:
               return;
         }
      }
      
      private function _bn2970(param1:int) : void
      {
         var count23:int = 0;
         var timer:Timer = null;
         var _nu10634:Function = null;
         var count25:int = param1;
         if(UserSession.getInstance().count10 >= 13)
         {
            count23 = int(Basechat.count1);
         }
         else
         {
            count23 = int(Basechat.count);
         }
         timer = new Timer(1000,0);
         _nu10634 = function(param1:Event):void
         {
            var count:PersonController = PersonController(_ix11826.items[count25]);
            if(count != null && count._md8722.count10 >= 13)
            {
               _dv14621.handleSocket11(UserSession.getInstance().count25,count25,"#infoanswer ",count23);
            }
            else
            {
               timer.removeEventListener(Event.ACTIVATE,_nu10634);
               timer.stop();
               timer = null;
            }
         };
         timer.addEventListener(Event.ACTIVATE,_nu10634);
         timer.start();
      }
      
      public function _kg10630(param1:String, param2:int, param3:int) : void
      {
         var count1:PersonController = PersonController(this._ix11826.items[param2]);
         var count2:Point = SceneType.getPlotXY(count1._md8722._gn15250);
         this._xx1581._kg10630(param1,count1._md8722,count2.x,count2.y - 130,param3);
      }
      
      private function _jn11121(param1:Array) : void
      {
         if(param1.length < 1)
         {
            return;
         }
         var count7:uint = uint(String(param1[1]).charCodeAt(0));
         switch(count7)
         {
            case MessageTypeConstants.count25:
               if(!Interfaz._pb10174(param1,3,"InterfaceModule.recTramaPutComplement"))
               {
                  return;
               }
               var count:int = int(param1[2]);
               var count3:int = int(param1[3]);
               var count1:int = int(this._ix11826._mc6491(0));
               if(count1 == -1)
               {
                  this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaChangeDisfraz","idUsr invalid=" + 0));
                  return;
               }
               PersonController(this._ix11826.items[0])._ke8853(0);
               this._dc14886._ov12579(0);
               return;
               break;
            case MessageTypeConstants.count26:
               if(!Interfaz._pb10174(param1,3,"InterfaceModule.recTramaPutComplement"))
               {
                  return;
               }
               count = int(param1[2]);
               count1 = int(this._ix11826._mc6491(0));
               if(count1 == -1)
               {
                  this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaChangeDisfraz","idUsr invalid=" + 0));
                  return;
               }
               PersonController(this._ix11826.items[0])._sj12712();
               this._dc14886._ov12579(0);
               return;
               break;
            case MessageTypeConstants.count27:
               if(!Interfaz._pb10174(param1,3,"InterfaceModule.recTramaPutComplement"))
               {
                  return;
               }
               this._dr1773._iv11542 = SocketManager.getList2(param1[2]);
               return;
               break;
            default:
               return;
         }
      }
      
      private function _uj14694(param1:Array) : void
      {
         if(param1.length < 1)
         {
            return;
         }
         var items:uint = uint(String(param1[1]).charCodeAt(0));
         switch(items)
         {
            case MessageTypeConstants.count17:
               if(!Interfaz._pb10174(param1,6,"InterfaceModule.recTramaChangeDisfraz"))
               {
                  return;
               }
               var count:int = int(param1[2]);
               var count3:int = int(param1[3]);
               var count1:ColorModel = new ColorModel(param1[4]);
               var count2:Boolean = Boolean(int(param1[5]));
               var count7:int = int(this._ix11826._mc6491(0));
               if(count7 == -1)
               {
                  this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaChangeDisfraz","idUsr invalid=" + 0));
                  return;
               }
               PersonController(this._ix11826.items[0])._bt12289(0,null,true);
               this._dc14886._hm9534(0,false);
               return;
               break;
            case MessageTypeConstants.count20:
               if(!Interfaz._pb10174(param1,3,"InterfaceModule.recTramaChangeDisfraz"))
               {
                  return;
               }
               this._dr1773._lq6358 = SocketManager.getList2(param1[2]);
               return;
               break;
            default:
               return;
         }
      }
      
      public function _ya380(param1:int) : void
      {
         var count:int = int(items.indexOf(param1));
         if(count < 0)
         {
            items.push(param1);
         }
         else
         {
            items.splice(count,1);
         }
      }
      
      public function _mn1709(param1:int) : Boolean
      {
         return items.indexOf(param1) >= 0;
      }
      
      private function _hm13105(param1:Array) : void
      {
         if(!Interfaz._pb10174(param1,5,"InterfaceModule.recTramaRefreshStatics"))
         {
            return;
         }
         var count:int = int(param1[1]);
         var count3:Array = SocketManager.getList1(param1[2]);
         var count1:Array = SocketManager.getList1(param1[3]);
         var count2:Array = SocketManager.getList1(param1[4]);
         if(count3.length != count1.length || count1.length != count2.length)
         {
            this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaRefreshStatics, datos erroneos ",param1.toString()));
            return;
         }
         this._dc14886._gx7966(count,count3,count1,count2);
      }
      
      private function _bi4838(param1:Array) : void
      {
         var count:int = 0;
         var count3:PersonController = null;
         if(!Interfaz._pb10174(param1,3,"InterfaceModule.recTramaEmoticons"))
         {
            return;
         }
         var count1:int = int(param1[1]);
         if(!this._wk10592(count1))
         {
            this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaEmoticons","idAction invalid=" + count1));
            return;
         }
         var count2:Array = SocketManager.getList2(param1[2]);
         for each(count in count2)
         {
            count3 = this._ix11826._xc6184(count);
            if(count3 != null)
            {
               count3._sk14601(count1);
            }
            else
            {
               this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaEmoticons","invalid userId=" + count));
            }
         }
      }
      
      private function _qx9238(param1:Array) : void
      {
         if(!Interfaz._pb10174(param1,3,"InterfaceModule.recTramaCoco"))
         {
            return;
         }
         var count:int = int(param1[1]);
         var count3:int = int(param1[2]);
         var count1:int = int(param1[3]);
         if(!Interfaz._le11313(count3,this._ix11826))
         {
            this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaCoco","idPosPerson2 invalid=" + count3));
            return;
         }
         PersonController(this._ix11826.items[count3])._rw12419(count1);
      }
      
      private function _wc4206(param1:Array) : void
      {
         if(!Interfaz._pb10174(param1,2,"InterfaceModule.recTramaTrampa"))
         {
            return;
         }
         var count:int = int(param1[1]);
         if(!Interfaz._le11313(count,this._ix11826))
         {
            this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaTrampa","idPosPerson invalid=" + count));
            return;
         }
         var count3:PersonController = PersonController(this._ix11826.items[count]);
         count3._xj5785();
      }
      
      private function _mi3598(param1:Array) : void
      {
         if(!Interfaz._pb10174(param1,5,"InterfaceModule.recTramaLookAt"))
         {
            return;
         }
         var count:int = int(param1[1]);
         var count3:int = int(param1[2]);
         var count1:int = int(param1[3]);
         var count2:int = int(param1[4]);
         if(!Interfaz._le11313(count,this._ix11826))
         {
            this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaLookAt","idPosPerson invalid=" + count));
            return;
         }
         if(!this._jd12801(count2))
         {
            this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaLookAt","idAction invalid=" + count2));
            return;
         }
         PersonController(this._ix11826.items[count])._cu5001(count2,count3,count1);
      }
      
      private function handleSocket1(param1:Array) : void
      {
         var count:Array = null;
         var count7:int = 0;
         param1.shift();
         while(count7 < param1.length)
         {
            count = SocketManager.getList1(String(param1[count7]));
            if(count.length >= 3)
            {
               var count3:int = int(count[0]) - 1;
               var count1:int = int(count[1]);
               var count2:Boolean = Boolean(int(count[2]));
               this._dc14886._yp15267(0,0,false);
            }
            else
            {
               this.logs._kp3815(new Logs(Logger.count2,"InterfaceModule.recTramaPrecioInteracciones",param1.toString()));
            }
            count7++;
         }
      }
      
      private function _mn16086(param1:Array) : void
      {
         if(!Interfaz._pb10174(param1,4,"InterfaceModule.recTramaChangeHobbie"))
         {
            return;
         }
         var count:int = int(param1[1]);
         var count3:int = int(param1[2]) - 1;
         var count1:String = param1[3];
         if(count == this._dr1773.id)
         {
            return;
         }
         if(!Interfaz._fc7829(count,this._ix11826,"InterfaceModule.recTramaChangeHobbie"))
         {
            return;
         }
         if(count3 < 0 || count3 > 2)
         {
            this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaChangeHobbie","indHobbieChanging invalid=" + count3));
            return;
         }
         var count2:uint = uint(String(param1[0]).charCodeAt(0));
         var count7:PersonController = Interfaz._vh3357(count,this._ix11826);
         switch(count2)
         {
            case SocketManager.count42:
               count7._md8722.hobbies[count3] = count1;
               this._dc14886._bh14714(count,0,count3,count1);
               return;
            case SocketManager.count43:
               count7._md8722.items2[count3] = count1;
               this._dc14886._bh14714(count,1,count3,count1);
               return;
            default:
               return;
         }
      }
      
      private function _nu5164(param1:Array) : void
      {
         if(!Interfaz._pb10174(param1,3,"InterfaceModule.recTramaChangeFrase"))
         {
            return;
         }
         var count:int = int(param1[1]);
         var count3:String = param1[2];
         if(!Interfaz._fc7829(count,this._ix11826,"InterfaceModule.recTramaChangeFrase"))
         {
            return;
         }
         var count1:PersonController = Interfaz._vh3357(count,this._ix11826);
         this._dc14886._jj1638(count1._md8722,count3);
      }
      
      private function _hq15361(param1:Array) : void
      {
         if(!Interfaz._pb10174(param1,2,"InterfaceModule.recTramaAskVotes"))
         {
            return;
         }
         var count:int = int(param1[1]);
         if(count < 0 || count > 5)
         {
            this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaAskVotes","cantVotesRestantes invalid=" + count));
            return;
         }
         this._dr1773._uq11439 = count;
         this._dc14886._va4204();
      }
      
      private function _uj13665(param1:Array) : void
      {
         if(!Interfaz._pb10174(param1,4,"InterfaceModule.recTramaVotar"))
         {
            return;
         }
         var count:int = int(param1[1]);
         var count3:int = int(param1[2]) - 1;
         var count1:int = int(param1[3]);
         if(!Interfaz._fc7829(count,this._ix11826,"InterfaceModule.recTramaVotar"))
         {
            return;
         }
         if(!this._fv15579(count3))
         {
            this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaVotar","cualVote invalid=" + count3));
            return;
         }
         if(!this._nb2585(count1))
         {
            this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaVotar","CantVoteAdd invalid=" + count1));
            return;
         }
         Utils._iq4270((ServiceLocator.get(ResourceManager) as ResourceManager)._ix8228("audioLibrary.swf","VotoSound"));
         var count2:int = this._dc14886._xh2979(count3,count1);
         var count7:PersonController = Interfaz._vh3357(count,this._ix11826);
         count7._vs3267(count2);
         this._dc14886._ft15508(count7._md8722,count3,count1);
      }
      
      private function _kb3546(param1:Array) : void
      {
         var count:DatatypesModel = DatatypesModel._ob13942(param1[2]);
         var count3:int = int(param1[3]);
         var count1:int = int(param1[4]);
         var count2:int = int(param1[5]);
         var count7:DatatypesModel = DatatypesModel._ob13942(param1[6]);
         var items:int = int(param1[7]);
         var count8:int = int(param1[8]);
         var count6:int = int(param1[9]);
         if(count == DatatypesModel._gl13198)
         {
            PersonController(this._ix11826.items[count3])._es4463(count3,items,count1,count2,count8);
         }
         PersonController(this._ix11826.items[items])._yy3392(count3,items,count8,count6,count1);
      }
      
      private function _ym14056(param1:Array) : void
      {
         if(!Interfaz._pb10174(param1,3,"InterfaceModule.recTramaChangeIdPunch"))
         {
            return;
         }
         var count:int = int(param1[1]);
         var count3:int = int(param1[2]);
         this._dc14886._lr7156(count,count3);
      }
      
      private function _xt9844(param1:Array) : void
      {
         if(!Interfaz._pb10174(param1,3,"InterfaceModule.recTramaChangeIdCoco"))
         {
            return;
         }
         var count:int = int(param1[1]);
         var count3:int = int(param1[2]);
         this._dc14886._hu4456(count,count3);
      }
      
      public function _uj10807(param1:Array) : void
      {
         if(!Interfaz._pb10174(param1,2,"InterfaceModule.recTramaTrampaOso"))
         {
            return;
         }
         var count:int = int(param1[1]);
         BaseEscenario(this._bl11315._wy2643)._BaseEscenarioOsoPunch();
         PersonController(this._ix11826.items[count])._sl11959();
      }
      
      private function _gr7773(param1:Array) : void
      {
         if(!Interfaz._pb10174(param1,2,"InterfaceModule.recTramaTimeMonedasPlata"))
         {
            return;
         }
         var count:int = int(param1[1]);
         this.baseChat._ss2843(count);
      }
      
      public function _wh13851(param1:int) : void
      {
         UserSession.getInstance()._dx11054 = UserSession.getInstance()._dx11054 - param1;
         if(this.baseChat != null)
         {
            this.baseChat.move4();
         }
      }
      
      public function _sj6353(param1:int) : void
      {
         UserSession.getInstance()._ea4493 = UserSession.getInstance()._ea4493 - param1;
         if(this.baseChat != null)
         {
            this.baseChat.move5();
         }
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         if(Boolean(Configuration.isEnabled4) && this._ft12581())
         {
            ThunderboltModel.info("-----------autoClickPrevention Active---------");
            return;
         }
         var count2:int = int(this._dr1773.count25);
         var count7:int = param1.stageX - _xw1367.getInstance()._bg14814();
         var items:int = param1.stageY - _xw1367.getInstance()._yn11416();
         var count8:Point = SceneType._bi7400(new Point(count7,items));
         if(count8.x < 0 || count8.x >= this._bl11315.count6 || count8.y < 0 || count8.y >= this._bl11315.count7)
         {
            return;
         }
         if(this._bl11315.matrix[count8.y][count8.x] == 1)
         {
            this._cg12803(count7,items);
            return;
         }
         var count6:int = int(this._bl11315.items[count8.y][count8.x]);
         if(count6 == 0)
         {
            if(!this._rl15912._fv10557(count8.x,count8.y))
            {
               this._mc26(count7,items);
               return;
            }
            var count:Point = PersonController(this._ix11826.items[count2])._md8722._gn15250;
            var count3:Array = this._qh4523._qh4523(null.x,null.y,[new DatatypesModel(0,0,new DatatypesModel(null.x,null.y))],int(count8.x),int(count8.y),this._bl11315);
            this._cg12803(count7,items);
         }
         else if(UtilsUtils._jx14255(UtilsUtils._jq10932,100))
         {
            this._cg12803(count7,items);
            if(this._ix11826.items[count6 - 1000])
            {
               if(this._di15238 != null)
               {
                  this._di15238.isSelected = false;
               }
               this._di15238 = this._ix11826.items[count6 - 1000] as PersonController;
               var count1:PersonAnimation = PersonAnimation(this._di15238._md8722);
               if(!this._di15238._cp3023 && Boolean(this._jb3891._ij10651(null)))
               {
                  return;
               }
               this._dc14886._rl2398(null);
               this._di15238.isSelected = true;
            }
         }
      }
      
      private function _cg12803(param1:int, param2:int) : void
      {
         var count3:Point = null;
         var count1:int = 0;
         if(!this.isEnabled1)
         {
            return;
         }
         if(param1 < 800 && param2 < 600)
         {
            count3 = SceneType._bi7400(new Point(param1,param2));
            if(count3.x >= 0 && count3.x < this._bl11315.count6 && count3.y >= 0 && count3.y < this._bl11315.count7)
            {
               if(PersonController(this._ix11826.items[this._dr1773.count25]) != null && Boolean(PersonController(this._ix11826.items[this._dr1773.count25])._lt4457()))
               {
                  count1 = int(PersonController(this._ix11826.items[this._dr1773.count25])._ip6834(count3));
                  this._dv14621.handleSocket12(this._dr1773.count25,count1);
               }
            }
         }
      }
      
      public function _ag13089() : void
      {
         this.isEnabled1 = false;
      }
      
      public function _gt6454() : void
      {
         this.isEnabled1 = true;
      }
      
      public function _wv5374() : void
      {
         this.isEnabled2 = true;
      }
      
      public function _eo12431() : void
      {
         this.isEnabled2 = false;
      }
      
      public function _ft12581() : Boolean
      {
         var count2:int = int(getTimer());
         ++this.count17;
         ++count;
         ThunderboltModel.info("",count);
         if(count > count7)
         {
            return true;
         }
         if(this.count16 == 0)
         {
            this.count16 = count2;
         }
         if(this.count16 > count2)
         {
            if(this.count17 > count6)
            {
               this.count17 = 1;
               this.count16 = count2 + count5;
               this.isEnabled = true;
               return true;
            }
            if(this.isEnabled)
            {
               return true;
            }
         }
         else
         {
            this.count16 = count2 + 1000;
            this.count17 = 1;
            this.isEnabled = false;
         }
         return false;
      }
      
      public function _mc26(param1:int, param2:int) : void
      {
         this._et15486.x = param1;
         this._et15486.y = param2;
         this._et15486.gotoAndPlay(2);
      }
      
      public function handleSocket2(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621.handleSocket2(param1,count2);
      }
      
      private function _uh13315(param1:Array) : void
      {
         if(!Interfaz._pb10174(param1,5,"InterfaceModule.recTramaTeleport"))
         {
            return;
         }
         var count:int = int(param1[1]);
         var count3:int = int(param1[2]);
         var count1:int = int(param1[3]);
         var count2:int = int(param1[4]);
         var count7:int = int(this._ix11826._mc6491(count));
         if(!Interfaz._le11313(count7,this._ix11826))
         {
            this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaTeleport","idUsuario invalid=" + count));
            return;
         }
         if(!this._jd12801(count2))
         {
            this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaTeleport","idOrientation invalid=" + count2));
            return;
         }
         if(!this._um763(count3,count1))
         {
            this.logs._kp3815(new Logs(Logger.count,"InterfaceModule.recTramaTeleport","gridX, gridY invalid=" + count3 + "," + count1));
            return;
         }
         PersonController(this._ix11826.items[count7])._am12322(count3,count1,count2);
      }
      
      private function _wk10592(param1:int) : Boolean
      {
         if(param1 < 1 || param1 > 20)
         {
            return false;
         }
         return true;
      }
      
      private function _jd12801(param1:int) : Boolean
      {
         if(param1 < 1 || param1 > 8)
         {
            return false;
         }
         return true;
      }
      
      private function _um763(param1:int, param2:int) : Boolean
      {
         if(param1 < 0 || param1 >= this._bl11315.count6 || param2 < 0 || param2 >= this._bl11315.count7)
         {
            return false;
         }
         return true;
      }
      
      private function _fv15579(param1:int) : Boolean
      {
         if(param1 < 0 || param1 > 2)
         {
            return false;
         }
         return true;
      }
      
      private function _nb2585(param1:int) : Boolean
      {
         if(param1 != 1 && param1 != -1)
         {
            return false;
         }
         return true;
      }
      
      public function handleSocket13(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621.handleSocket13(param1,count2);
      }
      
      private function _lb7237() : void
      {
         var count2:PersonController = null;
         var count:String = null;
         var count3:int = int(getTimer());
         for each(count2 in this._ix11826.items)
         {
            if(count2 != null)
            {
               if(count2._md8722.isEnabled1)
               {
                  if(count2.alpha > 0.7)
                  {
                     count2.alpha -= 0.03;
                  }
               }
               else if(count2.alpha < 1)
               {
                  count2.alpha += 0.03;
               }
               else if(count2.alpha != 1)
               {
                  count2.alpha = 1;
               }
               if(count2._md8722.size == 1)
               {
                  if(count2.scaleX < 1.8)
                  {
                     count2.scaleX += 0.03;
                     count2.scaleY = count2.scaleX;
                  }
               }
               else if(count2._md8722.size == -1)
               {
                  if(count2.scaleX > 0.6)
                  {
                     count2.scaleX -= 0.03;
                     count2.scaleY = count2.scaleX;
                  }
               }
               else if(count2.scaleX > 1.05)
               {
                  count2.scaleX -= 0.03;
                  count2.scaleY = count2.scaleX;
               }
               else if(count2.scaleX < 0.95)
               {
                  count2.scaleX += 0.03;
                  count2.scaleY = count2.scaleX;
               }
               else if(count2.scaleX != 1)
               {
                  var _temp_1:* = count2;
                  count2.scaleY = 1;
                  _temp_1.scaleX = 1;
               }
               if(count2._cp3023 && count2._md8722._iu4082)
               {
                  if(count2._md8722.count13 + count14 * 1000 <= count3)
                  {
                     count2._md8722._iu4082 = false;
                  }
                  else if(count2._md8722.count12 + count13 * 1000 <= count3)
                  {
                     count2._md8722.count12 = count3;
                     if(this.baseChat._fx14191.items2.length > 0)
                     {
                        count = this.baseChat._fx14191.items2[int(Math.random() * this.baseChat._fx14191.items2.length)];
                        count = count.replace("-USER-",UserSession.getInstance().name);
                        this._dv14621._dt13215(UserSession.getInstance().count25,count,Basechat.count4);
                     }
                  }
               }
            }
         }
      }
      
      public function _pg15744() : PersonAnimation
      {
         return this._dc14886._ia2579();
      }
      
      public function _yp6754() : PersonBase
      {
         return this._ix11826;
      }
      
      public function get _va7385() : Boolean
      {
         return this.isEnabled3;
      }
      
      public function handleSocket18(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621.handleSocket18(param1,count2);
      }
      
      public function _v90393(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621._v90393(param1,count2);
      }
      
      public function _vl9390(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621._vl9390(param1,count2);
      }
      
      public function _hv9394(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621._hv9394(param1,count2);
      }
      
      public function _gp3838(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621._gp3838(param1,count2);
      }
      
      public function handleSocket24(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621.handleSocket24(param1,count2);
      }
      
      public function _hp01034(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621._hp01034(param1,count2);
      }
      
      public function _hp3757(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621._hp3757(param1,count2);
      }
      
      public function _hp3823(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621._hp3823(param1,count2);
      }
      
      public function _hp3434(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621._hp3434(param1,count2);
      }
      
      public function _hp3850(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621._hp3850(param1,count2);
      }
      
      public function _hp3857(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621._hp3857(param1,count2);
      }
      
      public function handleSocket22(param1:int, param2:Array) : void
      {
         var count3:String = null;
         var count7:int = 0;
         if(!this.isEnabled2)
         {
            return;
         }
         var count1:int = int(param2.length);
         var count2:* = "";
         while(count7 < count1)
         {
            count3 = String(param2[count7]);
            if(param2[count7] < 10 && count7 % 3 != 2)
            {
               count3 = "0" + count3;
            }
            count2 += count3;
            count7++;
         }
         this._dv14621.handleSocket22(param1,count2);
      }
      
      public function set _va7385(param1:Boolean) : void
      {
         this.isEnabled3 = param1;
      }
   }
}

