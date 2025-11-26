package src.modules.objetos
{
   import flash.events.EventDispatcher;
   import flash.external.*;
   import src.modules.*;
   import src.multiuser.*;
   
   public class ObjetosController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 133;
      
      public static const count1:int = 135;
      
      public static const count2:int = 180;
      
      public static const count3:int = 181;
      
      public static const count4:int = 134;
      
      public static const count5:int = 137;
      
      public static const count6:int = 0;
      
      public static const count7:int = 1;
      
      public static const count8:int = 2;
      
      public static const count9:int = 139;
      
      public static const count10:int = 169;
      
      public static const count11:int = 120;
      
      public static const count12:int = 120;
      
      public static const count13:int = 121;
      
      public static const count14:int = 122;
      
      public var FBr:int = ExternalInterface.call("FBr");
      
      private var _gh9645:SocketManager;
      
      public function ObjetosController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(ObjetosEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:uint = uint(String(param1.items[1]).charCodeAt(0));
         switch(count)
         {
            case count5:
            case count4:
            case count:
            case count1:
            case count9:
            case count10:
            case count2:
            case count3:
               dispatchEvent(new ObjetosEvents(ObjetosEvents.textString,param1.items));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(ObjetosEvents.textString,this.authenticateUser);
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
      
      public function handleSocket(param1:int, param2:String, param3:String) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(ObjetosController.count4));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket1(param1:int, param2:String, param3:String) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count67));
         count1.push(String.fromCharCode(ObjetosController.count5));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket2() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count67));
         count2.push(String.fromCharCode(ObjetosController.count));
         count2.push(this.FBr);
         this.multiuser._er9795(count2,2);
      }
      
      public function handleSocket3() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count67));
         count2.push(String.fromCharCode(ObjetosController.count2));
         this.multiuser._er9795(count2,2);
      }
      
      public function handleSocket4(param1:int, param2:int) : void
      {
         var count3:Array = new Array();
         count3.push(String.fromCharCode(SocketManager.count61));
         count3.push(String.fromCharCode(ObjetosController.count11));
         count3.push(String.fromCharCode(ObjetosController.count12));
         count3.push(param1);
         count3.push(param2);
         this.multiuser._er9795(count3,3);
      }
      
      public function handleSocket5(param1:int, param2:int, param3:int, param4:int) : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count61));
         count2.push(String.fromCharCode(ObjetosController.count11));
         count2.push(String.fromCharCode(ObjetosController.count13));
         count2.push(param1);
         count2.push(param2);
         count2.push(param3);
         count2.push(param4);
         this.multiuser._er9795(count2,3);
      }
      
      public function handleSocket6(param1:int, param2:int, param3:String) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count61));
         count1.push(String.fromCharCode(ObjetosController.count11));
         count1.push(String.fromCharCode(ObjetosController.count14));
         count1.push(param1);
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,3);
      }
   }
}

