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
      
      public static var _un7641:Boolean;
      
      public static var _tr4980:Boolean;
      
      private static const _me4511:String = "mcBaseLogin";
      
      private static const _kr8514:String = "mcLogo";
      
      private static const _lh4911:String = "mcLogoChile";
      
      private static const _qm7106:String = "mcLogoIngles";
      
      private static const _qu12201:String = "mcNieve";
      
      private static const _xf10220:String = "mcAnimacion";
      
      private static const _iv2400:String = "mcCopoNieve";
      
      private static const _tn2029:String = "tfNavidad";
      
      private static const _bn1229:int = 1;
      
      private static const _of6266:String = "mcKeko";
      
      public static const _en15300:int = 1;
      
      public static const _ia10448:int = 2;
      
      public static const _qk8597:int = 3;
      
      public static const _bp1548:int = 32;
      
      public static const _he11959:int = 4;
      
      public static const _xk13931:int = 5;
      
      public static const _wd7580:int = 6;
      
      public static const _hd13967:int = 7;
      
      public static const _bi8410:int = 8;
      
      public static const _sg11431:int = 9;
      
      public static const _qy4488:int = 10;
      
      public static const _mp3575:int = 11;
      
      public static const _ai46:int = 12;
      
      public static const _so8932:int = 13;
      
      private static const _np281:int = 104;
      
      private static const _od5768:int = 105;
      
      private static const _qr15075:int = 106;
      
      private static const _tt7272:int = 201;
      
      private static const _ft7575:int = 202;
      
      private static const _nl522:int = 203;
      
      private static const _uc15085:int = 204;
      
      private static const _vd565:int = 205;
      
      private static const _vl5789:int = 206;
      
      private static const _fy13105:int = 5;
      
      public static const _ai7182:int = 0;
      
      public static const _da2020:int = 1;
      
      public static const _lf8419:int = 2;
      
      public static const _np6225:int = 3;
      
      public static const _ao5981:int = 4;
      
      public static const _wb16051:int = 15;
      
      public static const _cb4359:int = 0;
      
      private var _by9792:MovieClip;
      
      private var _ca5616:MovieClip;
      
      private var _hv14331:MovieClip;
      
      private var status:int;
      
      private var _ju13599:int;
      
      private var _hs5293:String;
      
      private var _bq2688:int;
      
      public var _ji5399:String = "";
      
      public var _ux3999:int;
      
      private var _kg15885:LoginProtocol;
      
      private var _ue13290:LoginUtils;
      
      private var _kn9534:LoginUIController;
      
      public var _np1587:LoginModel;
      
      private var _hd13280:LoginEvents;
      
      private var _jt3180:LoginEvents;
      
      private var _ik3507:String;
      
      private var _xv7525:Array;
      
      private var logs:Logger;
      
      private var _ig2181:LoginUtils;
      
      private var _jp6648:Boolean = false;
      
      private var _rg8557:EfectosModel;
      
      private var _uh5246:Boolean;
      
      private var _jj4065:ApplicationMain;
      
      public function LoginModule(param1:ApplicationMain, param2:LoginEvents)
      {
         super();
         this._jj4065 = param1;
         this._kg15885 = new LoginProtocol();
         this._hd13280 = param2;
         this._kg15885.addEventListener(LoginEvents._tf16043,this._bw11981);
         param2.addEventListener(AntitimosEvents._ar3092,this._bw11981);
         this._jd12664 = _ai7182;
         this.logs = Logger.getInstance();
         if(!UserSession.getInstance()._tu10532())
         {
            _un7641 = true;
            _tr4980 = false;
         }
         else
         {
            if(UserSession.getInstance().name != null)
            {
               _un7641 = true;
            }
            else
            {
               _un7641 = false;
            }
            if(UserSession.getInstance()._hw3203 != null)
            {
               _tr4980 = true;
            }
            else
            {
               _tr4980 = false;
            }
         }
      }
      
      public static function _hv6433(param1:Array, param2:Boolean) : void
      {
         var _loc8_:int = 0;
         var _loc3_:UserSession = UserSession.getInstance();
         _loc3_.name = param1[3];
         _loc3_._jn11596 = int(param1[4]);
         _loc3_.colors = new ColorModel(param1[5]);
         _loc3_._ll5517 = new ColorModel(param1[5]);
         _loc3_._am6464 = param1[6];
         _loc3_.setDate(param1[7]);
         _loc3_._yr4676 = int(param1[8]);
         _loc3_._ma12295 = Boolean(int(param1[10]));
         _loc3_.id = int(param1[11]);
         _loc3_._vm2039 = int(param1[12]);
         _loc3_._dx11054 = int(param1[13]);
         _loc3_._ea4493 = int(param1[14]);
         _loc3_._pm10848 = int(param1[15]);
         _loc3_._tc16118 = int(param1[16]);
         _loc3_._ec10230 = int(param1[17]);
         _loc3_._lf431 = int(param1[18]);
         _loc3_._xj13389 = getTimer() / 1000;
         var _loc4_:Array = SocketManager._go4983(param1[19]);
         var _loc5_:Array = SocketManager._go4983(param1[20]);
         _loc3_._oq2035 = Boolean(int(param1[21]));
         _loc3_._my547 = param1[22];
         _loc3_._qb5661 = int(param1[23]);
         _loc3_._ph14059 = int(param1[24]);
         _loc3_.member = int(param1[25]);
         _loc3_._uu4611 = String(param1[26]);
         _loc3_._ev848 = Boolean(int(param1[27]));
         _loc3_._uf6036 = int(param1[28]);
         _loc3_._jr10446 = int(param1[29]);
         var _loc6_:int = int(param1[30]);
         _loc3_._ki11521 = String(param1[32]);
         _loc3_._je8982 = int(param1[33]);
         _loc3_.creditosDiamante = int(param1[34]);
         var _loc7_:Array = SocketManager._go4983(param1[31]);
         _loc3_._fd11666(DatatypesModel._to2262,_loc7_[0] == "1");
         _loc3_._fd11666(DatatypesModel._xt5593,_loc7_[1] == "1");
         while(_loc8_ < _loc4_.length)
         {
            _loc3_._bj2239(_loc4_[_loc8_],_loc5_[_loc8_]);
            _loc8_++;
         }
         if(param2 && _loc6_ != _bn1229)
         {
            _loc3_._on1372();
            _loc3_._xm23(_un7641,_tr4980);
         }
         _loc3_._ty2041();
      }
      
      public function init(param1:Object = null) : void
      {
         if(param1 == null || !(param1 is MovieClip))
         {
            return;
         }
      }
      
      public function _xv14788(param1:MovieClip, param2:MovieClip) : void
      {
         this._np1587 = new LoginModel();
         this._ca5616 = param2;
         this._by9792 = param1;
         this._yu9555();
         this._xo11249(_en15300);
      }
      
      public function _fx13189(param1:MovieClip) : void
      {
         if(param1 != null && !this._jp6648)
         {
            this._hv14331 = param1;
            _xw1367.getInstance()._uc3178(param1,_xw1367._wa4051);
            param1.yingoInit();
            this._jp6648 = true;
         }
      }
      
      private function _yu9555() : void
      {
         _xw1367.getInstance()._uc3178(this._ca5616,_xw1367._wa4051);
         _xw1367.getInstance()._uc3178(this._by9792,_xw1367._wa4051);
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
         MovieClip(this._by9792[_kr8514]).visible = false;
         MovieClip(this._by9792[_lh4911]).visible = false;
         MovieClip(this._by9792[_qm7106]).visible = false;
         switch(Configuration._qs3725)
         {
            case Configuration._gk8815:
               MovieClip(this._by9792[_kr8514]).visible = false;
               return;
            case Configuration._uo6813:
               MovieClip(this._by9792[_lh4911]).visible = false;
               return;
            case Configuration._gl650:
               MovieClip(this._by9792[_qm7106]).visible = true;
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this._kg15885.removeEventListener(LoginEvents._tf16043,this._bw11981);
         this._hd13280.removeEventListener(AntitimosEvents._ar3092,this._bw11981);
         if(this._jp6648)
         {
            _xw1367.getInstance()._na10792(this._hv14331,_xw1367._wa4051);
            this._hv14331.destroyYingo();
            this._jp6648 = false;
         }
         _xw1367.getInstance()._na10792(this._by9792,_xw1367._wa4051);
         _xw1367.getInstance()._na10792(this._ca5616,_xw1367._wa4051);
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
            this._ig2181._hu12389();
         }
         switch(param1)
         {
            case _en15300:
               param1 = _ia10448;
            case _ia10448:
               if(this._ig2181 != null)
               {
                  this._ig2181._db5584();
               }
               if(Configuration._qs3725 == Configuration._uo6813)
               {
               }
               switch(param2)
               {
                  case _od5768:
                     this._ue13290._pd1002(LoginUtils._pc1360);
                     this._ue13290.startTimer();
                     break;
                  case _np281:
                     this._ue13290._pd1002(LoginUtils._sx11008);
                     this._ue13290.startTimer();
                     break;
                  case _qr15075:
                     this._ue13290._pd1002(LoginUtils._rn9546);
                     break;
                  default:
                     this._ue13290._pd1002(LoginUtils._ab4927);
               }
               this._kn9534._pd1002(LoginUIController._bk1795);
               break;
            case _qk8597:
               if(this._ig2181 != null)
               {
                  this._ig2181._db5584();
               }
               this._ue13290._pd1002(LoginUtils._oc3217);
               this._kn9534._pd1002(LoginUIController._tv14751);
               break;
            case _bp1548:
               if(this._ig2181 != null)
               {
                  this._ig2181._db5584();
               }
               this._ue13290._pd1002(LoginUtils._oc3217);
               break;
            case _he11959:
               switch(param2)
               {
                  case _tt7272:
                     this._ue13290._pd1002(LoginUtils._vv87);
                     break;
                  case _ft7575:
                     this._ue13290._pd1002(LoginUtils._ec7590);
                     break;
                  default:
                     this._ue13290._pd1002(LoginUtils._ab4927);
               }
               this._kn9534._pd1002(LoginUIController._lh10669);
               break;
            case _xk13931:
               this._ue13290._pd1002(LoginUtils._oc3217);
               this._kn9534._pd1002(LoginUIController._of1993);
               break;
            case _wd7580:
               this._ue13290._pd1002(LoginUtils._ab4927);
               this._kn9534._pd1002(LoginUIController._kp2680);
               break;
            case _hd13967:
               switch(param2)
               {
                  case _nl522:
                     this._ue13290._pd1002(LoginUtils._ro13642);
                     break;
                  case _uc15085:
                     this._ue13290._pd1002(LoginUtils._ec7590);
                     break;
                  default:
                     this._ue13290._pd1002(LoginUtils._fb6620);
               }
               this._kn9534._pd1002(LoginUIController._le15070);
               break;
            case _bi8410:
               this._ue13290._pd1002(LoginUtils._oc3217);
               this._kn9534._pd1002(LoginUIController._dm882);
               break;
            case _sg11431:
               this._ue13290._pd1002(LoginUtils._ab4927);
               this._kn9534._pd1002(LoginUIController._gh855);
               break;
            case _qy4488:
               switch(param2)
               {
                  case _vd565:
                  case _vl5789:
                     this._ue13290._pd1002(LoginUtils._ec7590);
                     break;
                  default:
                     this._ue13290._pd1002(LoginUtils._tn7215);
               }
               this._kn9534._pd1002(LoginUIController._bd9003);
               break;
            case _mp3575:
               this._ue13290._pd1002(LoginUtils._oc3217);
               this._kn9534._pd1002(LoginUIController._ld2327);
               break;
            case _ai46:
               this._ue13290._pd1002(LoginUtils._of4874);
               this._kn9534._pd1002(LoginUIController._wf12306);
               break;
            case _so8932:
               this._ue13290._pd1002(LoginUtils._ab4927);
               this._kn9534._pd1002(LoginUIController._kv7740);
         }
         if(param1 == 2 && param2 == 0)
         {
            if(this._ig2181 != null)
            {
               this._ig2181._db5584();
            }
            this._ue13290._pd1002(LoginUtils._oc3217);
            this._kn9534._pd1002(LoginUIController._tv14751);
            param1 = 3;
            this._kn9534._si5141 = "TicketSSO";
            this._kn9534._oa13773 = ".easteregg";
            GoogleAnalytics.start(GoogleAnalytics._jd15318);
         }
         this.status = param1;
      }
      
      public function _mp5106() : int
      {
         return this.status;
      }
      
      public function _iw15114() : void
      {
         if(!this._uh5246)
         {
            this._uh5246 = true;
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
         if(this.status == _ia10448)
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
      
      public function _ud3372(param1:String, param2:String) : void
      {
         if(param1.length <= 0 || param2.length <= 0)
         {
            this._ue13290._pd1002(LoginUtils._ig1045);
            return;
         }
         if(!UtilsUtils._gv3731(param2))
         {
            this._ue13290._pd1002(LoginUtils._vv87);
            return;
         }
         this._ue13290._pd1002(LoginUtils._oc3217);
         this._kn9534._si5141 = param1;
         this._kn9534._oa13773 = param2;
         this._hd13280._ud3372(param1,param2);
         this._ik3507 = param1;
         this._xo11249(_xk13931);
      }
      
      public function _fi3087() : void
      {
         this._xo11249(_he11959);
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:UserSession = null;
         var _loc3_:Array = param1._lv9976;
         var _loc4_:uint = uint(String(_loc3_[1]).charCodeAt(0));
         var _loc5_:int = Number(String(_loc3_[2]));
         if(this.status == _qk8597 || this.status == _bp1548 && _loc4_ == MessageTypeConstants._gp3729)
         {
            switch(_loc5_)
            {
               case LoginProtocol._jy8090:
               case LoginProtocol._qv2244:
                  this._xo11249(_ia10448,_od5768);
                  return;
               case LoginProtocol._hr3698:
                  this._xo11249(_ia10448,_np281);
                  return;
               case LoginProtocol._hj3452:
                  GoogleAnalytics.finish(GoogleAnalytics._jd15318);
                  UserSession.getInstance()._hw3203 = this._kn9534._oa13773;
                  _hv6433(_loc3_,true);
                  this._jd12664 = _da2020;
                  return;
               case LoginProtocol._ec8158:
                  _loc3_.shift();
                  _loc3_.shift();
                  _loc3_.shift();
                  _loc2_ = UserSession.getInstance();
                  _loc2_._jn11596 = uint(_loc3_.shift());
                  _loc2_.colors = new ColorModel(_loc3_.shift());
                  this._jd12664 = _np6225;
                  return;
               case LoginProtocol._wf4416:
                  this._ji5399 = String(_loc3_[3]);
                  this._ux3999 = int(_loc3_[4]);
                  this._jd12664 = _ao5981;
                  return;
               default:
                  this.logs._kp3815(new Logs(Logger._dj10628,"LoginModule.reciebeMsg.SUBCODE_LOBBY_LOGGIN",_loc3_.toString()));
                  return;
            }
         }
         else
         {
            switch(_loc4_)
            {
               case LoginProtocol._yj11239:
                  switch(_loc5_)
                  {
                     case LoginEvents._qc12946:
                        this._xo11249(_wd7580);
                        this._bq2688 = 0;
                        break;
                     case LoginEvents._qf14123:
                        this._xo11249(_he11959,_tt7272);
                        break;
                     case LoginEvents._fb3834:
                        this._xo11249(_he11959,_ft7575);
                        break;
                     default:
                        this.logs._kp3815(new Logs(Logger._dj10628,"LoginModule.reciebeMsg.SUBCODE_ANTITIMOS_NAME_AND_MAIL",_loc3_.toString()));
                        return;
                  }
                  return;
               case LoginProtocol._jb6505:
                  switch(_loc5_)
                  {
                     case LoginEvents._gb10637:
                        this._xo11249(_sg11431);
                        break;
                     case LoginEvents._bi2220:
                        ++this._bq2688;
                        if(this._bq2688 < _fy13105)
                        {
                           this._xo11249(_hd13967,_nl522);
                           break;
                        }
                        this._xo11249(_so8932);
                        break;
                     case LoginEvents._ow5414:
                        this._xo11249(_hd13967,_uc15085);
                        break;
                     default:
                        this.logs._kp3815(new Logs(Logger._dj10628,"LoginModule.reciebeMsg.SUBCODE_ANTITIMOS_CODE_VERIFICAR",_loc3_.toString()));
                        return;
                  }
                  return;
               case LoginProtocol._gj13202:
                  switch(_loc5_)
                  {
                     case LoginEvents._pv1343:
                        this._xo11249(_ai46);
                        break;
                     case LoginEvents._xu15680:
                        this._xo11249(_qy4488,_vd565);
                        break;
                     case LoginEvents._vf14505:
                        this._xo11249(_qy4488,_vl5789);
                        break;
                     default:
                        this.logs._kp3815(new Logs(Logger._dj10628,"LoginModule.reciebeMsg.SUBCODE_ANTITIMOS_NUEVA_PASS",_loc3_.toString()));
                        return;
                  }
                  return;
               case LoginProtocol._es2379:
                  switch(_loc5_)
                  {
                     case LoginProtocol._ps679:
                        this._kn9534._rb12911(this._np1587._tc8552);
                        break;
                     case LoginProtocol._jy8090:
                        this._kn9534._rb12911(this._np1587._ss4773);
                  }
                  return;
               default:
                  return;
            }
         }
      }
      
      public function _jw4048(param1:String, param2:String) : void
      {
         if(param1.length <= 0 || param2.length <= 0)
         {
            this._ue13290._pd1002(LoginUtils._ig1045);
            this._ue13290.startTimer();
            return;
         }
         this._kn9534._si5141 = param1;
         this._kn9534._oa13773 = param2;
         this._xo11249(_qk8597);
         GoogleAnalytics.start(GoogleAnalytics._jd15318);
         LoginProtocol(this._kg15885)._jw4048(param1,param2);
      }
      
      public function _dt7604() : void
      {
         this._xo11249(_bp1548);
      }
      
      public function _bi11025() : void
      {
         UserSession.getInstance()._mq5264();
         this._jd12664 = _lf8419;
      }
      
      public function _vp5863(param1:String) : void
      {
         if(param1.length < 1)
         {
            this._ue13290._pd1002(LoginUtils._ig13224);
            return;
         }
         this._kn9534._si5141 = param1;
         this._hd13280._sp2696(param1);
         this._xo11249(_bi8410);
         this._hs5293 = param1;
      }
      
      public function _uc8761() : void
      {
         this._xo11249(_qy4488);
      }
      
      public function _pg12839() : void
      {
         this._xo11249(_ia10448);
      }
      
      public function _va15090(param1:String, param2:String) : void
      {
         if(param1.length < 1 || param2.length < 1)
         {
            this._ue13290._pd1002(LoginUtils._ig1045);
            return;
         }
         if(param1 != param2)
         {
            this._ue13290._pd1002(LoginUtils._ea8389);
            return;
         }
         if(param1.length < 4)
         {
            this._ue13290._pd1002(LoginUtils._jx971);
            return;
         }
         if(this._ik3507.toLowerCase() == param1.toLowerCase() || !UtilsUtils._uj937(param1))
         {
            this._ue13290._pd1002(LoginUtils._jn14304);
            return;
         }
         this._kn9534._si5141 = param1;
         this._kn9534._oa13773 = param2;
         this._hd13280._qj4113(this._hs5293,param1);
         this._xo11249(_mp3575);
      }
      
      public function _eo9844() : void
      {
         this._xo11249(_ia10448,_qr15075);
      }
      
      public function _pr3349() : void
      {
         this._xo11249(_ia10448);
      }
      
      public function _hi1295() : void
      {
         this._xo11249(_wd7580);
      }
      
      public function _ed10464() : void
      {
         this._xo11249(_hd13967);
      }
      
      private function rollOver(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            param1.currentTarget.gotoAndStop(2);
         }
      }
      
      private function _sj6589(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            param1.currentTarget.gotoAndStop(1);
         }
      }
      
      private function _nc8558(param1:MovieClip) : void
      {
         param1.gotoAndStop(1);
         param1.addEventListener(MouseEvent.ROLL_OVER,this.rollOver);
         param1.addEventListener(MouseEvent.ROLL_OUT,this._sj6589);
      }
      
      private function _ks13299(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.ROLL_OVER,this.rollOver);
         param1.removeEventListener(MouseEvent.ROLL_OUT,this._sj6589);
      }
      
      public function _md13175() : void
      {
         switch(this._ju13599)
         {
            case LoginModule._da2020:
               this._jj4065._tu4337();
               LoadersManager.getInstance()._lm5662._bl5830 = 10;
               this._jj4065._xd1691();
               this._jj4065._um6897 = false;
               return;
            case LoginModule._lf8419:
               this._jj4065._tu4337();
               (ServiceLocator.get(ServiceManager) as ServiceManager)._hv9029("/registration/start/");
               ChoosepersonModel._vt12942(ChoosepersonModel._od861);
               this._jj4065._ck9773();
               this._jj4065._um6897 = true;
               return;
            case LoginModule._np6225:
               this._jj4065._tu4337();
               LoadersManager.getInstance()._lm5662._bl5830 = 10;
               this._jj4065._xd1691();
               this._jj4065._um6897 = false;
               this._jj4065._ly11678 = true;
               return;
            case LoginModule._ao5981:
               this._jj4065._ey14488();
               return;
            default:
               return;
         }
      }
      
      public function get _jd12664() : int
      {
         return this._ju13599;
      }
      
      public function set _jd12664(param1:int) : void
      {
         this._ju13599 = param1;
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
         _un7641 = !_un7641;
      }
      
      public function _rc302() : void
      {
         _tr4980 = !_tr4980;
         if(_tr4980)
         {
            this._kn9534._tc3420._db5584();
         }
      }
   }
}

