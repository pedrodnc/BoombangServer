package src.modules.enterScene
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   import src.tv.boombang.core.datatypes.navigationMenu.NavigationmenuModel;
   
   public class EntersceneController extends EventDispatcher implements ModuleManager
   {
      
      private var _gh9645:SocketManager;
      
      public function EntersceneController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(EnterSceneController._vu5480,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:Array = param1.items;
         var count3:uint = uint(String(count[0]).charCodeAt(0));
         switch(count3)
         {
            case SocketManager.count88:
            case SocketManager.count19:
            case SocketManager.count89:
            case SocketManager.count68:
            case SocketManager.count90:
            case SocketManager.count46:
               dispatchEvent(new EnterSceneController(EnterSceneController._vu5480,count));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(EnterSceneController._vu5480,this.authenticateUser);
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
      
      public function handleSocket1(param1:NavigationmenuModel, param2:String, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count19));
         count1.push(String.fromCharCode(SocketManager.count86));
         count1.push(String(param1.count2.id));
         count1.push(String(param1._eb11619));
         count1.push(param2);
         count1.push(param3);
         count1.push(128);
         this.multiuser._er9795(count1,2);
      }
      
      public function handleSocket2(param1:NavigationmenuModel, param2:String, param3:int) : void
      {
         var count1:Array = new Array();
         count1.push(String.fromCharCode(SocketManager.count19));
         count1.push(String(param1.count2.id));
         count1.push(String(param1._eb11619));
         count1.push(param2);
         count1.push(param3);
         this.multiuser._er9795(count1,1);
      }
      
      public function handleSocket3() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count19));
         count2.push(String.fromCharCode(SocketManager.count87));
         this.multiuser._er9795(count2,2);
      }
      
      public function handleSocket4(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count27));
         count.push(param1);
         this.multiuser._er9795(count,1);
      }
      
      public function handleSocket5() : void
      {
         var count2:Array = new Array();
         count2.push(String.fromCharCode(SocketManager.count19));
         count2.push(String.fromCharCode(SocketManager.count90));
         this.multiuser._er9795(count2,2);
      }
      
      public function handleSocket6(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count33));
         count.push(param1);
         this.multiuser._er9795(count,1);
      }
   }
}

