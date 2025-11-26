package src.modules.creditos
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class CreditosController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 120;
      
      public static const count1:int = 121;
      
      private var _gh9645:SocketManager;
      
      public function CreditosController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(CreditosEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         dispatchEvent(new CreditosEvents(CreditosEvents.textString,param1.items));
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(CreditosEvents.textString,this.authenticateUser);
         this.multiuser = null;
      }
      
      public function get multiuser() : SocketManager
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:SocketManager) : void
      {
         this._gh9645 = param1;
      }
      
      public function handleSocket() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count39));
         this.multiuser._er9795(count2,1);
      }
      
      public function handleSocket1(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count50));
         count.push(param1);
         this.multiuser._er9795(count,1);
      }
      
      public function handleSocket2() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count13));
         count2.push(String.fromCharCode(count));
         this.multiuser._er9795(count2,2);
      }
      
      public function handleSocket3(param1:String) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count13));
         count.push(String.fromCharCode(count1));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
   }
}

