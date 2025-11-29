package src.modules.chooseScene.managerBanners
{
   import flash.events.*;
   import src.*;
   import src.multiuser.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.utils.*;
   
   public class _gx6661
   {
      
      private static var _instance:_gx6661;
      
      private var _td9619:Boolean;
      
      private var _lt8002:_bm12889;
      
      public function _gx6661(param1:_rw9443)
      {
         super();
         this._td9619 = false;
         this._lt8002 = new _bm12889();
         this._lt8002.x = 610;
         this._lt8002.y = 5;
         this._lt8002.addEventListener(Event.CLOSE,this._uv6586,false,0,true);
      }
      
      public static function getInstance() : _gx6661
      {
         if(_gx6661._instance == null)
         {
            _gx6661._instance = new _gx6661(new _rw9443());
         }
         return _gx6661._instance;
      }
      
      protected function _uv6586(param1:Event) : void
      {
         this.hide();
      }
      
      public function show() : Boolean
      {
         var _loc1_:String = null;
         if(_jp4046.callJavaScript("typeof(proxyDetector) === typeof(Function);") == "false")
         {
            _jl5367.getInstance().socket.close();
         }
         if(!this._td9619)
         {
            _loc1_ = _jp4046.callJavaScript("loadAdv()");
            if(_loc1_ != null && (_loc1_ == "1" || _loc1_.toLocaleLowerCase() == "true"))
            {
               _xw1367.getInstance()._uc3178(this._lt8002,_xw1367._wa4051,true);
               this._td9619 = true;
            }
         }
         return this._td9619;
      }
      
      public function hide() : void
      {
         if(this._td9619)
         {
            _jp4046.callJavaScript("unLoadAdv()");
            _xw1367.getInstance()._na10792(this._lt8002,_xw1367._wa4051);
            this._td9619 = false;
         }
      }
      
      public function _um6205() : Boolean
      {
         return this._td9619;
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
