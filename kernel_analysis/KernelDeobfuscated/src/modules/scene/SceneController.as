package src.modules.scene
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class SceneController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 120;
      
      private var _gh9645:SocketManager;
      
      public function SceneController()
      {
         super();
         this._gh9645 = SocketManager.getInstance();
         this._gh9645.addEventListener(SceneEvents.textString,this.authenticateUser);
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
      
      public function destroy() : void
      {
         this._gh9645.removeEventListener(SceneEvents.textString,this.authenticateUser);
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:Array = param1.items;
         var count3:int = int(String(count[0]).charCodeAt(0));
         var count1:int = int(String(count[1]).charCodeAt(0));
         count.shift();
         switch(count1)
         {
            case count:
               dispatchEvent(new SceneEvents(SceneEvents.textString1,count));
               return;
            default:
               return;
         }
      }
   }
}

