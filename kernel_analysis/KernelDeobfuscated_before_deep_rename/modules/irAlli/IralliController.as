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
      
      public static const _ai7182:int = 0;
      
      private var _ju13599:int;
      
      private var _id7327:IralliController;
      
      private var logs:Logger;
      
      private var _ut4147:NavigationmenuModel;
      
      private var _kf11372:int;
      
      private var _hw14129:int;
      
      private var state:Boolean;
      
      public function IralliController()
      {
         super();
         this._ut4147 = new NavigationmenuModel();
         this._id7327 = new IralliController();
         this._id7327.addEventListener(NavigationManager._ph1174,this._bw11981);
         this._jd12664 = _ai7182;
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
      
      public function get _jd12664() : int
      {
         return this._ju13599;
      }
      
      public function set _jd12664(param1:int) : void
      {
         this._ju13599 = param1;
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
         return this._kf11372;
      }
      
      public function _du13716(param1:SceneTransition) : void
      {
         if(this.state)
         {
            param1._iw5858(this._ut4147,"",this._hw14129);
            this.state = false;
         }
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc3_[0]).charCodeAt(0));
         switch(_loc2_)
         {
            case SocketManager._ct9708:
               if(_loc3_.length < 8)
               {
                  this.logs._kp3815(new Logs(Logger._ny10327,"IrAlliModule.reciebeMsg",_loc3_.toString()));
                  return;
               }
               this._ut4147 = new NavigationmenuModel();
               this._ut4147._ls5877 = NavigationmenuModel._bn928(int(_loc3_[1]));
               this._ut4147._kb5211 = NavigationmenuModel._bn928(int(_loc3_[2]));
               this._ut4147._vn12441 = int(_loc3_[3]);
               this._ut4147._un6586 = int(_loc3_[4]);
               this._ut4147._eb11619 = int(_loc3_[5]);
               this._ut4147._fq658 = int(_loc3_[6]);
               this._ut4147.name = "";
               this._kf11372 = int(_loc3_[7]);
               this._hw14129 = int(_loc3_[8]);
               this.state = true;
               dispatchEvent(new NavigationManager(NavigationManager._ph1174,_loc3_));
               return;
               break;
            default:
               return;
         }
      }
   }
}

