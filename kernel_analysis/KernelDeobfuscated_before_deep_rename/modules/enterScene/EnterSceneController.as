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
         this.multiuser.addEventListener(EnterSceneController._vu5480,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:Array = param1._lv9976;
         var _loc3_:uint = uint(String(_loc2_[0]).charCodeAt(0));
         switch(_loc3_)
         {
            case SocketManager._al12707:
            case SocketManager._uy12212:
            case SocketManager._ha3183:
            case SocketManager._pw2177:
            case SocketManager._dx1133:
            case SocketManager._gl14626:
               dispatchEvent(new EnterSceneController(EnterSceneController._vu5480,_loc2_));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(EnterSceneController._vu5480,this._bw11981);
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
      
      public function _ql13733(param1:NavigationmenuModel, param2:String, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(SocketManager._uy12212));
         _loc4_.push(String.fromCharCode(SocketManager._ya8551));
         _loc4_.push(String(param1._kb5211.id));
         _loc4_.push(String(param1._eb11619));
         _loc4_.push(param2);
         _loc4_.push(param3);
         _loc4_.push(128);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _jq14714(param1:NavigationmenuModel, param2:String, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(SocketManager._uy12212));
         _loc4_.push(String(param1._kb5211.id));
         _loc4_.push(String(param1._eb11619));
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,1);
      }
      
      public function _lu14453() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(SocketManager._uy12212));
         _loc1_.push(String.fromCharCode(SocketManager._sp15836));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _mx10477(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(SocketManager._hb6099));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,1);
      }
      
      public function _em15151() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(SocketManager._uy12212));
         _loc1_.push(String.fromCharCode(SocketManager._dx1133));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _lm10631(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(SocketManager._bt15669));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,1);
      }
   }
}

