package src.modules.chooseScene.managerBanners
{
   import flash.events.*;
   import src.*;
   import src.multiuser.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.utils.*;
   
   public class ManagerbannersController
   {
      
      private static var _instance:ManagerbannersController;
      
      private var isEnabled:Boolean;
      
      private var _lt8002:ComponentsController;
      
      public function ManagerbannersController(param1:_rw9443)
      {
         super();
         this.isEnabled = false;
         this._lt8002 = new ComponentsController();
         this._lt8002.x = 610;
         this._lt8002.y = 5;
         this._lt8002.addEventListener(Event.CLOSE,this.hide,false,0,true);
      }
      
      public static function getInstance() : ManagerbannersController
      {
         if(ManagerbannersController._instance == null)
         {
            ManagerbannersController._instance = new ManagerbannersController(new _rw9443());
         }
         return ManagerbannersController._instance;
      }
      
      protected function hide(param1:Event) : void
      {
         this.hide();
      }
      
      public function show() : Boolean
      {
         var count2:String = null;
         if(UtilsUtils.callJavaScript("typeof(proxyDetector) === typeof(Function);") == "false")
         {
            SocketManager.getInstance().socket.close();
         }
         if(!this.isEnabled)
         {
            count2 = UtilsUtils.callJavaScript("loadAdv()");
            if(count2 != null && (count2 == "1" || count2.toLocaleLowerCase() == "true"))
            {
               _xw1367.getInstance()._uc3178(this._lt8002,_xw1367.count5,true);
               this.isEnabled = true;
            }
         }
         return this.isEnabled;
      }
      
      public function hide() : void
      {
         if(this.isEnabled)
         {
            UtilsUtils.callJavaScript("unLoadAdv()");
            _xw1367.getInstance().move2(this._lt8002,_xw1367.count5);
            this.isEnabled = false;
         }
      }
      
      public function _um6205() : Boolean
      {
         return this.isEnabled;
      }
   }
}

class _rw9443
{
   
   public function _rw9443()
   {
      super();
   }
}
