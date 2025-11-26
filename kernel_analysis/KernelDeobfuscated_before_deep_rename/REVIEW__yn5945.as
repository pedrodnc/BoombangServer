package src
{
   import flash.display.Sprite;
   import flash.events.*;
   import flash.system.*;
   import src.config.*;
   import src.multiuser.*;
   import src.utils.*;
   
   public class _yn5945 extends Sprite
   {
      
      protected var _fr7798:int;
      
      protected var _wp11097:ResourceLoader;
      
      protected var _lq4996:SocketManager;
      
      public function _yn5945(param1:ResourceLoader)
      {
         super();
         this._wp11097 = param1;
         Security.allowDomain("swf");
         UtilsUtils.init();
         this._be10590();
      }
      
      protected function _be10590() : void
      {
         this._lq4996 = SocketManager.getInstance();
         this._lq4996.addEventListener(SocketManager._if7385,this._wi15540,false,0,true);
         this._lq4996._yl3073(Configuration._vx10360,int(Configuration._ja1502));
      }
      
      protected function _wi15540(param1:Event) : void
      {
         this._lq4996.removeEventListener(SocketManager._if7385,this._wi15540);
         this.addEventListener(Event.ENTER_FRAME,this._gv13043);
      }
      
      public function get _dn11747() : int
      {
         return this._fr7798;
      }
      
      protected function _gv13043(param1:Event) : void
      {
      }
   }
}

