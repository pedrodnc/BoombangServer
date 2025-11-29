package src.modules.multiplayerGames
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class MultiplayergamesController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 120;
      
      public static const count1:int = 121;
      
      public static const count2:int = 122;
      
      public static const count3:int = 123;
      
      public static const count4:int = 124;
      
      public static const count5:int = 125;
      
      public static const count6:int = 126;
      
      public static const count7:int = 127;
      
      public static const count8:int = 129;
      
      public static const count9:int = 130;
      
      public static const count10:int = 131;
      
      public static const count11:int = 132;
      
      public static const count12:int = 133;
      
      public static const count13:int = 134;
      
      public static const count14:int = 135;
      
      public static const count15:int = 136;
      
      public static const count16:int = 137;
      
      public static const count17:int = 138;
      
      public static const count18:int = 139;
      
      public static const count19:int = 120;
      
      public static const count20:int = 120;
      
      public static const count21:int = 121;
      
      public static const count22:int = 122;
      
      public static const count23:int = 120;
      
      public static const textString:String = "2";
      
      private var _gh9645:SocketManager;
      
      private var items:Array;
      
      public function MultiplayergamesController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(MultiplayergamesEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:Array = param1.items;
         var count3:uint = uint(String(count[1]).charCodeAt(0));
         switch(count3)
         {
            case count:
            case count1:
            case count5:
            case count6:
            case count7:
            case count8:
            case count9:
            case count3:
            case count10:
            case count4:
            case count11:
            case count12:
            case count13:
            case count14:
            case count15:
            case count16:
            case count17:
            case count18:
               dispatchEvent(new MultiplayergamesEvents(MultiplayergamesEvents.textString,count));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(MultiplayergamesEvents.textString,this.authenticateUser);
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
      
      public function handleSocket(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count46));
         count.push(String.fromCharCode(count));
         count.push(param1);
         this.multiuser._er9795(count,2);
         this.items = new Array();
      }
      
      public function handleSocket1(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count46));
         count.push(String.fromCharCode(count1));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket2(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count46));
         count.push(String.fromCharCode(count2));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket3(param1:int, param2:int, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count46));
         count1.push(String.fromCharCode(count17));
         count1.push(String.fromCharCode(count22));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,3);
      }
   }
}

