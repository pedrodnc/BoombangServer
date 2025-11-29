package src.modules.irAlli
{
   import flash.events.EventDispatcher;
   import src.logs.*;
   import src.modules.*;
   import src.modules.enterScene.SceneTransition;
   import src.multiuser.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   
   public class IralliController extends EventDispatcher implements ModuleBase
   {
      
      public static const count25:int = 0;
      
      private var count32:int;
      
      private var _id7327:IralliController;
      
      private var logs:Logger;
      
      private var _ut4147:NavigationmenuModel;
      
      private var count2:int;
      
      private var count2:int;
      
      private var state:Boolean;
      
      public function IralliController()
      {
         super();
         this._ut4147 = new NavigationmenuModel();
         this._id7327 = new IralliController();
         this._id7327.addEventListener(NavigationManager.textString,this.authenticateUser);
         this.textString7 = count25;
         this.logs = Logger.getInstance();
         this.state = false;
      }
      
      public function init(param1:Object = null) : void
      {
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
      }
      
      public function get textString7() : int
      {
         return this.count32;
      }
      
      public function set textString7(param1:int) : void
      {
         this.count32 = param1;
      }
      
      public function get _ud1642() : ModuleManager
      {
         return this._id7327;
      }
      
      public function set _ud1642(param1:ModuleManager) : void
      {
         this._id7327 = new IralliController();
      }
      
      public function getState() : Boolean
      {
         return this.state;
      }
      
      public function _rp14326() : int
      {
         return this.count2;
      }
      
      public function _du13716(param1:SceneTransition) : void
      {
         if(this.state)
         {
            param1._iw5858(this._ut4147,"",this.count2);
            this.state = false;
         }
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:uint = 0;
         var count3:Array = param1.items;
         count = uint(String(count3[0]).charCodeAt(0));
         switch(count)
         {
            case SocketManager.count75:
               if(count3.length < 8)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"IrAlliModule.reciebeMsg",count3.toString()));
                  return;
               }
               this._ut4147 = new NavigationmenuModel();
               this._ut4147._ls5877 = NavigationmenuModel._bn928(int(count3[1]));
               this._ut4147.count2 = NavigationmenuModel._bn928(int(count3[2]));
               this._ut4147._vn12441 = int(count3[3]);
               this._ut4147._un6586 = int(count3[4]);
               this._ut4147._eb11619 = int(count3[5]);
               this._ut4147._fq658 = int(count3[6]);
               this._ut4147.name = "";
               this.count2 = int(count3[7]);
               this.count2 = int(count3[8]);
               this.state = true;
               dispatchEvent(new NavigationManager(NavigationManager.textString,count3));
               return;
               break;
            default:
               return;
         }
      }
   }
}

