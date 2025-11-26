package src.modules.creditos
{
   import flash.events.*;
   import flash.utils.*;
   import src.ApplicationMain;
   import src.allData.*;
   import src.logs.*;
   import src.multiuser.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class CreditsManager extends EventDispatcher
   {
      
      private static var count:Number;
      
      public static const textString:String = "update_time_silver_coins";
      
      public static const count1:int = 10;
      
      public static const count2:int = 10;
      
      private var _as8760:ApplicationMain;
      
      private var _yl947:SocketManager;
      
      private var logs:Logger;
      
      private var _dr1773:UserSession;
      
      private var count3:int;
      
      private var count4:int;
      
      private var _vs12004:Timer;
      
      private var _ea12289:Timer;
      
      private var _diamantes:int;
      
      public function CreditsManager(param1:ApplicationMain)
      {
         super();
         this._as8760 = param1;
         this._yl947 = SocketManager.getInstance();
         this.logs = Logger.getInstance();
         this._dr1773 = UserSession.getInstance();
         param1._fy119.addEventListener(CreditosEvents.textString,this.handleSocket);
      }
      
      public static function get _cd5741() : Number
      {
         return count;
      }
      
      public function init() : void
      {
         this.start();
      }
      
      private function move() : void
      {
         if(this._vs12004 != null)
         {
            this._vs12004.stop();
            this._vs12004.removeEventListener(TimerEvent.TIMER,this._bx3285);
            this._vs12004 = null;
         }
      }
      
      private function start() : void
      {
         this.move();
         this._vs12004 = new Timer(60000,0);
         this._vs12004.addEventListener(TimerEvent.TIMER,this._bx3285);
         this._vs12004.start();
         this._bx3285();
      }
      
      private function _bx3285(param1:TimerEvent = null) : void
      {
         this._as8760._fy119.handleSocket();
      }
      
      private function move1() : void
      {
         if(this._ea12289 != null)
         {
            this._ea12289.stop();
            this._ea12289.removeEventListener(TimerEvent.TIMER,this._yn12405);
            this._ea12289 = null;
         }
      }
      
      private function start1() : void
      {
         this.move1();
         this._ea12289 = new Timer(1000);
         this._ea12289.addEventListener(TimerEvent.TIMER,this._yn12405);
         this._ea12289.start();
      }
      
      private function _yn12405(param1:TimerEvent = null) : void
      {
         count -= 1 / 60;
      }
      
      private function handleSocket(param1:CreditosEvents) : void
      {
         var count7:int = int(String(param1.items[0]).charCodeAt(0));
         switch(count7)
         {
            case SocketManager.count48:
               if(param1.items.length < 2)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"GameLoop.onCreditosEvent Oro",param1.items.toString()));
                  return;
               }
               var count:int = int(param1.items[1]);
               this._sl1123(0);
               return;
               break;
            case 226:
               if(param1.items.length < 2)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"GameLoop.onCreditosEvent Diamante",param1.items.toString()));
                  return;
               }
               count = int(param1.items[1]);
               this._sumaDiamantes(0);
               return;
               break;
            case 227:
               if(param1.items.length < 2)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"GameLoop.onCreditosEvent Diamante",param1.items.toString()));
                  return;
               }
               count = int(param1.items[1]);
               this._restaDiamantes(0);
               return;
               break;
            case SocketManager.count52:
               if(param1.items.length < 2)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"GameLoop.onCreditosEvent Plata",param1.items.toString()));
                  return;
               }
               var count3:int = int(param1.items[1]);
               this._rf407(0);
               this._as8760._fy119.handleSocket();
               return;
               break;
            case SocketManager.count47:
               if(param1.items.length < 2)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"GameLoop.onCreditosEvent Restar Oro",param1.items.toString()));
                  return;
               }
               var count1:int = int(param1.items[1]);
               this._cc14314(0);
               return;
               break;
            case SocketManager.count54:
               if(param1.items.length < 2)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"GameLoop.onCreditosEvent Restar Plata",param1.items.toString()));
                  return;
               }
               var count2:int = int(param1.items[1]);
               this._kx5303(0);
               return;
               break;
            case SocketManager.count39:
               count = int(param1.items[1]) / 60;
               this.start1();
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
         this.count3 = 0;
         this._as8760.stage.addEventListener(Event.ENTER_FRAME,this._oa14441);
      }
      
      private function _oa14441(param1:Event) : void
      {
         ++this.count3;
         if(this.count3 == 1)
         {
            Utils._iq4270((ServiceLocator.get(ResourceManager) as ResourceManager)._ix8228("audioLibrary.swf","InboxCreditSound"));
         }
         else if(this.count3 >= count1)
         {
            Utils._iq4270((ServiceLocator.get(ResourceManager) as ResourceManager)._ix8228("audioLibrary.swf","InboxCreditTicMetalSound"));
            if(this.count3 - count1 - count2 > 0)
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
            Utils._iq4270((ServiceLocator.get(ResourceManager) as ResourceManager)._ix8228("audioLibrary.swf","InboxCreditSound"));
         }
         else if(this._diamantes >= count1)
         {
            Utils._iq4270((ServiceLocator.get(ResourceManager) as ResourceManager)._ix8228("audioLibrary.swf","InboxCreditTicMetalSound"));
            if(this._diamantes - count1 - count2 > 0)
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
         this.count4 = 0;
         this._as8760.stage.addEventListener(Event.ENTER_FRAME,this._sm14685);
      }
      
      private function _sm14685(param1:Event) : void
      {
         ++this.count4;
         if(this.count4 == 1)
         {
            Utils._iq4270((ServiceLocator.get(ResourceManager) as ResourceManager)._ix8228("audioLibrary.swf","InboxCreditSound"));
         }
         else if(this.count4 >= count1)
         {
            Utils._iq4270((ServiceLocator.get(ResourceManager) as ResourceManager)._ix8228("audioLibrary.swf","InboxCreditTicMetalSound"));
            if(this.count4 - count1 - count2 > 0)
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
            this._as8760._lp469.baseChat.move4();
         }
         if(this._as8760.chooseScene != null && this._as8760.chooseScene._fd7907 != null)
         {
            this._as8760.chooseScene._fd7907.move4();
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
            this._as8760._lp469.baseChat.move5();
         }
         if(this._as8760.chooseScene != null && this._as8760.chooseScene._fd7907 != null)
         {
            this._as8760.chooseScene._fd7907.move5();
         }
      }
   }
}

