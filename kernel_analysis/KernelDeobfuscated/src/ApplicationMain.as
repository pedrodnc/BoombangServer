package src
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import src.allData.*;
   import src.allData.catObjects.*;
   import src.allData.mochila.*;
   import src.allData.scene.*;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.*;
   import src.config.*;
   import src.loaders.*;
   import src.logs.*;
   import src.modules.ModuleLoader;
   import src.modules.antitimos.*;
   import src.modules.baneos.*;
   import src.modules.banners.*;
   import src.modules.bpad.*;
   import src.modules.chooseIsla.*;
   import src.modules.chooseScene.*;
   import src.modules.clickBlock.*;
   import src.modules.concursos.*;
   import src.modules.creacionObjetos.*;
   import src.modules.creacionObjetos.formulas.*;
   import src.modules.creditos.*;
   import src.modules.crypto.*;
   import src.modules.enterScene.*;
   import src.modules.estadoPociones.*;
   import src.modules.interfaz.*;
   import src.modules.irAlli.*;
   import src.modules.login.*;
   import src.modules.login.choosePerson.*;
   import src.modules.member.*;
   import src.modules.multiplayerGames.*;
   import src.modules.myHomeMultiuser.*;
   import src.modules.notificaciones.*;
   import src.modules.npc.*;
   import src.modules.npc.typeNpc.*;
   import src.modules.objetos.*;
   import src.modules.privados.creacion.*;
   import src.modules.report.*;
   import src.modules.singleplayerGames.Singleplayergames;
   import src.modules.ticketManager.*;
   import src.multiuser.*;
   import src.person.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.application.singlePlayerGames.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.application.tutorial.*;
   import src.tv.boombang.application.tutorial.gui.*;
   import src.tv.boombang.commons.utils.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.popup.*;
   import src.utils.*;
   import src.utils.boombang.*;
   import src.utils.boombang.TakePhoto.*;
   
   public class ApplicationMain extends _yn5945
   {
      
      private static var _instance:ApplicationMain;
      
      public static const count:int = 1;
      
      public static const count1:int = 9;
      
      public static const count2:int = 10;
      
      public static const count3:int = 11;
      
      public static const count4:int = 12;
      
      public static const count5:int = 13;
      
      public static const count6:int = 14;
      
      public static const count7:int = 15;
      
      public static const count8:int = 18;
      
      public static const count9:int = 19;
      
      public static const count10:int = 20;
      
      public static const count11:int = 21;
      
      public static const count12:int = 22;
      
      public static const count13:int = 23;
      
      public static const count14:int = 24;
      
      public static const count15:int = 25;
      
      public static const count16:int = 27;
      
      public static const count17:int = 28;
      
      public static const count18:int = 29;
      
      public static const count19:int = 30;
      
      public static const count20:int = 31;
      
      public static const count21:int = 32;
      
      public static const count22:int = 33;
      
      public static const count23:int = 34;
      
      public static const count24:int = 35;
      
      public static const count25:int = 36;
      
      public static const count26:int = 37;
      
      public static const count27:int = 38;
      
      public static const count28:int = 39;
      
      public static const count29:int = 40;
      
      public static const count30:int = 41;
      
      public static const count31:int = 42;
      
      public static const count32:int = 43;
      
      public static const count33:int = 44;
      
      public static const count34:int = 45;
      
      public static const count35:int = 46;
      
      public static const count36:int = 47;
      
      public static const count37:int = 50;
      
      public static const count38:int = 54;
      
      public static const count39:int = 59;
      
      public static const count40:int = 60;
      
      private static const count41:int = 0;
      
      private static const count42:int = 1;
      
      private static const count43:int = 2;
      
      private static const count44:int = 3;
      
      private static const count45:int = 4;
      
      private static const count46:int = 5;
      
      private static const count47:int = 6;
      
      private static const count48:int = 7;
      
      private static const count49:int = 8;
      
      private static const count50:int = 9;
      
      private static const count51:int = 10;
      
      private static const count52:int = 11;
      
      private static const count53:int = 15;
      
      private static const count54:int = 99;
      
      private static const count55:int = 1;
      
      private static const count56:int = 2;
      
      private static const count57:int = 3;
      
      private static const count58:int = 4;
      
      private static const count59:int = 6;
      
      private var items:Array;
      
      private var count60:int;
      
      private var _em1533:LoadersManager;
      
      private var logs:Logger;
      
      private var _bn15829:_xw1367;
      
      private var _yy15308:PersonModel;
      
      private var _packetsEvent:PacketEventHandler;
      
      private var _dr1773:UserSession;
      
      private var enterScene:SceneTransition;
      
      private var _uw7821:SceneManager;
      
      private var catalogo:CatalogObject;
      
      private var isEnabled:Boolean;
      
      private var _rj4051:TakePhoto;
      
      private var _fj5932:LoginEvents;
      
      private var _fx11460:CreacionobjetosController;
      
      private var _ec3748:ReportController;
      
      public var _fy119:CreditosController;
      
      private var _jm6211:ConcursosController;
      
      private var _jm3064:ObjetosController;
      
      public var _ym12228:LoginModule;
      
      public var _lp469:InterfazManager;
      
      public var chooseScene:ChoosesceneModel;
      
      private var _bx8167:ChooseislaController;
      
      private var _pj9483:LoadersModel;
      
      private var _jb3891:BPadController;
      
      private var _ab10998:CreacionModel;
      
      private var choosePerson:ChoosepersonModel;
      
      private var irAlli:IralliController;
      
      private var _iu1259:MultiplayerLobby;
      
      private var _tv9779:MultiplayergamesController;
      
      private var _ut4147:NavigationmenuModel;
      
      private var _xe10392:MemberController;
      
      private var _tl7614:NotificacionesController;
      
      private var count61:int;
      
      public var isEnabled1:Boolean;
      
      public var isEnabled2:Boolean;
      
      private var _by9792:MovieClip;
      
      private var _ca5616:MovieClip;
      
      private var _cameraToggleState:Boolean = true;
      
      private var _ky12258:MovieClip;
      
      public var _pg6507:MovieClip;
      
      private var _vx12796:MovieClip;
      
      private var _fl1604:MovieClip;
      
      private var _uy10443:MovieClip;
      
      public var _hd5784:MovieClip;
      
      public var _ex5376:MovieClip;
      
      public var _lb8371:MovieClip;
      
      private var _xq15076:MovieClip;
      
      private var count62:int;
      
      private var _ss5964:MovieClip;
      
      private var isEnabled3:Boolean;
      
      private var isEnabled4:Boolean;
      
      private var isEnabled5:Boolean;
      
      private var isEnabled6:Boolean;
      
      private var _lg13977:MovieClip;
      
      private var _xm10115:XML;
      
      private var _fg10394:MovieClip;
      
      private var _qv3904:Singleplayergames;
      
      private var _xd14787:PotionStateManager;
      
      private var _tl9155:CreditsManager;
      
      private var _au5106:BaneosModel;
      
      private var items1:Array;
      
      private var items1:Array;
      
      private var items2:Array;
      
      private var items1:Array;
      
      private var _hu14438:MyhomemultiuserModel;
      
      private var _kq11856:NPCController;
      
      private var _ov13431:NpcController;
      
      private var _jf15648:CommunicationsModel;
      
      private var count2:int;
      
      private var count1:uint;
      
      private var isEnabled7:Boolean = false;
      
      private var _ee6137:SinglePlayerGameController;
      
      private var _al10771:BannerManager;
      
      public function ApplicationMain(param1:ResourceLoader)
      {
         _instance = this;
         this._al10771 = new BannerManager();
         super(param1);
      }
      
      public static function getInstance() : ApplicationMain
      {
         return _instance;
      }
      
      override protected function handleSocket() : void
      {
         if(!Configuration.isEnabled2 && RuntimeParams._bc4854 != "0")
         {
            return;
         }
         this.enterScene = new SceneTransition(this._nu8689);
         this._xd14787 = new PotionStateManager();
         this._dr1773 = UserSession.getInstance();
         this._oj836();
         if(this._dr1773._wb8182())
         {
            if(DisplayUtils._ps6769() != null)
            {
               try
               {
                  DisplayUtils._ps6769().scaleMode = StageScaleMode.EXACT_FIT;
               }
               catch(e:Error)
               {
               }
            }
         }
         this._em1533 = LoadersManager.getInstance();
         this._bn15829 = _xw1367.getInstance();
         this.catalogo = CatalogObject.getInstance();
         this.logs = Logger.getInstance();
         this._yy15308 = PersonModel.getInstance();
         this._yy15308._lj15889();
         this._fj5932 = new LoginEvents();
         this._fy119 = new CreditosController();
         this._jm3064 = new ObjetosController();
         this._ec3748 = new ReportController();
         this.irAlli = new IralliController();
         this._tv9779 = new MultiplayergamesController();
         this._fx11460 = new CreacionobjetosController();
         this._hu14438 = new MyhomemultiuserModel();
         this._ov13431 = new NpcController();
         this._packetsEventsInit();
         this._da1945();
         FormulasModel.getInstance()._mo8489(this._fx11460);
         this.irAlli.addEventListener(NavigationManager.textString,this.handleSocket1);
         this.enterScene.addEventListener(IslandChooser.textString3,this._lv2274);
         MochilaModel.getInstance().init(this._jm3064);
         addChild(this._bn15829);
         this._ss5964 = new MovieClip();
         this._ss5964.graphics.beginFill(16777215,1);
         this._ss5964.graphics.drawRect(0,0,Configuration.count2,Configuration.count3);
         this._ss5964.graphics.endFill();
         this._tl9155 = new CreditsManager(this);
         this._au5106 = new BaneosModel(this);
         this._jf15648 = new CommunicationsModel();
         this._em1533._lm5662 = new LoadersManager(_wp11097._wi8846);
         this._dr1773._ds9725 = _wp11097._ks4561;
         this._em1533.loadResource2(_wp11097.fileList);
         this._pj9483 = new LoadersModel();
         this._em1533._lm5662._sr16022(this._pj9483);
         this._by9792 = _wp11097._kn9534;
         this._ca5616 = _wp11097._to10749;
         this._xq15076 = _wp11097._qd5782;
         this._em1533._lm5662.hide();
         this._em1533._lm5662._bl5830 = 2;
         this._em1533._lm5662.hide();
         this._em1533._lm5662.show();
         this._em1533._lm5662.texto = this._pj9483._eq8273;
         this.items = ["notifications.xml","ledScreenLibrary.swf","audioLibrary.swf","PersonajeCayendo01.swf","paneles_notificaciones.swf","fichaAvisoGames.swf","FichaAvisoBB.swf","personsResources.swf","b-pad.swf","userSetupMenu.swf","levelup.swf","videoAdBackground.swf","fichaBienvenido.swf","fichaPrepagos.swf","fichaMarketingViral.swf","fichaBaneo.swf","fichaRecuperarCuenta.swf","FichaMember.swf","FichaNoticias.swf","fichaUnderAgeCreation.swf","cajaRegalo.swf","marikita.swf","foreGround.swf","backGround.swf","flor.swf","fichaDialogoBicho.swf","barraInferior.swf","concursosFP.swf"];
         this.items = this.items.concat(this._yy15308._uv13194());
         this.items = this.items.concat(this._yy15308._tv8667());
         super.handleSocket();
      }
      
      override protected function authenticateUser(param1:Event) : void
      {
         super.authenticateUser(param1);
         DatatypesModel._xt5593.initialize();
         this._ym12228 = new LoginModule(this,this._fj5932);
         this._ym12228.authenticateUser(this._by9792,this._ca5616);
         count = count3;
         dispatchEvent(new Event("onApplicationComplete"));
         this._by9792 = null;
         this._au5106._gk13209();
      }
      
      public function get _cu12135() : SceneTransition
      {
         return this.enterScene;
      }
      
      public function get _wb13942() : TakePhoto
      {
         return this._rj4051;
      }
      
      public function _yp14922() : void
      {
         ExternalInterface.call("console.log","Toggle camera called");
         if(this._rj4051 != null)
         {
            ExternalInterface.call("console.log","TakePhoto instance exists, visible: " + this._rj4051.isVisible());
            if(this._rj4051.isVisible())
            {
               ExternalInterface.call("console.log","Hiding camera");
               this._rj4051.authenticateUser2();
               this._cameraToggleState = false;
            }
            else
            {
               ExternalInterface.call("console.log","Showing camera");
               this._rj4051.show();
               this._cameraToggleState = true;
            }
         }
         else
         {
            ExternalInterface.call("console.log","TakePhoto instance is NULL!");
         }
      }
      
      private function _oj836() : void
      {
         this._dr1773._ry9019 = RuntimeParams._ry9019;
         this._dr1773._dk13651 = RuntimeParams._dk13651;
         this._dr1773._qq2512 = RuntimeParams._qq2512;
         this._dr1773._qw1539 = RuntimeParams._qw1539;
         this._dr1773._bc4854 = RuntimeParams._bc4854;
         if(Configuration.isEnabled2)
         {
            BoombangUtils._jc12790(RuntimeParams._nc939);
         }
      }
      
      private function initialize() : void
      {
         CoreModel._oq4061.init();
         this._ky12258 = (ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("PersonajeCayendo01.swf",true);
         this._vx12796 = (ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("b-pad.swf",true);
         this._hd5784 = (ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("fichaAvisoGames.swf",true);
         this._ex5376 = (ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("FichaAvisoBB.swf",true);
         this._lb8371 = (ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("paneles_notificaciones.swf",true);
         this.items1 = new Array();
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("fichaBienvenido.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("fichaPrepagos.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("fichaMarketingViral.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("fichaBaneo.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("fichaRecuperarCuenta.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("FichaMember.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("FichaNoticias.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("fichaUnderAgeCreation.swf"));
         this.items1 = new Array();
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("backGround.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("flor.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("foreGround.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("marikita.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("fichaDialogoBicho.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("barraInferior.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("cajaRegalo.swf"));
         this.items1.push((ServiceLocator.get(ResourceManager) as ResourceManager)._if2642("concursosFP.swf"));
         PersonData.getInstance().init();
         this.isEnabled7 = true;
      }
      
      override protected function authenticateUser1(param1:Event) : void
      {
         var count:int = 0;
         var count3:XML = null;
         var count1:MovieClip = null;
         var count2:int = 0;
         var count7:Array = null;
         var items:Array = null;
         var count8:int = 0;
         var count6:int = 0;
         var count:int = 0;
         var count10:MovieClip = null;
         var textString12:MovieClip = null;
         var isEnabled:LoginProtocol = null;
         var textString14:String = null;
         var count16:Array = null;
         var count17:String = null;
         var count18:int = 0;
         var count19:int = 0;
         var count20:MovieClip = null;
         var count21:int = 0;
         var count22:Array = null;
         var count23:int = 0;
         var count24:MovieClip = null;
         var textString9:MovieClip = null;
         var textString10:SceneObjectManager = null;
         UtilsUtils._po13517();
         if(this._au5106 != null)
         {
            this._au5106._do13190();
         }
         switch(count)
         {
            case count7:
               this.enterScene.loop();
               this._bn15829.loop();
               this._tl7614._in4867();
               if(this._lp469 != null)
               {
                  this._lp469.loop();
               }
               if(this._kq11856)
               {
                  this._kq11856.loop();
               }
               textString10 = SceneObjectManager.getInstance();
               if(textString10 != null)
               {
                  try
                  {
                     textString10.loop();
                  }
                  catch(error:Error)
                  {
                  }
               }
               if(this._iu1259 != null)
               {
                  this._iu1259.loop();
               }
               if(this.count61 >= 0)
               {
                  --this.count61;
                  if(this.count61 <= 0)
                  {
                     this._em1533._lm5662.hide();
                     this.count61 = -1;
                     if(this._lp469 != null)
                     {
                        this._lp469._ww1376();
                     }
                     if(Configuration.isEnabled1)
                     {
                        this._rj4051.start();
                        if(this._cameraToggleState)
                        {
                           this._rj4051.show();
                        }
                        this._rj4051._iw5858(this.enterScene);
                     }
                  }
               }
               this._im5753();
               return;
            case count8:
               GaUtils.start(GaUtils.textString);
               (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029(this.items,this.initialize);
               this._em1533._lm5662.show();
               this._em1533._lm5662.show();
               this._em1533._lm5662.texto = this._pj9483._vf11493;
               count = count4;
               return;
            case count4:
               if(this.isEnabled7)
               {
                  GaUtils.finish(GaUtils.textString);
                  this._nb513();
                  ClickblockModel._oa11569(this._ex5376);
                  if(BaneosModel._xf13820())
                  {
                     count = count33;
                  }
                  else
                  {
                     count = count16;
                  }
               }
               else
               {
                  count6 = 0;
                  count = int(this.items.length);
                  count2 = 0;
                  while(count2 < count)
                  {
                     if((ServiceLocator.get(ResourceManager) as ResourceManager).hasPermission(this.items[count2]))
                     {
                        count6++;
                     }
                     count2++;
                  }
                  this._em1533._lm5662._fn7388 = count6 * 100 / count;
               }
               return;
            case count3:
               this._ym12228.loop();
               this._ym12228._iw15114();
               this.isEnabled2 = false;
               this._ym12228.authenticateUser7();
               return;
            case count26:
               this._em1533._lm5662.show();
               this._em1533.loadResource1();
               this._em1533._bi8517(this._pj9483._xj8479);
               this._em1533.addElement(AssetLoader.textString101);
               this._em1533.addElement(AssetLoader.textString69);
               this._em1533.start();
               count = count27;
               return;
            case count27:
               if(this._em1533._tg7298())
               {
                  this._em1533._lm5662.hide();
                  count10 = MovieClip(this._em1533._xb9567(AssetLoader.textString101));
                  textString12 = MovieClip(this._em1533._xb9567(AssetLoader.textString69));
                  this._em1533._lm5662._wp11718(textString12);
                  this._py267(count10);
                  count = count28;
               }
               return;
            case count28:
               if(this.choosePerson._al1166())
               {
                  count = count29;
                  this.count62 = 0;
                  this._ss5964.alpha = 0;
                  this._bn15829._uc3178(this._ss5964,_xw1367.count8);
               }
               return;
            case count29:
               ++this.count62;
               count7 = [0,0.25,0.5,0.75,1];
               switch(this.count62)
               {
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                     this._ss5964.alpha = count7[this.count62];
                     break;
                  case 5:
                     this.count62 = 0;
                     ClickblockModel.move();
                     switch(ChoosepersonModel._qx15566())
                     {
                        case ChoosepersonModel._dm13327:
                           this.isEnabled2 = true;
                           this.isEnabled1 = false;
                        case ChoosepersonModel._od861:
                           addEventListener(Event.ENTER_FRAME,this.move1);
                           this._em1533._lm5662._bl5830 = LoadersManager._ud4331;
                           count = count8;
                           break;
                        case ChoosepersonModel._mf5749:
                        case ChoosepersonModel._fd12447:
                           this._dr1773.count1 = this.choosePerson._qm8597();
                           this._dr1773.colors = this.choosePerson._ca15733();
                           isEnabled = new LoginProtocol();
                           isEnabled.init();
                           isEnabled.handleSocket2(this._dr1773.colors,this._dr1773.count1);
                           isEnabled.destroy();
                           count = count30;
                     }
                     this._cg4768();
               }
               return;
            case count16:
               this._iv5796();
               this._du14982(this._ky12258);
               if(this.isEnabled1)
               {
                  this.chooseScene._ep5216(ChoosesceneModel.count29);
                  count = count32;
               }
               else if(this.isEnabled2)
               {
                  this.chooseScene._ep5216(ChoosesceneModel.count34);
                  count = count32;
               }
               else
               {
                  this.chooseScene._ep5216(ChoosesceneModel.count27);
                  count = count32;
                  this.chooseScene.initialize();
               }
               return;
            case count32:
               if(this.chooseScene._vo2826())
               {
                  count = count20;
                  this.count60 = count47;
               }
               else if(this.isEnabled2)
               {
                  this._em1533._lm5662.hide();
               }
               return;
            case count31:
               BoombangModel.attack(BoombangModel.textString3,"");
               this.chooseScene._ud2033();
               count = count5;
               return;
            case count5:
               this._em1533._lm5662.hide();
               this._tl7614._in4867();
               this.chooseScene.loop();
               count = this.chooseScene.textString7;
               switch(count)
               {
                  case ChoosesceneModel.count20:
                     count = count6;
                     this.count60 = count55;
                     this.chooseScene.textString7 = ChoosesceneModel.count25;
                     this._sr10092();
                     break;
                  case ChoosesceneModel.count21:
                     count = count10;
                     this.chooseScene.textString7 = ChoosesceneModel.count25;
                     this._sr10092();
                     break;
                  case ChoosesceneModel.count22:
                     count = count14;
                     this.chooseScene.textString7 = ChoosesceneModel.count25;
                     this._sr10092();
                     break;
                  case ChoosesceneModel.count23:
                  case ChoosesceneModel.count24:
                     this._jb3891.authenticateUser2();
                     count = count26;
                     switch(count)
                     {
                        case ChoosesceneModel.count23:
                           ChoosepersonModel._vt12942(ChoosepersonModel._mf5749);
                           break;
                        case ChoosesceneModel.count24:
                           ChoosepersonModel._vt12942(ChoosepersonModel._fd12447);
                     }
                     this.chooseScene.textString7 = ChoosesceneModel.count25;
                     this._sr10092();
               }
               return;
            case count9:
               this._du14982(this._ky12258);
               this.chooseScene._np14165(ChoosesceneModel.count28);
               count = count31;
               return;
            case count30:
               ++this.count62;
               items = [1,0.75,0.5,0.25,0];
               switch(this.count62)
               {
                  case 1:
                     this._du14982(this._ky12258);
                     this.chooseScene._np14165(ChoosesceneModel.count32);
                     this._ss5964.alpha = items[this.count62];
                     break;
                  case 2:
                  case 3:
                  case 4:
                     this._ss5964.alpha = items[this.count62];
                     break;
                  case 5:
                     this._bn15829.move2(this._ss5964,_xw1367.count8);
                     count = count31;
               }
               return;
            case count10:
               this._pw3760();
               this._bx8167.destroy(ChooseislaController._yt7211);
               this._bx8167.handleSocket(ChooseislaController._yw12985);
               count = count11;
               return;
            case count11:
               if(this._bx8167._vb10246)
               {
                  this._gj2216();
                  count = count9;
               }
               else if(this._bx8167._cq15352() != null)
               {
                  ClickblockModel._og12356();
                  this._em1533._lm5662.show();
                  textString14 = String(this._bx8167._cq15352()._mi6774);
                  this._em1533.loadResource1();
                  this._em1533._bi8517(this._pj9483._wf2344);
                  this._em1533.addElements([AssetLoader.textString81,AssetLoader.textString94,AssetLoader.textString91,AssetLoader.textString83 + textString14]);
                  this._em1533.start();
                  count = count12;
               }
               return;
            case count12:
               if(this._em1533._tg7298())
               {
                  count16 = new Array();
                  count17 = String(this._bx8167._cq15352()._mi6774);
                  count16[0] = MovieClip(this._em1533._xb9567(AssetLoader.textString81));
                  count16[1] = MovieClip(this._em1533._xb9567(AssetLoader.textString94));
                  count16[2] = MovieClip(this._em1533._xb9567(AssetLoader.textString91));
                  count16[3] = MovieClip(this._em1533._xb9567(AssetLoader.textString83 + count17));
                  this._em1533.loadResource1();
                  if(this._bx8167._hp11587._hn7664.id == this._dr1773.id || this._dr1773.count10 >= 13)
                  {
                     this._bx8167.destroy(ChooseislaController._ew2582);
                  }
                  this._em1533._lm5662.hide();
                  this._bx8167.init(count16);
                  count = count13;
               }
               return;
            case count13:
               this._bx8167.loop();
               count = int(this._bx8167.textString7);
               switch(count)
               {
                  case ChooseislaController._yw14660:
                     count = count6;
                     this.count60 = count55;
                     this._gj2216();
                     break;
                  case ChooseislaController.count1:
                     count = count9;
                     this._gj2216();
                     break;
                  case ChooseislaController._ub13729:
                     count18 = int(this._bx8167._hp11587.id);
                     count19 = this._bx8167._hp11587._mi6774 - 1;
                     this._ru8037(count18,count19);
                     count = count22;
                     this._gj2216();
               }
               return;
            case count22:
               this._em1533._lm5662.show();
               this._em1533.loadResource1();
               this._em1533._bi8517(this._pj9483._uf4952);
               this._em1533.addElements([AssetLoader.textString115 + this._ab10998._gs15685() + AssetLoader.textString116,AssetLoader.textString115 + this._ab10998._gs15685(),AssetLoader.textString82,AssetLoader.textString94]);
               this._em1533.start();
               count = count23;
               return;
            case count23:
               if(this._em1533._tg7298())
               {
                  count3 = new XML(this._em1533._xb9567(AssetLoader.textString115 + this._ab10998._gs15685() + AssetLoader.textString116));
                  count1 = MovieClip(this._em1533._xb9567(AssetLoader.textString115 + this._ab10998._gs15685()));
                  count20 = MovieClip(this._em1533._xb9567(AssetLoader.textString82));
                  this._fl1604 = MovieClip(this._em1533._xb9567(AssetLoader.textString94));
                  this._em1533.loadResource1();
                  this._em1533._lm5662.hide();
                  this._ab10998.init(count1,count3,count20,this._fl1604);
                  this._ab10998.show();
                  count = count24;
               }
               return;
            case count24:
               count8 = int(this._ab10998._eb3669());
               switch(count8)
               {
                  case CreacionModel._jj9523:
                     this._em1533.loadResource1();
                     this._em1533._bi8517(this._pj9483._uf4952);
                     this._em1533.addElement(AssetLoader.textString115 + this._ab10998._gs15685() + AssetLoader.textString116);
                     this._em1533.addElement(AssetLoader.textString115 + this._ab10998._gs15685());
                     this._em1533.start();
                     count = count25;
                     break;
                  case CreacionModel._ac2046:
                     this._hg14456();
                     count = count10;
                     break;
                  case CreacionModel._lv3702:
                     this._ut4147 = this._ab10998._ol8098();
                     this.enterScene.addEventListener(IslandChooser.textString1,this.stop);
                     if(TicketmanagerController._xm12587(TicketmanagerController.textString7))
                     {
                        this.enterScene.handleSocket1(this._ut4147,"");
                     }
                     this._hg14456();
                     this._jb3891.show();
                     count = count38;
                     break;
                  case CreacionModel._ko10718:
                     this._hg14456();
                     count = count10;
                     break;
                  default:
                     if(this._ab10998 != null)
                     {
                        this._ab10998.loop();
                     }
               }
               return;
            case count38:
               return;
            case count25:
               if(this._em1533._tg7298())
               {
                  count3 = new XML(this._em1533._xb9567(AssetLoader.textString115 + this._ab10998._gs15685() + AssetLoader.textString116));
                  count1 = MovieClip(this._em1533._xb9567(AssetLoader.textString115 + this._ab10998._gs15685()));
                  this._em1533.loadResource1();
                  this._ab10998._gj5619(count1,count3);
                  count = count24;
               }
               return;
            case count14:
               this._em1533._lm5662.show();
               this._pw3760();
               this._bx8167.destroy(ChooseislaController._ui9633);
               this._em1533.loadResource1();
               this._em1533._bi8517(this._pj9483._wf2344);
               this._em1533.addElements([AssetLoader.textString81,AssetLoader.textString94,AssetLoader.textString91]);
               count21 = 1;
               while(count21 <= CreacionModel._cj6252)
               {
                  this._em1533.addElement(AssetLoader.textString83 + count21);
                  count21++;
               }
               this._em1533.start();
               count = count15;
               return;
            case count15:
               if(this._em1533._tg7298())
               {
                  count22 = new Array();
                  count22[0] = MovieClip(this._em1533._xb9567(AssetLoader.textString81));
                  count22[1] = MovieClip(this._em1533._xb9567(AssetLoader.textString94));
                  count22[2] = MovieClip(this._em1533._xb9567(AssetLoader.textString91));
                  count23 = 1;
                  while(count23 <= CreacionModel._cj6252)
                  {
                     count22[count23 + 3 - 1] = MovieClip(this._em1533._xb9567(AssetLoader.textString83 + count23));
                     count23++;
                  }
                  this._em1533.loadResource1();
                  this._em1533._lm5662.hide();
                  this._bx8167.init(count22);
                  count = count13;
               }
               return;
            case count6:
               ClickblockModel.move();
               this._em1533._lm5662.show();
               switch(this.count60)
               {
                  case count55:
                     this._ut4147 = this.enterScene._nr6929;
                     this._uw7821 = new SceneManager();
                     this._uw7821.loadResource1(this._ut4147._ls5877.id,this._ut4147._fq658,this._pj9483._ef7073);
                     this.count60 = count56;
                     break;
                  case count56:
                     if(this._uw7821.loadResource2())
                     {
                        this._ut4147 = this.enterScene._nr6929;
                        count3 = new XML(this._em1533._xb9567(SceneTypePublic.loadResource(this._ut4147._ls5877.id) + this._ut4147._fq658 + SceneTypePublic.loadResource1(this._ut4147._ls5877.id)));
                        count1 = MovieClip(this._em1533._xb9567(SceneTypePublic.loadResource(this._ut4147._ls5877.id) + this._ut4147._fq658));
                        this.enterScene._bc1342(count1,count3);
                        if(Configuration.isEnabled1)
                        {
                           textString9 = this._em1533._xb9567(AssetLoader.textString78) as MovieClip;
                           if((Boolean(textString9)) && this._rj4051 == null)
                           {
                              this._rj4051 = new TakePhoto(textString9);
                              textString9 = null;
                           }
                        }
                        count24 = MovieClip(this._em1533._xb9567(AssetLoader.textString93));
                        this.catalogo._ge8646(count24);
                        this.count60 = count35;
                     }
                     break;
                  case count35:
                     this.count60 = count57;
                     break;
                  case count36:
                     this._al10771.update();
                     break;
                  case count57:
                     this.enterScene._cp359();
                     (ServiceLocator.get(ServiceManager) as ServiceManager).loadResource("area" + "?area_type=" + this.enterScene._nr6929._ls5877.id + "&channel_type=" + this.enterScene._nr6929.count2.id + "&zone_id=" + this.enterScene._nr6929._vn12441 + "&location_id=" + this.enterScene._nr6929._un6586 + "&channel_id=" + this.enterScene._nr6929._eb11619 + "&stage_id=" + this.enterScene._nr6929._fq658);
                     this.count60 = count58;
                     break;
                  case count58:
                     switch(this.enterScene._yd13621())
                     {
                        case SceneTransition.count1:
                           count = count7;
                           break;
                        case SceneTransition.count2:
                           switch(this.enterScene._nr6929._ls5877)
                           {
                              case NavigationmenuModel._io5446:
                              case NavigationmenuModel._dd9260:
                              case NavigationmenuModel._lk15055:
                                 count = count9;
                                 break;
                              case NavigationmenuModel._jn8033:
                              case NavigationmenuModel._uq6151:
                                 ChooseislaController._yw12985 = this.enterScene._nr6929._vn12441;
                                 count = count10;
                           }
                           this._em1533._lm5662.hide();
                     }
               }
               return;
            case count39:
               if(this.enterScene._ol8854())
               {
                  count = count40;
                  this._ee6137 = new SinglePlayerGameController();
                  this._ee6137.addEventListener(SinglePlayerGameController.textString,this.move4);
               }
               return;
            case count40:
               return;
            case count17:
               if(this.isEnabled == true && Boolean(this.enterScene._ol8854()) || this.isEnabled == false)
               {
                  switch(this.enterScene._nr6929._ls5877)
                  {
                     case NavigationmenuModel._io5446:
                     case NavigationmenuModel._dd9260:
                     case NavigationmenuModel._lk15055:
                     case NavigationmenuModel._jn8033:
                        count = count9;
                        break;
                     case NavigationmenuModel._uq6151:
                        ChooseislaController._yw12985 = this.enterScene._nr6929._vn12441;
                        count = count10;
                  }
               }
               return;
            case count21:
               if(this.enterScene._ol8854())
               {
                  count = count6;
                  this.count60 = count55;
               }
               return;
            case count20:
               switch(this.count60)
               {
                  case count47:
                     if(!this._dr1773._vj6555)
                     {
                        this.count60 = count48;
                        this._jb3891.init(this._vx12796);
                        break;
                     }
                     this.count60 = count54;
                     break;
                  case count48:
                     if(this._jb3891._jt10849)
                     {
                        this.count60 = count41;
                     }
                     break;
                  case count41:
                     this.count60 = count42;
                     this._jm6211 = new ConcursosController();
                     this._jm6211.init();
                     this._jm6211.addEventListener(ConcursosEvents.textString,this.authenticateUser2);
                     this._jm6211.authenticateUser1();
                     break;
                  case count42:
                     if(this.isEnabled3)
                     {
                        this.count60 = count43;
                     }
                     break;
                  case count43:
                     this.count60 = count44;
                     this._jm3064.addEventListener(ObjetosEvents.textString,this.move1);
                     this._jm3064.handleSocket2();
                     break;
                  case count44:
                     if(this.isEnabled4)
                     {
                        this.count60 = count45;
                     }
                     break;
                  case count45:
                     this.count60 = count46;
                     this._jm3064.addEventListener(ObjetosEvents.textString,this.move1);
                     this._jm3064.handleSocket3();
                     break;
                  case count46:
                     if(this.isEnabled5)
                     {
                        this.count60 = count51;
                     }
                     break;
                  case count51:
                     this.chooseScene.authenticateUser2();
                     this.count60 = count52;
                     break;
                  case count52:
                     if(SceneTypePrivate._sl16071())
                     {
                        this.count60 = count54;
                     }
                     break;
                  case count54:
                     this._dr1773._vj6555 = true;
                     this.chooseScene._wt9529();
                     ClickblockModel.move();
                     this._tl9155.init();
                     count = count31;
               }
               return;
            case count33:
               this._em1533._lm5662.hide();
               this._sr10092();
               this._du14982(this._ky12258);
               this.chooseScene._ep5216(ChoosesceneModel.count31);
               this.chooseScene._mo5919(this._au5106.textString10,this._au5106.items);
               this._tl7614._bv5027();
               PopUpManager.removeAll();
               count = count34;
               return;
            case count34:
               return;
            default:
               return;
         }
      }
      
      private function move(param1:Event) : void
      {
         this._al10771.removeEventListener(BannerManager.urlString,this.move);
         this._al10771.destroy();
         this.count60 = count57;
      }
      
      private function move1(param1:Event) : void
      {
         ++this.count62;
         var count:Array = [1,0.75,0.5,0.25,0];
         switch(this.count62)
         {
            case 1:
            case 2:
            case 3:
            case 4:
               this._ss5964.alpha = count[this.count62];
               return;
            case 5:
               this._bn15829.move2(this._ss5964,_xw1367.count8);
               removeEventListener(Event.ENTER_FRAME,this.move1);
               return;
            default:
               return;
         }
      }
      
      private function handleSocket(param1:EnterSceneController) : void
      {
         var count:Array = null;
         var count3:uint = 0;
         count = param1.items;
         count3 = uint(String(count[0]).charCodeAt(0));
         switch(count3)
         {
            case SocketManager.count89:
               var count1:int = int(count[1]);
               if(this._lp469 != null)
               {
                  this._lp469._pq590(0);
               }
               return;
            case PersonEvents._ht7426:
               if(this._lp469 != null)
               {
                  this._lp469._lh1803();
               }
               return;
            default:
               return;
         }
      }
      
      private function _lv2274(param1:ModuleLoader) : void
      {
         if(TicketmanagerController._xh10884(TicketmanagerController.textString25))
         {
            this._nu14755();
         }
      }
      
      private function stop(param1:ModuleLoader) : void
      {
         switch(TicketmanagerController._ao15042)
         {
            case TicketmanagerController.textString8:
            case TicketmanagerController.textString7:
               TicketmanagerController._xh10884(TicketmanagerController._ao15042);
               param1.stopImmediatePropagation();
               param1.stopPropagation();
               var count:Array = param1.items;
               var count3:int = int(count.shift());
               if(count3 != -1)
               {
                  switch(count)
                  {
                     case count7:
                        this.hide();
                        this._cd12313();
                        return;
                     case count5:
                        this.chooseScene.textString7 = ChoosesceneModel.count20;
                        return;
                     case count40:
                        this.move4(null);
                        count = count6;
                        this.count60 = count55;
                        break;
                     case count13:
                        break;
                     case count38:
                        count = count6;
                        this.count60 = count55;
                        return;
                  }
                  this._gj2216();
                  count = count6;
                  this.count60 = count55;
                  return;
               }
               count = count9;
               return;
            default:
               return;
         }
      }
      
      private function _nu8689(param1:Array) : void
      {
         this.enterScene.addEventListener(EnterSceneController._vu5480,this.handleSocket);
         this.enterScene.addEventListener(PersonEvents._aa5196,this.handleSocket);
         this.count61 = count59;
         this.show(param1);
         this._em1533.loadResource1();
         this._jb3891._ed1033 = true;
         this._bn15829._rg1051(0);
         this._bn15829._df13671(0);
         switch(this.enterScene._nr6929._ls5877)
         {
            case NavigationmenuModel._io5446:
            case NavigationmenuModel._dd9260:
               BoombangModel.attack(BoombangModel.textString4,this.enterScene._nr6929.name);
               return;
            case NavigationmenuModel._uq6151:
               return;
            case NavigationmenuModel._lk15055:
               ClickblockModel._og12356();
               this._re2328();
               return;
            default:
               return;
         }
      }
      
      private function handleSocket1(param1:NavigationManager) : void
      {
         var count:int = int(String(param1.items[0]).charCodeAt(0));
         switch(count)
         {
            case SocketManager.count75:
               this._nu14755();
               return;
            default:
               return;
         }
      }
      
      private function _nu14755() : void
      {
         this._au5106.destroy();
         switch(count)
         {
            case count7:
               this.hide();
               this._cd12313();
               return;
            case count5:
               this.chooseScene.textString7 = ChoosesceneModel.count25;
               this._sr10092();
               count = count6;
               this.count60 = count55;
               return;
            case count37:
               this._mc7359();
               count = count6;
               this.count60 = count55;
               return;
            case count13:
               this._gj2216();
               count = count6;
               this.count60 = count55;
               return;
            case count24:
               this._hg14456();
               count = count6;
               this.count60 = count55;
               return;
            case count28:
               this._cg4768();
               count = count6;
               this.count60 = count55;
               return;
            case count40:
               this.move4(null);
               count = count6;
               this.count60 = count55;
               return;
            default:
               return;
         }
      }
      
      private function _im5753() : void
      {
         if(this._lp469 == null)
         {
            return;
         }
         switch(this._lp469.textString7)
         {
            case InterfazManager.count9:
               this.isEnabled = true;
               this.hide();
               this._gv14852();
               return;
            case InterfazManager.count11:
               this.isEnabled = false;
               this.hide();
               this._gv14852();
               return;
            case InterfazManager.count12:
               this.isEnabled = false;
               this.hide();
               this._rd14599();
               return;
            case InterfazManager.count10:
               this.isEnabled = true;
               this.hide();
               this._cd12313();
               return;
            default:
               return;
         }
      }
      
      private function hide() : void
      {
         if(this.count61 >= 0)
         {
            this._em1533._lm5662.hide();
         }
         this._dr1773._ru16169();
         ClickblockModel._og12356();
         this._mc7359();
         this.move3();
         this.enterScene.destroy();
         this.enterScene.removeEventListener(EnterSceneController._vu5480,this.handleSocket);
         this.enterScene.removeEventListener(PersonEvents._aa5196,this.handleSocket);
         this._jb3891._ed1033 = false;
         if(this._rj4051 != null)
         {
            this._rj4051.authenticateUser2();
         }
         this._bn15829._rg1051(0);
         this._bn15829._df13671(0);
         if(this._tl7614 != null)
         {
            this._tl7614._bv5027();
         }
      }
      
      private function _gv14852() : void
      {
         this.enterScene.handleSocket5();
         count = count17;
      }
      
      private function _rd14599() : void
      {
         this.enterScene.handleSocket5();
         count = count39;
      }
      
      private function _cd12313() : void
      {
         count = count6;
         this.count60 = count55;
      }
      
      public function _gk4689(param1:BPadUI) : void
      {
         if(count == count7 && this._lp469._mi13335() && this.enterScene._ho5911()._nr6929._eb11619 != param1._nr6929._eb11619 || count == count5 && param1._nr6929._ls5877 != NavigationmenuModel._lk15055 || count == count40 && param1._nr6929._ls5877 != NavigationmenuModel._lk15055 || count == count13 && Boolean(this._bx8167._iq1199))
         {
            if(Boolean(this._dr1773.isEnabled8) && Boolean(TicketmanagerController._xm12587(TicketmanagerController.textString8)))
            {
               this.enterScene.handleSocket1(param1._nr6929,"");
               this.enterScene.addEventListener(IslandChooser.textString1,this.stop);
            }
         }
      }
      
      private function _nb513() : void
      {
         this._tl7614 = new NotificacionesController(this._lb8371,this);
      }
      
      private function destroy() : void
      {
         if(this._tl7614 != null)
         {
            this._tl7614.destroy();
            this._tl7614 = null;
         }
      }
      
      private function _packetsEventsInit() : void
      {
         this._packetsEvent = new PacketEventHandler();
      }
      
      private function _da1945() : void
      {
         this._xe10392 = new MemberController();
      }
      
      private function destroy1() : void
      {
         if(this._xe10392 != null)
         {
            this._xe10392.destroy();
            this._xe10392 = null;
         }
      }
      
      private function show(param1:Array) : void
      {
         this._lp469 = new InterfazManager(this.enterScene._yp6754(),this._fj5932,this._fy119,this._jm3064,this.enterScene,this._fx11460,this.enterScene._ho5911(),this._xe10392,this._tl9155,this._tl7614);
         this._lp469._dc14886.show();
         this._lp469.baseChat.show();
         if(Boolean((UserSession.getInstance() as UserSession)._oq2035) && Boolean(this.enterScene._ho5911().isEnabled1) && this.enterScene._ho5911().count9 == SceneModel._hj11698)
         {
            TutorialManager.activate = UserSession.getInstance()._oq2035;
            TutorialManager._vo14571(TutorialGUI.textString);
         }
         addChild(this._lp469);
         this._xd14787._kf5607(this.enterScene._yp6754());
         this.enterScene._dc15714(this._lp469);
         var count:NPCTypeDefinitions = new NPCTypeDefinitions(this._lp469._gv13950,this._lp469._to4684,this._lp469._sw13842,this._ov13431,this._lp469._ge1586);
         this._kq11856 = new NPCController(count);
         this._kq11856._st14821(param1);
      }
      
      public function move2() : void
      {
         this.move3();
         if(this.enterScene != null)
         {
            this.enterScene.destroy();
            this.enterScene.removeEventListener(EnterSceneController._vu5480,this.handleSocket);
            this.enterScene.removeEventListener(PersonEvents._aa5196,this.handleSocket);
         }
      }
      
      private function move3() : void
      {
         if(this._lp469 != null)
         {
            this._lp469.destroy();
            removeChild(this._lp469);
            this._lp469 = null;
         }
         this._fl1604 = null;
         if(this._kq11856 != null)
         {
            this._kq11856.destroy();
            this._kq11856 = null;
         }
      }
      
      public function _xd1691() : void
      {
         count = count8;
      }
      
      public function _ck9773() : void
      {
         count = count26;
      }
      
      public function _ey14488() : void
      {
         this._au5106._ka3329(BanHandler.count5,[this._ym12228.textString10,this._ym12228.count34]);
         this._tu4337();
      }
      
      public function _tu4337() : void
      {
         if(this._ym12228 == null)
         {
            return;
         }
         this._ym12228.destroy();
         this._ym12228 = null;
      }
      
      private function _du14982(param1:MovieClip) : void
      {
         this.chooseScene = new ChoosesceneModel(this._fj5932,this.enterScene,param1,this._xq15076,this.items1,this.items1,this._xe10392,this._fy119,this._tl7614,this._tl9155);
      }
      
      public function _sr10092() : void
      {
         if(this._rj4051 != null)
         {
            this._rj4051.authenticateUser2();
         }
         if(this.chooseScene != null)
         {
            this.chooseScene.destroy();
            this.chooseScene = null;
         }
         if(this._tl7614 != null)
         {
            this._tl7614._bv5027();
         }
      }
      
      private function _iv5796() : void
      {
         this._jb3891 = BPadController._np546;
         this._jb3891.create(this._fj5932,this._ec3748,this);
      }
      
      private function _bp9158() : void
      {
         if(this._jb3891 == null)
         {
            return;
         }
         this._jb3891.destroy();
         this._jb3891 = null;
      }
      
      private function _pw3760() : void
      {
         this._bx8167 = new ChooseislaController(this.enterScene);
      }
      
      public function _gj2216() : void
      {
         if(this._bx8167 == null)
         {
            return;
         }
         this._bx8167.destroy();
         this._bx8167 = null;
         this._fl1604 = null;
      }
      
      private function move4(param1:Event) : void
      {
         var count:NavigationmenuModel = null;
         if(this._ee6137)
         {
            this._ee6137.removeEventListener(SinglePlayerGameController.textString,this.move4);
            this._ee6137.destroy();
            this._ee6137 = null;
            count = this.enterScene._nr6929;
            Communications._qe13663(NavigationmenuModel._io5446.id,count._fq658);
         }
      }
      
      private function _ru8037(param1:int, param2:int) : void
      {
         this._ab10998 = new CreacionModel(param1,param2);
      }
      
      public function _hg14456() : void
      {
         if(this._ab10998 == null)
         {
            return;
         }
         this._ab10998.destroy();
         this._ab10998 = null;
         this._fl1604 = null;
      }
      
      private function _py267(param1:MovieClip) : void
      {
         this.choosePerson = new ChoosepersonModel(param1,this._ca5616);
      }
      
      public function _cg4768() : void
      {
         if(this.choosePerson == null)
         {
            return;
         }
         this.choosePerson.destroy();
         this.choosePerson = null;
      }
      
      private function _mc7359() : void
      {
         if(this._iu1259 == null)
         {
            return;
         }
         this._iu1259.destroy();
         this._iu1259 = null;
      }
      
      private function _re2328() : void
      {
         this._iu1259 = new MultiplayerSession(this._tv9779,this.enterScene,this.enterScene._ho5911()._wy2643,this._lp469);
      }
      
      private function authenticateUser2(param1:ConcursosEvents) : void
      {
         var count3:uint = uint(String(param1.items[0]).charCodeAt(0));
         switch(count3)
         {
            case SocketManager.count11:
               var count:uint = uint(String(param1.items[1]).charCodeAt(0));
               switch(0)
               {
                  case LoginProtocol.count22:
                     ConcursosModel.getInstance()._hv5552(param1.items);
                     this._jm6211.removeEventListener(ConcursosEvents.textString,this.authenticateUser2);
                     this._jm6211.destroy();
                     this._jm6211 = null;
                     this.isEnabled3 = true;
               }
               return;
            default:
               return;
         }
      }
      
      private function hashData(param1:Array) : void
      {
         if(param1.length < 3)
         {
            this.logs._kp3815(new Logs(Logger.count2,"GameLoop.recTramaValidateHashIntercambios",param1.toString()));
            return;
         }
         var count:int = int(param1[2]);
         if(count == 1)
         {
            this._dr1773.antitimos = true;
         }
      }
      
      private function move1(param1:ObjetosEvents) : void
      {
         var count:Array = null;
         var count3:uint = uint(String(param1.items[1]).charCodeAt(0));
         switch(count3)
         {
            case ObjetosController.count:
               this._jm3064.removeEventListener(ObjetosEvents.textString,this.move1);
               this.isEnabled4 = true;
               count = StringUtils.getList1(param1.items);
               count.splice(0,2);
               CatalogObject.getInstance()._we14328(count);
               return;
            case ObjetosController.count2:
               this._jm3064.removeEventListener(ObjetosEvents.textString,this.move1);
               this.isEnabled5 = true;
               count = StringUtils.getList1(param1.items);
               count.splice(0,2);
               MochilaModel.getInstance()._ll4424(count);
               return;
            default:
               return;
         }
      }
   }
}

