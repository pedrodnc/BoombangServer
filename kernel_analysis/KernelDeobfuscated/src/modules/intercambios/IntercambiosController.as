package src.modules.intercambios
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class IntercambiosController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 120;
      
      public static const count1:int = 121;
      
      public static const count2:int = 122;
      
      public static const count3:int = 123;
      
      public static const count4:int = 124;
      
      public static const count5:int = 125;
      
      public static const count6:int = 126;
      
      public static const count7:int = 127;
      
      public static const count8:int = 128;
      
      public static const count9:int = 129;
      
      public static const count10:int = 130;
      
      private var _gh9645:SocketManager;
      
      public function IntercambiosController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(IntercambiosEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         dispatchEvent(new IntercambiosEvents(IntercambiosEvents.textString,param1.items));
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(IntercambiosEvents.textString,this.authenticateUser);
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
      
      public function handleSocket(param1:int, param2:Boolean) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count76));
         count3.push(String.fromCharCode(count6));
         count3.push(param1);
         if(param2)
         {
            count3.push("1");
         }
         else
         {
            count3.push("0");
         }
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket1(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count76));
         count3.push(String.fromCharCode(count));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket2(param1:int, param2:int, param3:int, param4:int) : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count76));
         count2.push(String.fromCharCode(count1));
         count2.push(param1);
         count2.push(param2);
         count2.push(param3);
         count2.push(param4);
         this.multiuser._er9795(count2,2);
      }
      
      public function handleSocket3(param1:int, param2:int, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count76));
         count1.push(String.fromCharCode(count4));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket4(param1:int, param2:int, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count76));
         count1.push(String.fromCharCode(count2));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket5(param1:int, param2:int, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count76));
         count1.push(String.fromCharCode(count3));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
   }
}

