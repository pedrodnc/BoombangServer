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
      
      protected var count:int;
      
      protected var _wp11097:ResourceLoader;
      
      protected var _lq4996:SocketManager;
      
      public function _yn5945(param1:ResourceLoader)
      {
         super();
         this._wp11097 = param1;
         Security.allowDomain("swf");
         UtilsUtils.init();
         this.handleSocket();
      }
      
      protected function handleSocket() : void
      {
         this._lq4996 = SocketManager.getInstance();
         this._lq4996.addEventListener(SocketManager.urlString,this.authenticateUser,false,0,true);
         this._lq4996.connect(Configuration.urlString,int(Configuration.urlString14));
      }
      
      protected function authenticateUser(param1:Event) : void
      {
         this._lq4996.removeEventListener(SocketManager.urlString,this.authenticateUser);
         this.addEventListener(Event.ENTER_FRAME,this.authenticateUser1);
      }
      
      public function get _dn11747() : int
      {
         return this.count;
      }
      
      protected function authenticateUser1(param1:Event) : void
      {
      }
   }
}

