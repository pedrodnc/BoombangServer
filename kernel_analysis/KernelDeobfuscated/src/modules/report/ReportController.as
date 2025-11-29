package src.modules.report
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class ReportController extends EventDispatcher implements ModuleManager
   {
      
      public static const count:int = 121;
      
      public static const count1:int = 120;
      
      public static const count2:int = 122;
      
      private var _gh9645:SocketManager;
      
      public function ReportController()
      {
         super();
         this.multiuser = SocketManager.getInstance();
         this.multiuser.addEventListener(ReportEvents.textString,this.authenticateUser);
      }
      
      public function init() : void
      {
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         dispatchEvent(new ReportEvents(ReportEvents.textString,param1.items));
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(ReportEvents.textString,this.authenticateUser);
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
         count.push(String.fromCharCode(SocketManager.count78));
         count.push(String.fromCharCode(count));
         count.push(param1.toString());
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket1(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count78));
         count.push(String.fromCharCode(count2));
         count.push(param1.toString());
         this.multiuser._er9795(count,2);
      }
      
      public function handleSocket2(param1:int) : void
      {
         var count:Array = new Array();
         count.push(String.fromCharCode(SocketManager.count78));
         count.push(String.fromCharCode(count1));
         count.push(param1.toString());
         this.multiuser._er9795(count,2);
      }
   }
}

