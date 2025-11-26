package src.modules.login
{
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   import src.*;
   import src.allData.*;
   import src.allData.color.*;
   import src.config.*;
   import src.loaders.*;
   import src.logs.*;
   import src.modules.*;
   import src.modules.antitimos.*;
   import src.modules.login.choosePerson.*;
   import src.multiuser.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.utils.*;
   import src.utils.efectos.EfectosModel;
   
   public class LoginModule implements ModuleBase
   {
      
      public static var isEnabled:Boolean;
      
      public static var isEnabled1:Boolean;
      
      private static const textString:String = "mcBaseLogin";
      
      private static const textString1:String = "mcLogo";
      
      private static const textString2:String = "mcLogoChile";
      
      private static const textString3:String = "mcLogoIngles";
      
      private static const textString4:String = "mcNieve";
      
      private static const textString5:String = "mcAnimacion";
      
      private static const textString6:String = "mcCopoNieve";
      
      private static const textString7:String = "tfNavidad";
      
      private static const count:int = 1;
      
      private static const textString8:String = "mcKeko";
      
      public static const count:int = 1;
      
      public static const count2:int = 2;
      
      public static const count3:int = 3;
      
      public static const count4:int = 32;
      
      public static const count5:int = 4;
      
      public static const count6:int = 5;
      
      public static const count7:int = 6;
      
      public static const count8:int = 7;
      
      public static const count9:int = 8;
      
      public static const count10:int = 9;
      
      public static const count11:int = 10;
      
      public static const count12:int = 11;
      
      public static const count13:int = 12;
      
      public static const count14:int = 13;
      
      private static const count15:int = 104;
      
      private static const count16:int = 105;
      
      private static const count17:int = 106;
      
      private static const count18:int = 201;
      
      private static const count19:int = 202;
      
      private static const count20:int = 203;
      
      private static const count21:int = 204;
      
      private static const count22:int = 205;
      
      private static const count23:int = 206;
      
      private static const count24:int = 5;
      
      public static const count25:int = 0;
      
      public static const count26:int = 1;
      
      public static const count27:int = 2;
      
      public static const count28:int = 3;
      
      public static const count29:int = 4;
      
      public static const count30:int = 15;
      
      public static const count31:int = 0;
      
      private var _by9792:MovieClip;
      
      private var _ca5616:MovieClip;
      
      private var _hv14331:MovieClip;
      
      private var status:int;
      
      private var count32:int;
      
      private var textString9:String;
      
      private var count33:int;
      
      public var textString10:String = "";
      
      public var count34:int;
      
      private var _kg15885:LoginProtocol;
      
      private var _ue13290:LoginUtils;
      
      private var _kn9534:LoginUIController;
      
      public var _np1587:LoginModel;
      
      private var _hd13280:LoginEvents;
      
      private var _jt3180:LoginEvents;
      
      private var textString11:String;
      
      private var items:Array;
      
      private var logs:Logger;
      
      private var _ig2181:LoginUtils;
      
      private var isEnabled2:Boolean = false;
      
      private var _rg8557:EfectosModel;
      
      private var isEnabled3:Boolean;
      
      private var _jj4065:ApplicationMain;
      
      public function LoginModule(param1:ApplicationMain, param2:LoginEvents)
      {
         super();
         this._jj4065 = param1;
         this._kg15885 = new LoginProtocol();
         this._hd13280 = param2;
         this._kg15885.addEventListener(LoginEvents.textString,this.authenticateUser);
         param2.addEventListener(AntitimosEvents.textString,this.authenticateUser);
         this.textString7 = count25;
         this.logs = Logger.getInstance();
         if(!UserSession.getInstance()._tu10532())
         {
            isEnabled = true;
            isEnabled1 = false;
         }
         else
         {
            if(UserSession.getInstance().name != null)
            {
               isEnabled = true;
            }
            else
            {
               isEnabled = false;
            }
            if(UserSession.getInstance().isEnabled != null)
            {
               isEnabled1 = true;
            }
            else
            {
               isEnabled1 = false;
            }
         }
      }
      
      public static function _hv6433(param1:Array, param2:Boolean) : void
      {
         var count8:int = 0;
         var count3:UserSession = UserSession.getInstance();
         count3.name = param1[3];
         count3.count1 = int(param1[4]);
         count3.colors = new ColorModel(param1[5]);
         count3._ll5517 = new ColorModel(param1[5]);
         count3._am6464 = param1[6];
         count3.setDate(param1[7]);
         count3._yr4676 = int(param1[8]);
         count3._ma12295 = Boolean(int(param1[10]));
         count3.id = int(param1[11]);
         count3.count10 = int(param1[12]);
         count3._dx11054 = int(param1[13]);
         count3._ea4493 = int(param1[14]);
         count3._pm10848 = int(param1[15]);
         count3._tc16118 = int(param1[16]);
         count3._ec10230 = int(param1[17]);
         count3._lf431 = int(param1[18]);
         count3._xj13389 = getTimer() / 1000;
         var count1:Array = SocketManager.getList1(param1[19]);
         var count2:Array = SocketManager.getList1(param1[20]);
         count3._oq2035 = Boolean(int(param1[21]));
         count3.urlString9 = param1[22];
         count3._qb5661 = int(param1[23]);
         count3.count8 = int(param1[24]);
         count3.member = int(param1[25]);
         count3.textString1 = String(param1[26]);
         count3.isEnabled2 = Boolean(int(param1[27]));
         count3._uf6036 = int(param1[28]);
         count3._jr10446 = int(param1[29]);
         var count7:int = int(param1[30]);
         count3._ki11521 = String(param1[32]);
         count3._je8982 = int(param1[33]);
         count3.creditosDiamante = int(param1[34]);
         var items:Array = SocketManager.getList1(param1[31]);
         count3._fd11666(DatatypesModel._to2262,items[0] == "1");
         count3._fd11666(DatatypesModel._xt5593,items[1] == "1");
         while(count8 < count1.length)
         {
            count3._bj2239(count1[count8],count2[count8]);
            count8++;
         }
         if(param2 && count7 != count)
         {
            count3._on1372();
            count3._xm23(isEnabled,isEnabled1);
         }
         count3._ty2041();
      }
      
      public function init(param1:Object = null) : void
      {
         if(param1 == null || !(param1 is MovieClip))
         {
            return;
         }
      }
      
      public function authenticateUser(param1:MovieClip, param2:MovieClip) : void
      {
         this._np1587 = new LoginModel();
         this._ca5616 = param2;
         this._by9792 = param1;
         this.authenticateUser1();
         this._xo11249(count);
      }
      
      public function initialize(param1:MovieClip) : void
      {
         if(param1 != null && !this.isEnabled2)
         {
            this._hv14331 = param1;
            _xw1367.getInstance()._uc3178(param1,_xw1367.count5);
            param1.yingoInit();
            this.isEnabled2 = true;
         }
      }
      
      private function authenticateUser1() : void
      {
         _xw1367.getInstance()._uc3178(this._ca5616,_xw1367.count5);
         _xw1367.getInstance()._uc3178(this._by9792,_xw1367.count5);
         this._ue13290 = new LoginUtils(this._by9792,this);
         this._kn9534 = new LoginUIController(this._by9792,this);
         this._hj2893();
         this._by9792.tabChildren = true;
      }
      
      private function _kr13164(param1:MovieClip) : void
      {
      }
      
      private function _hj2893() : void
      {
         MovieClip(this._by9792[textString1]).visible = false;
         MovieClip(this._by9792[textString2]).visible = false;
         MovieClip(this._by9792[textString3]).visible = false;
         switch(Configuration.urlString9)
         {
            case Configuration.urlString4:
               MovieClip(this._by9792[textString1]).visible = false;
               return;
            case Configuration.urlString5:
               MovieClip(this._by9792[textString2]).visible = false;
               return;
            case Configuration.urlString7:
               MovieClip(this._by9792[textString3]).visible = true;
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this._kg15885.removeEventListener(LoginEvents.textString,this.authenticateUser);
         this._hd13280.removeEventListener(AntitimosEvents.textString,this.authenticateUser);
         if(this.isEnabled2)
         {
            _xw1367.getInstance().move2(this._hv14331,_xw1367.count5);
            this._hv14331.destroyYingo();
            this.isEnabled2 = false;
         }
         _xw1367.getInstance().move2(this._by9792,_xw1367.count5);
         _xw1367.getInstance().move2(this._ca5616,_xw1367.count5);
         this._kg15885.destroy();
         this._kn9534.destroy();
         this._ue13290.destroy();
         if(this._ig2181 != null)
         {
            this._ig2181.destroy();
            this._ig2181 = null;
         }
         this._kn9534 = null;
         this._by9792 = null;
         this._ca5616 = null;
         this._kg15885 = null;
         if(this._rg8557 != null)
         {
            this._rg8557.destroy();
            this._rg8557 = null;
         }
      }
      
      private function _xo11249(param1:int, param2:int = 0) : void
      {
         if(this._ig2181 != null)
         {
            this._ig2181.authenticateUser2();
         }
         switch(param1)
         {
            case count:
               param1 = count2;
            case count2:
               if(this._ig2181 != null)
               {
                  this._ig2181.show();
               }
               if(Configuration.urlString9 == Configuration.urlString5)
               {
               }
               switch(param2)
               {
                  case count16:
                     this._ue13290._pd1002(LoginUtils.textString4);
                     this._ue13290.startTimer();
                     break;
                  case count15:
                     this._ue13290._pd1002(LoginUtils.textString5);
                     this._ue13290.startTimer();
                     break;
                  case count17:
                     this._ue13290._pd1002(LoginUtils.textString17);
                     break;
                  default:
                     this._ue13290._pd1002(LoginUtils.textString7);
               }
               this._kn9534._pd1002(LoginUIController.textString34);
               break;
            case count3:
               if(this._ig2181 != null)
               {
                  this._ig2181.show();
               }
               this._ue13290._pd1002(LoginUtils.textString6);
               this._kn9534._pd1002(LoginUIController.textString36);
               break;
            case count4:
               if(this._ig2181 != null)
               {
                  this._ig2181.show();
               }
               this._ue13290._pd1002(LoginUtils.textString6);
               break;
            case count5:
               switch(param2)
               {
                  case count18:
                     this._ue13290._pd1002(LoginUtils.textString9);
                     break;
                  case count19:
                     this._ue13290._pd1002(LoginUtils.textString10);
                     break;
                  default:
                     this._ue13290._pd1002(LoginUtils.textString7);
               }
               this._kn9534._pd1002(LoginUIController.textString37);
               break;
            case count6:
               this._ue13290._pd1002(LoginUtils.textString6);
               this._kn9534._pd1002(LoginUIController.textString38);
               break;
            case count7:
               this._ue13290._pd1002(LoginUtils.textString7);
               this._kn9534._pd1002(LoginUIController.textString39);
               break;
            case count8:
               switch(param2)
               {
                  case count20:
                     this._ue13290._pd1002(LoginUtils.textString11);
                     break;
                  case count21:
                     this._ue13290._pd1002(LoginUtils.textString10);
                     break;
                  default:
                     this._ue13290._pd1002(LoginUtils.textString13);
               }
               this._kn9534._pd1002(LoginUIController.textString40);
               break;
            case count9:
               this._ue13290._pd1002(LoginUtils.textString6);
               this._kn9534._pd1002(LoginUIController.textString41);
               break;
            case count10:
               this._ue13290._pd1002(LoginUtils.textString7);
               this._kn9534._pd1002(LoginUIController.textString42);
               break;
            case count11:
               switch(param2)
               {
                  case count22:
                  case count23:
                     this._ue13290._pd1002(LoginUtils.textString10);
                     break;
                  default:
                     this._ue13290._pd1002(LoginUtils.textString15);
               }
               this._kn9534._pd1002(LoginUIController.textString43);
               break;
            case count12:
               this._ue13290._pd1002(LoginUtils.textString6);
               this._kn9534._pd1002(LoginUIController.textString44);
               break;
            case count13:
               this._ue13290._pd1002(LoginUtils.textString14);
               this._kn9534._pd1002(LoginUIController.textString45);
               break;
            case count14:
               this._ue13290._pd1002(LoginUtils.textString7);
               this._kn9534._pd1002(LoginUIController.textString46);
         }
         if(param1 == 2 && param2 == 0)
         {
            if(this._ig2181 != null)
            {
               this._ig2181.show();
            }
            this._ue13290._pd1002(LoginUtils.textString6);
            this._kn9534._pd1002(LoginUIController.textString36);
            param1 = 3;
            this._kn9534.textString47 = "TicketSSO";
            this._kn9534.textString48 = ".easteregg";
            GoogleAnalytics.start(GoogleAnalytics.textString1);
         }
         this.status = param1;
      }
      
      public function _mp5106() : int
      {
         return this.status;
      }
      
      public function _iw15114() : void
      {
         if(!this.isEnabled3)
         {
            this.isEnabled3 = true;
            this._by9792.gotoAndPlay("intro");
         }
      }
      
      public function loop() : void
      {
         if(this._by9792 == null)
         {
            return;
         }
         this._kn9534.loop(this.status);
         if(this.status == count2)
         {
            this._ue13290.loop();
            if(this._ig2181 != null)
            {
               this._ig2181.loop();
            }
         }
         if(this._rg8557 != null)
         {
            this._rg8557.loop();
         }
      }
      
      public function authenticateUser2(param1:String, param2:String) : void
      {
         if(param1.length <= 0 || param2.length <= 0)
         {
            this._ue13290._pd1002(LoginUtils.textString8);
            return;
         }
         if(!UtilsUtils._gv3731(param2))
         {
            this._ue13290._pd1002(LoginUtils.textString9);
            return;
         }
         this._ue13290._pd1002(LoginUtils.textString6);
         this._kn9534.textString47 = param1;
         this._kn9534.textString48 = param2;
         this._hd13280.authenticateUser2(param1,param2);
         this.textString11 = param1;
         this._xo11249(count6);
      }
      
      public function _fi3087() : void
      {
         this._xo11249(count5);
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:UserSession = null;
         var count3:Array = param1.items;
         var count1:uint = uint(String(count3[1]).charCodeAt(0));
         var count2:int = Number(String(count3[2]));
         if(this.status == count3 || this.status == count4 && count1 == MessageTypeConstants.count2)
         {
            switch(count2)
            {
               case LoginProtocol.count:
               case LoginProtocol.count1:
                  this._xo11249(count2,count16);
                  return;
               case LoginProtocol.count4:
                  this._xo11249(count2,count15);
                  return;
               case LoginProtocol.count3:
                  GoogleAnalytics.finish(GoogleAnalytics.textString1);
                  UserSession.getInstance().isEnabled = this._kn9534.textString48;
                  _hv6433(count3,true);
                  this.textString7 = count26;
                  return;
               case LoginProtocol.count5:
                  count3.shift();
                  count3.shift();
                  count3.shift();
                  count = UserSession.getInstance();
                  count.count1 = uint(count3.shift());
                  count.colors = new ColorModel(count3.shift());
                  this.textString7 = count28;
                  return;
               case LoginProtocol.count6:
                  this.textString10 = String(count3[3]);
                  this.count34 = int(count3[4]);
                  this.textString7 = count29;
                  return;
               default:
                  this.logs._kp3815(new Logs(Logger.count,"LoginModule.reciebeMsg.SUBCODE_LOBBY_LOGGIN",count3.toString()));
                  return;
            }
         }
         else
         {
            switch(count1)
            {
               case LoginProtocol.count14:
                  switch(count2)
                  {
                     case LoginEvents.count25:
                        this._xo11249(count7);
                        this.count33 = 0;
                        break;
                     case LoginEvents.count24:
                        this._xo11249(count5,count18);
                        break;
                     case LoginEvents.count26:
                        this._xo11249(count5,count19);
                        break;
                     default:
                        this.logs._kp3815(new Logs(Logger.count,"LoginModule.reciebeMsg.SUBCODE_ANTITIMOS_NAME_AND_MAIL",count3.toString()));
                        return;
                  }
                  return;
               case LoginProtocol.count15:
                  switch(count2)
                  {
                     case LoginEvents.count28:
                        this._xo11249(count10);
                        break;
                     case LoginEvents.count27:
                        ++this.count33;
                        if(this.count33 < count24)
                        {
                           this._xo11249(count8,count20);
                           break;
                        }
                        this._xo11249(count14);
                        break;
                     case LoginEvents.count29:
                        this._xo11249(count8,count21);
                        break;
                     default:
                        this.logs._kp3815(new Logs(Logger.count,"LoginModule.reciebeMsg.SUBCODE_ANTITIMOS_CODE_VERIFICAR",count3.toString()));
                        return;
                  }
                  return;
               case LoginProtocol.count7:
                  switch(count2)
                  {
                     case LoginEvents.count31:
                        this._xo11249(count13);
                        break;
                     case LoginEvents.count30:
                        this._xo11249(count11,count22);
                        break;
                     case LoginEvents.count32:
                        this._xo11249(count11,count23);
                        break;
                     default:
                        this.logs._kp3815(new Logs(Logger.count,"LoginModule.reciebeMsg.SUBCODE_ANTITIMOS_NUEVA_PASS",count3.toString()));
                        return;
                  }
                  return;
               case LoginProtocol.count9:
                  switch(count2)
                  {
                     case LoginProtocol.count12:
                        this._kn9534.onClick(this._np1587.textString49);
                        break;
                     case LoginProtocol.count:
                        this._kn9534.onClick(this._np1587.textString50);
                  }
                  return;
               default:
                  return;
            }
         }
      }
      
      public function handleSocket(param1:String, param2:String) : void
      {
         if(param1.length <= 0 || param2.length <= 0)
         {
            this._ue13290._pd1002(LoginUtils.textString8);
            this._ue13290.startTimer();
            return;
         }
         this._kn9534.textString47 = param1;
         this._kn9534.textString48 = param2;
         this._xo11249(count3);
         GoogleAnalytics.start(GoogleAnalytics.textString1);
         LoginProtocol(this._kg15885).handleSocket(param1,param2);
      }
      
      public function _dt7604() : void
      {
         this._xo11249(count4);
      }
      
      public function _bi11025() : void
      {
         UserSession.getInstance().authenticateUser();
         this.textString7 = count27;
      }
      
      public function authenticateUser5(param1:String) : void
      {
         if(param1.length < 1)
         {
            this._ue13290._pd1002(LoginUtils.textString12);
            return;
         }
         this._kn9534.textString47 = param1;
         this._hd13280.handleSocket1(param1);
         this._xo11249(count9);
         this.textString9 = param1;
      }
      
      public function _uc8761() : void
      {
         this._xo11249(count11);
      }
      
      public function _pg12839() : void
      {
         this._xo11249(count2);
      }
      
      public function authenticateUser6(param1:String, param2:String) : void
      {
         if(param1.length < 1 || param2.length < 1)
         {
            this._ue13290._pd1002(LoginUtils.textString8);
            return;
         }
         if(param1 != param2)
         {
            this._ue13290._pd1002(LoginUtils.textString16);
            return;
         }
         if(param1.length < 4)
         {
            this._ue13290._pd1002(LoginUtils.textString18);
            return;
         }
         if(this.textString11.toLowerCase() == param1.toLowerCase() || !UtilsUtils._uj937(param1))
         {
            this._ue13290._pd1002(LoginUtils.textString19);
            return;
         }
         this._kn9534.textString47 = param1;
         this._kn9534.textString48 = param2;
         this._hd13280.handleSocket2(this.textString9,param1);
         this._xo11249(count12);
      }
      
      public function _eo9844() : void
      {
         this._xo11249(count2,count17);
      }
      
      public function _pr3349() : void
      {
         this._xo11249(count2);
      }
      
      public function _hi1295() : void
      {
         this._xo11249(count7);
      }
      
      public function _ed10464() : void
      {
         this._xo11249(count8);
      }
      
      private function rollOver(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            param1.currentTarget.gotoAndStop(2);
         }
      }
      
      private function stop(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            param1.currentTarget.gotoAndStop(1);
         }
      }
      
      private function stop1(param1:MovieClip) : void
      {
         param1.gotoAndStop(1);
         param1.addEventListener(MouseEvent.ROLL_OVER,this.rollOver);
         param1.addEventListener(MouseEvent.ROLL_OUT,this.stop);
      }
      
      private function move(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.ROLL_OVER,this.rollOver);
         param1.removeEventListener(MouseEvent.ROLL_OUT,this.stop);
      }
      
      public function authenticateUser7() : void
      {
         switch(this.count32)
         {
            case LoginModule.count26:
               this._jj4065._tu4337();
               LoadersManager.getInstance()._lm5662._bl5830 = 10;
               this._jj4065._xd1691();
               this._jj4065.isEnabled1 = false;
               return;
            case LoginModule.count27:
               this._jj4065._tu4337();
               (ServiceLocator.get(ServiceManager) as ServiceManager).loadResource("/registration/start/");
               ChoosepersonModel._vt12942(ChoosepersonModel._od861);
               this._jj4065._ck9773();
               this._jj4065.isEnabled1 = true;
               return;
            case LoginModule.count28:
               this._jj4065._tu4337();
               LoadersManager.getInstance()._lm5662._bl5830 = 10;
               this._jj4065._xd1691();
               this._jj4065.isEnabled1 = false;
               this._jj4065.isEnabled2 = true;
               return;
            case LoginModule.count29:
               this._jj4065._ey14488();
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
         return this._kg15885;
      }
      
      public function set _ud1642(param1:ModuleManager) : void
      {
         this._kg15885 = LoginProtocol(param1);
      }
      
      public function _rw730() : void
      {
         isEnabled = !isEnabled;
      }
      
      public function _rc302() : void
      {
         isEnabled1 = !isEnabled1;
         if(isEnabled1)
         {
            this._kn9534._tc3420.show();
         }
      }
   }
}

