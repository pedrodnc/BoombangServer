package src.modules.creditos
{
   import flash.events.*;
   import flash.utils.*;
   import src._wc15106;
   import src.allData.*;
   import src.logs.*;
   import src.multiuser.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class _sd10289 extends EventDispatcher
   {
      
      private static var _dh6980:Number;
      
      public static const _sv2350:String = "update_time_silver_coins";
      
      public static const _cr4002:int = 10;
      
      public static const _hl11530:int = 10;
      
      private var _as8760:_wc15106;
      
      private var _yl947:_jl5367;
      
      private var logs:_qn13596;
      
      private var _dr1773:_hv12530;
      
      private var _rx13882:int;
      
      private var _ih8415:int;
      
      private var _vs12004:Timer;
      
      private var _ea12289:Timer;
      
      private var _diamantes:int;
      
      public function _sd10289(param1:_wc15106)
      {
         super();
         this._as8760 = param1;
         this._yl947 = _jl5367.getInstance();
         this.logs = _qn13596.getInstance();
         this._dr1773 = _hv12530.getInstance();
         param1._fy119.addEventListener(_no1675._vm10696,this._lp55);
      }
      
      public static function get _cd5741() : Number
      {
         return _dh6980;
      }
      
      public function init() : void
      {
         this._jq10872();
      }
      
      private function _ss9761() : void
      {
         if(this._vs12004 != null)
         {
            this._vs12004.stop();
            this._vs12004.removeEventListener(TimerEvent.TIMER,this._bx3285);
            this._vs12004 = null;
         }
      }
      
      private function _jq10872() : void
      {
         this._ss9761();
         this._vs12004 = new Timer(60000,0);
         this._vs12004.addEventListener(TimerEvent.TIMER,this._bx3285);
         this._vs12004.start();
         this._bx3285();
      }
      
      private function _bx3285(param1:TimerEvent = null) : void
      {
         this._as8760._fy119._du667();
      }
      
      private function _iv5844() : void
      {
         if(this._ea12289 != null)
         {
            this._ea12289.stop();
            this._ea12289.removeEventListener(TimerEvent.TIMER,this._yn12405);
            this._ea12289 = null;
         }
      }
      
      private function _cl6428() : void
      {
         this._iv5844();
         this._ea12289 = new Timer(1000);
         this._ea12289.addEventListener(TimerEvent.TIMER,this._yn12405);
         this._ea12289.start();
      }
      
      private function _yn12405(param1:TimerEvent = null) : void
      {
         _dh6980 -= 1 / 60;
      }
      
      private function _lp55(param1:_no1675) : void
      {
         var _loc6_:int = int(String(param1._lv9976[0]).charCodeAt(0));
         switch(_loc6_)
         {
            case _jl5367._kb3245:
               if(param1._lv9976.length < 2)
               {
                  this.logs._kp3815(new _ex15859(_qn13596._ny10327,"GameLoop.onCreditosEvent Oro",param1._lv9976.toString()));
                  return;
               }
               var _loc2_:int = int(param1._lv9976[1]);
               this._sl1123(0);
               return;
               break;
            case 226:
               if(param1._lv9976.length < 2)
               {
                  this.logs._kp3815(new _ex15859(_qn13596._ny10327,"GameLoop.onCreditosEvent Diamante",param1._lv9976.toString()));
                  return;
               }
               _loc2_ = int(param1._lv9976[1]);
               this._sumaDiamantes(0);
               return;
               break;
            case 227:
               if(param1._lv9976.length < 2)
               {
                  this.logs._kp3815(new _ex15859(_qn13596._ny10327,"GameLoop.onCreditosEvent Diamante",param1._lv9976.toString()));
                  return;
               }
               _loc2_ = int(param1._lv9976[1]);
               this._restaDiamantes(0);
               return;
               break;
            case _jl5367._hy10604:
               if(param1._lv9976.length < 2)
               {
                  this.logs._kp3815(new _ex15859(_qn13596._ny10327,"GameLoop.onCreditosEvent Plata",param1._lv9976.toString()));
                  return;
               }
               var _loc3_:int = int(param1._lv9976[1]);
               this._rf407(0);
               this._as8760._fy119._du667();
               return;
               break;
            case _jl5367._dl11506:
               if(param1._lv9976.length < 2)
               {
                  this.logs._kp3815(new _ex15859(_qn13596._ny10327,"GameLoop.onCreditosEvent Restar Oro",param1._lv9976.toString()));
                  return;
               }
               var _loc4_:int = int(param1._lv9976[1]);
               this._cc14314(0);
               return;
               break;
            case _jl5367._xw4458:
               if(param1._lv9976.length < 2)
               {
                  this.logs._kp3815(new _ex15859(_qn13596._ny10327,"GameLoop.onCreditosEvent Restar Plata",param1._lv9976.toString()));
                  return;
               }
               var _loc5_:int = int(param1._lv9976[1]);
               this._kx5303(0);
               return;
               break;
            case _jl5367._kw6674:
               _dh6980 = int(param1._lv9976[1]) / 60;
               this._cl6428();
               return;
            default:
               return;
         }
      }
      
      private function _sl1123(param1:int) : void
      {
         if(this._as8760._lp469 != null && this._as8760._lp469.baseChat != null)
         {
            this._as8760._lp469.baseChat._br12090(param1);
         }
         if(this._as8760.chooseScene != null && this._as8760.chooseScene._fd7907 != null)
         {
            this._as8760.chooseScene._fd7907._br12090(param1);
         }
         this._dr1773._dx11054 += param1;
         this._rx13882 = 0;
         this._as8760.stage.addEventListener(Event.ENTER_FRAME,this._oa14441);
      }
      
      private function _oa14441(param1:Event) : void
      {
         ++this._rx13882;
         if(this._rx13882 == 1)
         {
            _eq14922._iq4270((_lh7543.get(_vy3822) as _vy3822)._ix8228("audioLibrary.swf","InboxCreditSound"));
         }
         else if(this._rx13882 >= _cr4002)
         {
            _eq14922._iq4270((_lh7543.get(_vy3822) as _vy3822)._ix8228("audioLibrary.swf","InboxCreditTicMetalSound"));
            if(this._rx13882 - _cr4002 - _hl11530 > 0)
            {
               this._as8760.stage.removeEventListener(Event.ENTER_FRAME,this._oa14441);
            }
         }
      }
      
      private function _sumaDiamantes(param1:int) : void
      {
         if(this._as8760._lp469 != null && this._as8760._lp469.baseChat != null)
         {
            this._as8760._lp469.baseChat._actualizaDiamante(param1);
         }
         if(this._as8760.chooseScene != null && this._as8760.chooseScene._fd7907 != null)
         {
            this._as8760.chooseScene._fd7907._actualizaDiamante(param1);
         }
         this._dr1773.creditosDiamante += param1;
         this._diamantes = 0;
         this._as8760.stage.addEventListener(Event.ENTER_FRAME,this._sonidoDiamante);
      }
      
      private function _sonidoDiamante(param1:Event) : void
      {
         ++this._diamantes;
         if(this._diamantes == 1)
         {
            _eq14922._iq4270((_lh7543.get(_vy3822) as _vy3822)._ix8228("audioLibrary.swf","InboxCreditSound"));
         }
         else if(this._diamantes >= _cr4002)
         {
            _eq14922._iq4270((_lh7543.get(_vy3822) as _vy3822)._ix8228("audioLibrary.swf","InboxCreditTicMetalSound"));
            if(this._diamantes - _cr4002 - _hl11530 > 0)
            {
               this._as8760.stage.removeEventListener(Event.ENTER_FRAME,this._sonidoDiamante);
            }
         }
      }
      
      private function _rf407(param1:int) : void
      {
         if(this._as8760._lp469 != null && this._as8760._lp469.baseChat != null)
         {
            this._as8760._lp469.baseChat._tl1774(param1);
         }
         if(this._as8760.chooseScene != null && this._as8760.chooseScene._fd7907 != null)
         {
            this._as8760.chooseScene._fd7907._tl1774(param1);
         }
         this._dr1773._ea4493 += param1;
         this._ih8415 = 0;
         this._as8760.stage.addEventListener(Event.ENTER_FRAME,this._sm14685);
      }
      
      private function _sm14685(param1:Event) : void
      {
         ++this._ih8415;
         if(this._ih8415 == 1)
         {
            _eq14922._iq4270((_lh7543.get(_vy3822) as _vy3822)._ix8228("audioLibrary.swf","InboxCreditSound"));
         }
         else if(this._ih8415 >= _cr4002)
         {
            _eq14922._iq4270((_lh7543.get(_vy3822) as _vy3822)._ix8228("audioLibrary.swf","InboxCreditTicMetalSound"));
            if(this._ih8415 - _cr4002 - _hl11530 > 0)
            {
               this._as8760.stage.removeEventListener(Event.ENTER_FRAME,this._sm14685);
            }
         }
      }
      
      private function _cc14314(param1:int) : void
      {
         this._dr1773._dx11054 -= param1;
         if(this._as8760._lp469 != null && this._as8760._lp469.baseChat != null)
         {
            this._as8760._lp469.baseChat._tp10773();
         }
         if(this._as8760.chooseScene != null && this._as8760.chooseScene._fd7907 != null)
         {
            this._as8760.chooseScene._fd7907._tp10773();
         }
      }
      
      private function _restaDiamantes(param1:int) : void
      {
         this._dr1773.creditosDiamante -= param1;
         if(this._as8760._lp469 != null && this._as8760._lp469.baseChat != null)
         {
            this._as8760._lp469.baseChat._restaDiamantes();
         }
         if(this._as8760.chooseScene != null && this._as8760.chooseScene._fd7907 != null)
         {
            this._as8760.chooseScene._fd7907._restaDiamantes();
         }
      }
      
      private function _kx5303(param1:int) : void
      {
         this._dr1773._ea4493 -= param1;
         if(this._as8760._lp469 != null && this._as8760._lp469.baseChat != null)
         {
            this._as8760._lp469.baseChat._qc3804();
         }
         if(this._as8760.chooseScene != null && this._as8760.chooseScene._fd7907 != null)
         {
            this._as8760.chooseScene._fd7907._qc3804();
         }
      }
   }
}

