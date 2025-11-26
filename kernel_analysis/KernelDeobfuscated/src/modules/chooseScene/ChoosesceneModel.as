package src.modules.chooseScene
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.ExternalInterface;
   import flash.geom.*;
   import flash.media.*;
   import src.*;
   import src.allData.*;
   import src.allData.country.*;
   import src.allData.scene.typeEscenarios.*;
   import src.config.*;
   import src.loaders.*;
   import src.logs.*;
   import src.modules.*;
   import src.modules.antitimos.LoginEvents;
   import src.modules.baneos.*;
   import src.modules.bpad.*;
   import src.modules.chooseIsla.*;
   import src.modules.chooseScene.ManagerPaneles.*;
   import src.modules.chooseScene.managerBanners.*;
   import src.modules.chooseScene.managerSkinChooseScene.*;
   import src.modules.chooseScene.panelInferior.*;
   import src.modules.chooseScene.panelMariquita.*;
   import src.modules.creditos.CreditosController;
   import src.modules.creditos.CreditsManager;
   import src.modules.enterScene.SceneTransition;
   import src.modules.login.*;
   import src.modules.member.MemberController;
   import src.modules.notificaciones.NotificacionesController;
   import src.modules.ticketManager.*;
   import src.multiuser.*;
   import src.org.osflash.thunderbolt.*;
   import src.person.*;
   import src.tv.boombang.application.delayed_gift.controller.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.application.missions.gui.windows.*;
   import src.tv.boombang.application.navigation.events.*;
   import src.tv.boombang.application.navigation.gui.windows.*;
   import src.tv.boombang.application.payments.gui.windows.*;
   import src.tv.boombang.application.user.gui.windows.*;
   import src.tv.boombang.application.user.gui.windows.activateKey.*;
   import src.tv.boombang.application.user.gui.windows.cancelDeactivation.*;
   import src.tv.boombang.application.user.gui.windows.changeEmail.*;
   import src.tv.boombang.application.user.gui.windows.changeNickName.*;
   import src.tv.boombang.application.user.gui.windows.changePassword.*;
   import src.tv.boombang.application.user.gui.windows.deactivateKey.*;
   import src.tv.boombang.application.user.gui.windows.deleteAccount.*;
   import src.tv.boombang.application.user.gui.windows.editConnections.*;
   import src.tv.boombang.application.user.gui.windows.manageSubscriptions.*;
   import src.tv.boombang.application.user.gui.windows.userOptions.*;
   import src.tv.boombang.application.user.gui.windows.validateEmail.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.library.popup.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   import src.utils.*;
   import src.utils.boombang.*;
   
   public class ChoosesceneModel implements ModuleBase
   {
      
      private static var count:int;
      
      private static var isEnabled:Boolean;
      
      private static var _sl12580:NavigationmenuModel;
      
      private static var isEnabled1:Boolean;
      
      private static const textString:String = "mcElement";
      
      private static const textString1:String = "mcPerson";
      
      private static const textString1:String = "mcLogo";
      
      private static const textString2:String = "mcLogoChile";
      
      private static const textString3:String = "mcLogoIngles";
      
      public static const count1:int = 687;
      
      public static const count2:int = 11;
      
      public static const count3:int = 677;
      
      public static const count4:int = 673;
      
      public static const count5:int = 751;
      
      public static const count6:int = 817;
      
      public static const count7:int = 455;
      
      public static const count8:int = 448;
      
      public static const count9:int = 5;
      
      public static const count10:int = 1000;
      
      public static const count11:int = 14;
      
      public static const count12:int = 211;
      
      public static const count13:int = 615;
      
      public static const count14:int = 0;
      
      public static const count15:int = 27;
      
      public static const count16:int = 25;
      
      public static const count17:int = 465;
      
      public static const count18:int = 340;
      
      private static const textString7:String = "normal";
      
      private static const textString6:String = "caida";
      
      private static const textString7:String = "impactoPersonaje";
      
      private static const textString8:String = "florDetenida";
      
      private static const textString9:String = "baneo";
      
      private static const textString10:String = "comienzo";
      
      private static const textString11:String = "fin";
      
      public static const count25:int = 0;
      
      public static const count20:int = 1;
      
      public static const count21:int = 2;
      
      public static const count22:int = 3;
      
      public static const count23:int = 4;
      
      public static const count24:int = 5;
      
      public static const count25:int = 6;
      
      private static const count26:int = 2;
      
      public static const count27:int = 0;
      
      public static const count28:int = 1;
      
      public static const count29:int = 2;
      
      public static const count30:int = 3;
      
      public static const count31:int = 4;
      
      public static const count32:int = 5;
      
      public static const count33:int = 6;
      
      public static const count34:int = 7;
      
      private static var count35:int = 0;
      
      private static var count36:int = 0;
      
      private static var count37:int = 0;
      
      private static var count38:int = 0;
      
      private static var count39:int = 350 + 92;
      
      private static var count40:int = 250 + 137;
      
      private static var count41:int = -400 + 137;
      
      private static var count42:int = count40 + 50;
      
      private static var count43:int = 0;
      
      private var _qt15626:WindowsView;
      
      private var _nt7956:MovieClip;
      
      private var count32:int;
      
      private var _dn9880:ModuleManager;
      
      private var _vc10957:ChoosesceneController;
      
      private var _hd13280:LoginEvents;
      
      private var _jb3891:BPadController;
      
      private var _fv14977:SceneTransition;
      
      private var _gy10361:ChoosesceneModel;
      
      private var _pg10414:PanelmariquitaView;
      
      public var _fd7907:PanelinferiorModel;
      
      private var _dq1230:PanelinferiorModel;
      
      private var _ko15136:ManagerbannersController;
      
      private var _qm4970:PanelinferiorModel;
      
      private var _wc6296:ControllerController;
      
      private var logs:Logger;
      
      private var isEnabled2:Boolean;
      
      private var _gg7070:PersonModel;
      
      private var _lt10352:MovieClip;
      
      private var _jf8323:MovieClip;
      
      private var _rj9894:MovieClip;
      
      private var _tu12453:MovieClip;
      
      private var _vy1314:MovieClip;
      
      private var _pt4387:MovieClip;
      
      private var _xc3420:MovieClip;
      
      private var _ed9532:MovieClip;
      
      private var _ee15533:MovieClip;
      
      private var _te16060:MovieClip;
      
      private var _xq15076:MovieClip;
      
      private var _wa8626:ManagerpanelesController;
      
      private var items1:Array;
      
      private var items1:Array;
      
      private var items2:Array;
      
      private var _xe10392:MemberController;
      
      private var _bg10415:CreditosController;
      
      private var _tl7614:NotificacionesController;
      
      private var _tl9155:CreditsManager;
      
      private var _ql14855:ChangenicknameView;
      
      private var _tr9195:WindowsModel;
      
      private var _of15040:WindowsView;
      
      private var _nv14017:WindowsController;
      
      private var count45:int = 0;
      
      public function ChoosesceneModel(param1:LoginEvents, param2:SceneTransition, param3:MovieClip, param4:MovieClip, param5:Array, param6:Array, param7:MemberController, param8:CreditosController, param9:NotificacionesController, param10:CreditsManager)
      {
         var count10:CoreModel = null;
         var textString12:String = null;
         super();
         if(Configuration.isEnabled12)
         {
            count40 = 250 + 137 + 20;
            count42 = count40 + 30;
         }
         if(!_sl12580)
         {
            _sl12580 = NavigationmenuModel._as7636;
         }
         this._dn9880 = new ChoosesceneController();
         this._vc10957 = ChoosesceneController(this._dn9880);
         this._vc10957.addEventListener(IslandChooser.textString,this.authenticateUser);
         this._hd13280 = param1;
         this._vc10957.addEventListener(LoginEvents.textString,this.authenticateUser);
         this._fv14977 = param2;
         this._nt7956 = param3;
         this._jb3891 = BPadController._np546;
         this._jb3891.addEventListener(BPadController._ll7983,this.show,false,0,true);
         this._xq15076 = param4;
         this.items1 = param5;
         this.items1 = param6;
         this.items2 = ManagerskinchoosesceneController._iq14018();
         this._xe10392 = param7;
         this._bg10415 = param8;
         this._tl7614 = param9;
         this._fv14977.addEventListener(IslandChooser.textString1,this.stop);
         this._tl9155 = param10;
         this.isEnabled2 = false;
         this.textString7 = count25;
         this.logs = Logger.getInstance();
         if(count36 == 0)
         {
            count10 = CoreModel.getInstance();
            if(UserSession.getInstance()._jr10446 >= 20)
            {
               textString12 = "+20";
            }
            else
            {
               textString12 = UserSession.getInstance()._jr10446.toString();
            }
            (ServiceLocator.get(ServiceManager) as ServiceManager)._mc9894(1,"connections_count",textString12,2);
            (ServiceLocator.get(ServiceManager) as ServiceManager)._mc9894(2,"lang",Configuration.textString,2);
            isEnabled1 = true;
         }
         (ServiceLocator.get(ServiceManager) as ServiceManager).loadResource("/flower_power");
         ExternalInterface.call("OutArea");
         PacketBuilder.handleSocket(MessageTypeConstants.count48,this._of1737);
      }
      
      public static function get _of1435() : int
      {
         return count36;
      }
      
      public function destroy() : void
      {
         UIDialog.getInstance().removeAll();
         if(this._nv14017)
         {
            this._nv14017.removeEventListener(WindowsController.textString2,this._we1942);
         }
         PacketBuilder.handleSocket1(MessageTypeConstants.count48,this._of1737);
         this.move1();
         this._wa8626.destroy();
         this._bb1926();
         if(this._tr9195 != null)
         {
            this._tr9195.removeEventListener(EventsModel.textString1,this._yy993);
            this._tr9195.removeEventListener(EventsModel.textString10,this._hl11318);
            this._tr9195.removeEventListener(EventsModel.textString15,this._hk7303);
            this._tr9195.destroy();
            this._tr9195 = null;
         }
         if(this._ko15136 != null)
         {
            this._ko15136.destroy();
            this._ko15136 = null;
         }
         this._vc10957.removeEventListener(IslandChooser.textString,this.authenticateUser);
         this._vc10957.removeEventListener(LoginEvents.textString,this.authenticateUser);
         this._fv14977.removeEventListener(IslandChooser.textString1,this.stop);
         this._vc10957.destroy();
         this._vc10957 = null;
         this._dn9880 = null;
         this._jb3891.removeEventListener(BPadController._ll7983,this.show);
         this._jb3891.authenticateUser2();
         StringUtils._ff5056(this._jf8323);
         ExternalInterface.call("function(){InArea();}");
         ManagerbannersController.getInstance().hide();
         this.move();
      }
      
      public function init(param1:Object = null) : void
      {
      }
      
      public function _ep5216(param1:int) : void
      {
         ++count36;
         this.count45 = param1;
         if(Configuration.urlString9 == Configuration.urlString4)
         {
         }
         if(this._gy10361 == null)
         {
            this._gy10361 = new ChoosesceneModel();
         }
         this._yv3159();
         this._wa8626 = new ManagerpanelesController(this.items1,this.loadResource9,this._gy10361,this._vc10957,this._pg10414,this._hd13280,this._xe10392,this._bg10415,this.show3);
         this._ko15136 = new ManagerbannersController(this,this._vc10957);
         StringUtils._dp2863(this._jf8323,this._aj11016);
         if(this.count45 == count29 || this.count45 == count33)
         {
            isEnabled = true;
         }
         switch(this.count45)
         {
            case count27:
            case count28:
               this._rb2419();
               this._jf8323.gotoAndStop(textString7);
               return;
            case count30:
               this._ud2033();
               this._jf8323.gotoAndStop(textString7);
               return;
            case count34:
            case count32:
            case count29:
               this._ud2033();
               this._es11222();
               this._jf8323.gotoAndPlay(textString6);
               return;
            case count31:
               this._ud2033();
               this._jf8323.gotoAndStop(textString9);
               return;
            default:
               return;
         }
      }
      
      private function _ew5863() : void
      {
         var count2:Boolean = false;
         if(CoreModel.data._je8982 > 0)
         {
            this._ql14855 = new ChangenicknameView(CoreModel.data._je8982);
            UIDialog.getInstance().add(this._ql14855,440,535);
         }
         if(CoreModel.data._uf6036 == UserSession._kr15451 && CoreModel.data._jr10446 >= 10)
         {
            if((count36 - 1) % count9 == 0)
            {
               this._qt15626 = new WindowsView();
               this._qt15626.addEventListener(StepsView.textString1,this._vg8488);
               UIDialog.getInstance().add(this._qt15626,count6,count8);
            }
         }
         else if(CoreModel.data._uf6036 == UserSession._lb6305)
         {
            if((count36 - 1) % count9 == 0)
            {
               UIDialog.getInstance().add(new WindowsView(),count6,count7);
            }
         }
         if(CoreModel.data._jr10446 == 0)
         {
            this.loadResource();
         }
         if(Boolean(isEnabled1) && !PopUpManagerImpl.getInstance()._yy14935)
         {
            if(ManagerbannersController.getInstance().show())
            {
               count2 = true;
               this._vh4126(true);
            }
            if(!count2)
            {
               this._oq5692();
            }
         }
      }
      
      public function initialize() : void
      {
         if(this._ko15136 != null)
         {
            this._ko15136.init();
         }
      }
      
      public function _vo2826() : Boolean
      {
         return this.isEnabled2;
      }
      
      private function _xo11848(param1:Boolean) : void
      {
         this.isEnabled2 = param1;
      }
      
      private function _aj11016() : void
      {
         switch(this._jf8323.currentLabel)
         {
            case textString7:
               switch(this.count45)
               {
                  case count29:
                  case count27:
                  case count33:
                     this._xo11848(true);
                     break;
                  case count32:
                  case count28:
                     this.move2();
                     this.count45 = count27;
                     break;
                  case count34:
                     this.loadResource8();
               }
               this._jf8323.stop();
               return;
            case textString6:
               return;
            case textString9:
               return;
            default:
               return;
         }
      }
      
      private function _yv3159() : void
      {
         var count2:int = 0;
         var count:MovieClip = null;
         var count3:int = 0;
         while(count3 < this.items2.length)
         {
            count2 = int(ManagerskinchoosesceneController(this.items2[count3])._dd11486);
            count = MovieClip(this.items1[count3]).getChildByName(textString) as MovieClip;
            if(count != null)
            {
               _xw1367.getInstance()._uc3178(count,_xw1367.count5);
            }
            switch(count2)
            {
               case ManagerskinchoosesceneController.count:
                  this._rj9894 = count;
                  break;
               case ManagerskinchoosesceneController.count1:
                  this._tu12453 = count;
                  _xw1367.getInstance()._uc3178(this._xq15076,_xw1367.count5);
                  break;
               case ManagerskinchoosesceneController.count2:
                  this._lt10352 = count;
                  break;
               case ManagerskinchoosesceneController.count3:
                  this._jf8323 = count;
                  this._vy1314 = count[textString1];
                  break;
               case ManagerskinchoosesceneController.count4:
                  this._pt4387 = count;
                  break;
               case ManagerskinchoosesceneController.count5:
                  this._xc3420 = count;
                  this._pg10414 = new PanelmariquitaView(count);
                  break;
               case ManagerskinchoosesceneController.count6:
                  this._ed9532 = count;
                  this._fd7907 = new PanelinferiorModel(this,count,this._gy10361,this._vc10957,this._tl7614,this._tl9155);
                  break;
               case ManagerskinchoosesceneController.count7:
                  this._ee15533 = count;
                  this._qm4970 = new PanelinferiorModel(count,this._gy10361,this._vc10957);
                  break;
               case ManagerskinchoosesceneController.count8:
                  this._te16060 = count;
                  this._dq1230 = new PanelinferiorModel(count);
            }
            count3++;
         }
      }
      
      private function _bb1926() : void
      {
         var count2:int = 0;
         var count:MovieClip = null;
         var count3:int = 0;
         this.move();
         while(count3 < this.items2.length)
         {
            count2 = int(ManagerskinchoosesceneController(this.items2[count3])._dd11486);
            count = null;
            switch(count2)
            {
               case ManagerskinchoosesceneController.count:
                  _xw1367.getInstance().move2(this._rj9894,_xw1367.count5);
                  MovieClip(this.items1[count3]).addChild(this._rj9894);
                  break;
               case ManagerskinchoosesceneController.count1:
                  _xw1367.getInstance().move2(this._tu12453,_xw1367.count5);
                  MovieClip(this.items1[count3]).addChild(this._tu12453);
                  _xw1367.getInstance().move2(this._xq15076,_xw1367.count5);
                  break;
               case ManagerskinchoosesceneController.count2:
                  _xw1367.getInstance().move2(this._lt10352,_xw1367.count5);
                  MovieClip(this.items1[count3]).addChild(this._lt10352);
                  break;
               case ManagerskinchoosesceneController.count3:
                  _xw1367.getInstance().move2(this._jf8323,_xw1367.count5);
                  MovieClip(this.items1[count3]).addChild(this._jf8323);
                  break;
               case ManagerskinchoosesceneController.count5:
                  if(this._pg10414 != null)
                  {
                     this._pg10414.destroy();
                     this._pg10414 = null;
                  }
                  MovieClip(this.items1[count3]).addChild(this._xc3420);
                  break;
               case ManagerskinchoosesceneController.count6:
                  if(this._fd7907 != null)
                  {
                     this._fd7907.destroy();
                     this._fd7907 = null;
                  }
                  MovieClip(this.items1[count3]).addChild(this._ed9532);
                  break;
               case ManagerskinchoosesceneController.count7:
                  if(this._qm4970 != null)
                  {
                     this._qm4970.destroy();
                     this._qm4970 = null;
                  }
                  MovieClip(this.items1[count3]).addChild(this._ee15533);
                  break;
               case ManagerskinchoosesceneController.count8:
                  if(this._dq1230 != null)
                  {
                     this._dq1230.destroy();
                     this._dq1230 = null;
                  }
                  MovieClip(this.items1[count3]).addChild(this._te16060);
            }
            count3++;
         }
      }
      
      protected function _ul8765() : void
      {
         if(this._wc6296 == null)
         {
            this._wc6296 = new ControllerController();
            this._wc6296.addEventListener(Event.COMPLETE,this._qx4232,false,0,true);
            this._wc6296._np5723 = new Point(0,1);
            this._wc6296._wg2951 = new Point(125,0);
            _xw1367.getInstance()._uc3178(this._wc6296,_xw1367.count5,true);
         }
      }
      
      protected function move() : void
      {
         if(this._wc6296 != null)
         {
            _xw1367.getInstance().move2(this._wc6296,_xw1367.count5);
            this._wc6296.destroy();
            this._wc6296.removeEventListener(Event.COMPLETE,this._qx4232);
            this._wc6296 = null;
         }
      }
      
      protected function _qx4232(param1:Event) : void
      {
         this.move();
         this._ul8765();
      }
      
      private function destroy() : void
      {
         var count2:Boolean = false;
         if(this._gg7070 != null)
         {
            this._gg7070.destroy();
            this.move1();
         }
         if(Configuration.isEnabled12)
         {
            count2 = true;
         }
         this._gg7070 = new PersonModel(this._nt7956,UserSession.getInstance(),count2);
         this._vy1314.addChild(this._gg7070);
      }
      
      private function move1() : void
      {
         this._vy1314.removeChild(this._gg7070);
      }
      
      private function _rb2419() : void
      {
         this.destroy();
         this._gg7070._rb2419(count39,count40);
      }
      
      private function _es11222() : void
      {
         this.destroy();
         var count2:int = int(StringUtils._tm12465(this._jf8323,textString7));
         var count:int = int(StringUtils._tm12465(this._jf8323,textString8));
         this._gg7070._es11222(count39,count41,count42,count40,count2,count);
      }
      
      public function _ud2033() : void
      {
         if(this._lt10352 != null)
         {
            if(count36 == 1)
            {
               this._lt10352.gotoAndPlay(textString10);
            }
            else
            {
               this._lt10352.gotoAndStop(textString11);
            }
         }
      }
      
      public function _wt9529() : void
      {
         this.move2();
      }
      
      private function move2() : void
      {
         this._fd7907.show();
         this._qm4970.show();
         this._dq1230.show();
         this._jb3891._re2071();
         this._jb3891._fo382(BPadController._vr11364);
         this._jb3891.show();
         this._ul8765();
         if(this._tr9195)
         {
            UIDialog.getInstance().remove(this._tr9195);
         }
         this._tr9195 = new WindowsModel(_sl12580);
         this._tr9195.addEventListener(EventsModel.textString1,this._yy993,false,0,true);
         this._tr9195.addEventListener(EventsModel.textString10,this._hl11318,false,0,true);
         this._tr9195.addEventListener(EventsModel.textString15,this._hk7303,false,0,true);
         UIDialog.getInstance().add(this._tr9195,5,30);
         this._nv14017 = new WindowsController();
         UIDialog.getInstance().add(this._nv14017,460,200);
         this._nv14017.addEventListener(WindowsController.textString2,this._we1942,false,0,true);
         this._ew5863();
      }
      
      private function _we1942(param1:Event) : void
      {
         this._vh4126();
      }
      
      private function _yy993(param1:EventsModel) : void
      {
         _sl12580 = this._tr9195._rv12413;
      }
      
      private function _hk7303(param1:EventsModel) : void
      {
         this.textString7 = count21;
         ChooseislaController._yw12985 = param1.data._vn12441;
      }
      
      public function _hl11318(param1:EventsModel = null) : void
      {
         this.textString7 = count22;
      }
      
      public function show(param1:Event) : void
      {
         Ga._fs11949("openBPad");
      }
      
      private function _oq5692() : void
      {
         if(CoreModel.data._jr10446 != 0)
         {
            if(!ManagerbannersController.getInstance()._um6205())
            {
               if(Configuration.urlString9 == Configuration.urlString5)
               {
                  this.loadResource1();
               }
               else if(Configuration.urlString9 == Configuration.urlString7)
               {
                  this.loadResource2();
               }
               else if(UserSession.getInstance().urlString9.toUpperCase() == CountryModel.textString2)
               {
                  this._lb3765();
               }
               else
               {
                  this.loadResource3();
               }
            }
         }
         ++count37;
      }
      
      private function loadResource() : void
      {
         switch(count37 % 5)
         {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
               this._wa8626.show(AssetLoader.textString5,count3,count2);
               return;
            default:
               return;
         }
      }
      
      private function loadResource1() : void
      {
         switch(count37 % 2)
         {
            case 0:
               this.loadResource9();
               return;
            case 1:
               if(this._wa8626.show(AssetLoader.textString6,count4,count2) == false)
               {
                  this._wa8626.show(AssetLoader.textString7,count3,count2);
               }
               return;
            default:
               return;
         }
      }
      
      private function loadResource2() : void
      {
         switch(count37 % 2)
         {
            case 0:
               this.loadResource9();
               return;
            case 1:
               if(this._wa8626.show(AssetLoader.textString6,count4,count2) == false)
               {
                  this._wa8626.show(AssetLoader.textString7,count3,count2);
               }
               return;
            default:
               return;
         }
      }
      
      private function _lb3765() : void
      {
         switch(count37 % 1)
         {
            case 0:
               this.loadResource9();
               return;
            default:
               return;
         }
      }
      
      private function loadResource3() : void
      {
         if(UserSession.getInstance().urlString9.toUpperCase() == CountryModel.textString3)
         {
            switch(count37 % 2)
            {
               case 0:
                  this.loadResource9();
                  break;
               case 1:
                  if(this._wa8626.show(AssetLoader.textString6,count4,count2) == false)
                  {
                     this._wa8626.show(AssetLoader.textString7,count3,count2);
                  }
            }
         }
         else
         {
            switch(count37 % 2)
            {
               case 0:
                  this.loadResource9();
                  return;
               case 1:
                  if(this._wa8626.show(AssetLoader.textString6,count4,count2) == false)
                  {
                     this._wa8626.show(AssetLoader.textString7,count3,count2);
                  }
                  return;
            }
         }
      }
      
      private function _ns5458() : void
      {
         var count2:String = null;
         if(Configuration.urlString9 == Configuration.urlString5)
         {
            count2 = "https://www.chilevision.cl/boombang/videochat.php?id=" + int(Math.random() * 5000);
            UtilsUtils._uq5146(count2,this._ih7027);
         }
      }
      
      public function _ih7027(param1:String) : void
      {
         if(param1 != null)
         {
            param1 = param1.slice(0,param1.indexOf("j"));
         }
         ThunderboltModel.info("answerPHP" + param1);
         switch(param1)
         {
            case "ACTIVO":
               if(Configuration.isEnabled14)
               {
                  this.loadResource4();
               }
               return;
            case "INACTIVO":
            default:
               return;
         }
      }
      
      public function loadResource4() : void
      {
         var count2:Object = new Object();
         count2._jo6704 = this._fj15389;
         count2._ye3690 = false;
         this._wa8626.show(AssetLoader.textString11,277,-6,count2);
      }
      
      private function _fj15389(param1:MouseEvent) : void
      {
         BoombangModel._iu2197();
      }
      
      private function loadResource5() : void
      {
         this._ko15136.load(966,"https://www.preuniversitariopedrodevaldivia.cl/ppv3.php?nom_pag==su_experience/index.php","300x250.swf");
      }
      
      public function loadResource6() : void
      {
         this._vh4126();
         this._wa8626.show(AssetLoader.textString7,count3,count2);
      }
      
      public function show1() : void
      {
         Ga._fs11949("openVipMember");
         this._vh4126();
         this._wa8626.show(AssetLoader.textString32,0,0,null);
      }
      
      public function show2() : void
      {
         Ga._fs11949("openNews");
         this._vh4126();
         this._wa8626.show(AssetLoader.textString33,0,0,null);
      }
      
      public function loadResource7(param1:MovieClip) : void
      {
         this._wa8626._ar9865(AssetLoader.textString33,param1);
      }
      
      public function show3() : void
      {
         this._vh4126();
         Ga._fs11949("openCoins");
         if(this._of15040)
         {
            UIDialog.getInstance().remove(this._of15040);
         }
         this._of15040 = new WindowsView();
         UIDialog.getInstance().add(this._of15040,440,10);
      }
      
      public function show4() : void
      {
         Ga._fs11949("openOptions");
         this._vh4126();
         this._pg10414.authenticateUser2();
         UIDialog.getInstance().add(new UseroptionsModel(this),270,375);
      }
      
      public function _um14837() : void
      {
         this._vh4126();
         if(UserSession.getInstance()._uf6036 != UserSession._lb6305)
         {
            UIDialog.getInstance().add(new ChangeemailModel(),count10,count2);
         }
         else
         {
            UIDialog.getInstance().add(new CanceldeactivationModel("windows.cancelDeactivateKey.changeEmailDescription"),count10,count2);
         }
      }
      
      public function _sa14733() : void
      {
         this._vh4126();
         UIDialog.getInstance().add(new ManagesubscriptionsController(),count10,count2);
      }
      
      public function _pw2317() : void
      {
         this._vh4126();
         if(UserSession.getInstance()._uf6036 != UserSession._lb6305)
         {
            UIDialog.getInstance().add(new ChangepasswordModel(),count10,count2);
         }
         else
         {
            UIDialog.getInstance().add(new CanceldeactivationModel("windows.cancelDeactivateKey.changePasswordDescription"),count10,count2);
         }
      }
      
      public function destroy1() : void
      {
         this._vh4126();
         if(UserSession.getInstance()._uf6036 != UserSession._lb6305)
         {
            UIDialog.getInstance().add(new DeleteaccountModel(),count10,count2);
         }
         else
         {
            UIDialog.getInstance().add(new CanceldeactivationModel("windows.cancelDeactivateKey.deleteAccountDescription"),count10,count2);
         }
      }
      
      public function loadResource8() : void
      {
         this._wa8626.show(AssetLoader.textString28,count17,count18);
      }
      
      public function verifyEmail() : void
      {
         this._vh4126();
         UIDialog.getInstance().add(new ValidateemailView(),count10,count2);
      }
      
      public function connect() : void
      {
         this._vh4126();
         if(UserSession.getInstance()._uf6036 != UserSession._lb6305)
         {
            UIDialog.getInstance().add(new EditconnectionsModel(),count10,count2);
         }
         else
         {
            UIDialog.getInstance().add(new CanceldeactivationModel("windows.cancelDeactivateKey.editConnectionsDescription"),count10,count2);
         }
      }
      
      public function _vg8488(param1:Event = null) : void
      {
         this._vh4126();
         UIDialog.getInstance().add(new ActivatekeyModel(),count10,count2);
      }
      
      public function _ym1355() : void
      {
         this._vh4126();
         UIDialog.getInstance().add(new DeactivatekeyModel(),count10,count2);
      }
      
      public function _sf13434() : void
      {
         this._vh4126();
         UIDialog.getInstance().add(new CanceldeactivationModel(),count10,count2);
      }
      
      public function loadResource9() : void
      {
         if(!ManagerbannersController.getInstance()._um6205())
         {
            this._wa8626._ip1589();
            this._wa8626.show(AssetLoader.textString14,count1,count2);
         }
      }
      
      public function _id13318() : void
      {
         this._vh4126();
         this._ko15136.show();
      }
      
      public function _jv4274() : void
      {
         this._ko15136.authenticateUser2();
      }
      
      public function _fp2870() : void
      {
         this._ko15136._eu2368();
      }
      
      private function _of1737(param1:NetworkEventWrapper) : void
      {
         var count:int = int(param1.flags[0]);
         var count3:int = int(param1._qp16092(1));
         if(count3 == MessageTypeConstants.count49 || count3 == MessageTypeConstants.count51)
         {
            this._vh4126();
         }
      }
      
      public function _vh4126(param1:Boolean = false) : void
      {
         this._ko15136.authenticateUser2();
         if(this._ql14855 != null)
         {
            UIDialog.getInstance()._ig10757([this._ql14855,this._tr9195,this._nv14017]);
         }
         else
         {
            UIDialog.getInstance()._ig10757([this._tr9195,this._nv14017]);
         }
         if(param1 == false)
         {
            ManagerbannersController.getInstance().hide();
         }
         this._wa8626._ip1589();
         this._wa8626.authenticateUser2(AssetLoader.textString14);
      }
      
      public function _np14165(param1:int) : void
      {
         this._ep5216(param1);
         this.initialize();
      }
      
      public function _ca10610() : void
      {
         this.textString7 = count23;
      }
      
      public function _ac9678() : void
      {
         this.textString7 = count24;
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
         return this._dn9880;
      }
      
      public function set _ud1642(param1:ModuleManager) : void
      {
         this._dn9880 = param1;
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var items:Array = param1.items;
         var count8:uint = uint(String(items[0]).charCodeAt(0));
         switch(count8)
         {
            case SocketManager.count11:
               var count:uint = uint(String(items[1]).charCodeAt(0));
               switch(0)
               {
                  case LoginProtocol.count24:
                     if(items.length >= 3)
                     {
                        var count3:Boolean = Boolean(int(items[2]));
                        if(!UserSession.getInstance()._wb8182())
                        {
                           if(this._kt9910())
                           {
                              isEnabled1 = true;
                           }
                        }
                     }
               }
               return;
            default:
               return;
         }
      }
      
      private function _kt9910() : Boolean
      {
         var count2:Boolean = false;
         ++count35;
         if(count35 <= 8)
         {
            count2 = true;
         }
         else
         {
            ++count38;
            if(count38 <= 2)
            {
               count2 = true;
            }
            else
            {
               count2 = false;
               count38 = 0;
            }
         }
         return count2;
      }
      
      private function stop(param1:ModuleLoader) : void
      {
         var count:Array = param1.items;
         var count3:int = int(count.shift());
         if(count3 == -1)
         {
            return;
         }
         switch(count3)
         {
            case SceneTypePublic.count1:
            case SceneTypePublic.count5:
               if(TicketmanagerController._xh10884(TicketmanagerController.textString2))
               {
                  this.textString7 = count20;
               }
               return;
            case SceneTypePublic.count2:
               this.textString7 = count25;
               return;
            case SceneTypePublic.count:
               this.textString7 = count21;
               ChooseislaController._yw12985 = this._fv14977._nr6929._vn12441;
               return;
            case SceneTypePublic.count4:
               if(TicketmanagerController._xh10884(TicketmanagerController.textString3))
               {
                  this.textString7 = count20;
               }
               return;
            default:
               return;
         }
      }
      
      public function loop() : void
      {
         this._qm4970.loop();
         this._ko15136.loop();
         this._fd7907.loop();
      }
      
      public function _mo5919(param1:int, param2:Array) : void
      {
         this._vh4126();
         this._pg10414.authenticateUser2();
         this._fd7907.authenticateUser2();
         this._qm4970.authenticateUser2();
         this._dq1230.authenticateUser2();
         this.move();
         if(this._jb3891 != null)
         {
            this._jb3891.authenticateUser2();
            this._jb3891._wq9363();
         }
         var count3:Object = new Object();
         count3.textString10 = param1;
         count3.items = param2;
         this._wa8626.show(AssetLoader.textString9,count15,count16,count3);
         if(param1 == BanHandler.count5 && param2[1] == BanHandler.count10)
         {
            count3.loadResource10 = this.loadResource10;
            this._wa8626.show(AssetLoader.textString29,count15,count16,count3);
         }
      }
      
      public function loadResource10() : void
      {
         this._wa8626.authenticateUser2(AssetLoader.textString9);
      }
      
      public function authenticateUser2() : void
      {
         this._vc10957.authenticateUser2();
      }
      
      public function _oh9462() : void
      {
         if(SoundMixer.soundTransform.volume == 0)
         {
            SoundMixer.soundTransform = new SoundTransform(1);
         }
         else
         {
            SoundMixer.soundTransform = new SoundTransform(0);
         }
      }
   }
}

