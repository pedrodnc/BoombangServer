package src.modules.singleplayerGames
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class SingleplayergamesController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 120;
      
      public static const count1:int = 121;
      
      public static const count2:int = 122;
      
      public static const count3:int = 123;
      
      public static const count4:int = 124;
      
      public static const count5:int = 125;
      
      private var _gh9645:SocketManager;
      
      public function SingleplayergamesController()
      {
         super();
         this._gh9645 = SocketManager.getInstance();
         this._gh9645.addEventListener(SingleplayergamesEvents.textString,this.authenticateUser);
      }
      
      public function get multiuser() : SocketManager
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:SocketManager) : void
      {
         this._gh9645 = param1;
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:uint = 0;
         var count3:Array = param1.items;
         count3.shift();
         count = uint(String(count3[0]).charCodeAt(0));
         switch(count)
         {
            case count:
            case count1:
            case count2:
            case count3:
            case count4:
            case count5:
               dispatchEvent(new SingleplayergamesEvents(SingleplayergamesEvents.textString,count3));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this._gh9645.removeEventListener(SingleplayergamesEvents.textString,this.authenticateUser);
      }
      
      public function handleSocket(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count60));
         count.push(String.fromCharCode(count));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket1(param1:int, param2:int, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count60));
         count1.push(String.fromCharCode(count2));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket2(param1:int, param2:int, param3:int, param4:int) : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count60));
         count2.push(String.fromCharCode(count3));
         count2.push(param1);
         count2.push(param2);
         count2.push(param3);
         count2.push(param4);
         this.multiuser._er9795(count2,2);
      }
      
      public function handleSocket3(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count60));
         count3.push(String.fromCharCode(count1));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket4(param1:int, param2:int, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count60));
         count1.push(String.fromCharCode(count4));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket5(param1:int, param2:int, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count60));
         count1.push(String.fromCharCode(count5));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
   }
}

