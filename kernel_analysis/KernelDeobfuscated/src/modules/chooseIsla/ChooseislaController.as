package src.modules.chooseIsla
{
   import flash.events.EventDispatcher;
   import src.logs.*;
   import src.modules.*;
   import src.multiuser.*;
   
   public class ChooseislaController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 124;
      
      public static const count1:int = 120;
      
      public static const count2:int = 123;
      
      public static const count3:int = 125;
      
      public static const count4:int = 126;
      
      public static const count5:int = 127;
      
      public static const count6:int = 129;
      
      public static const count7:int = 130;
      
      public static const count8:int = 131;
      
      public static const count9:int = 132;
      
      public static const count10:int = 149;
      
      public static const count11:int = 150;
      
      private var _gh9645:SocketManager;
      
      public function ChooseislaController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(ChooseislaEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(ChooseislaEvents.textString,this.authenticateUser);
         this.multiuser = null;
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:uint = 0;
         var count3:Array = param1.items;
         count = uint(String(count3[1]).charCodeAt(0));
         switch(count)
         {
            case count:
            case count1:
            case count6:
            case count10:
            case count2:
               dispatchEvent(new ChooseislaEvents(ChooseislaEvents.textString,count3));
               return;
            default:
               Logger.getInstance()._kp3815(new Logs(Logger.count,"ChooseIslaMultiuser.reciebeMsg",count3.toString()));
               return;
         }
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
         count.push(String.fromCharCode(SocketManager.count67));
         count.push(String.fromCharCode(count));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket1(param1:String, param2:int, param3:Boolean) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(count1));
         count1.push(param1);
         count1.push(String(param2));
         count1.push(int(param3));
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket2(param1:Array, param2:int) : void
      {
         var count3:String = null;
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(count5));
         count1.push(param2);
         for each(count3 in param1)
         {
            count1.push(count3);
         }
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket3(param1:Array, param2:int) : void
      {
         var count3:String = null;
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(count11));
         count1.push(param2);
         for each(count3 in param1)
         {
            count1.push(count3);
         }
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket4(param1:Boolean, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count3));
         count3.push(param2);
         count3.push(String(int(param1)));
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket5(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count67));
         count.push(String.fromCharCode(count10));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket6(param1:String, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count6));
         count3.push(param2);
         count3.push(param1);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket7(param1:String, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count4));
         count3.push(param2);
         count3.push(param1);
         this.multiuser._er9795(count3,2);
      }
      
      public function handleSocket8(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count67));
         count.push(String.fromCharCode(count9));
         count.push(param1);
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket9(param1:String, param2:int, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(count7));
         count1.push(param2);
         count1.push(param3);
         count1.push(param1);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket10(param1:int, param2:int, param3:String) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(count8));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket11(param1:String, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count67));
         count3.push(String.fromCharCode(count2));
         count3.push(param2);
         count3.push(param1);
         this.multiuser._er9795(count3,2);
      }
   }
}

