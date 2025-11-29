package src.modules.banners
{
   import flash.display.*;
   import flash.events.*;
   import src.*;
   import src.modules.banners.vast.data.MediaFile;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class BannersController extends EventDispatcher implements Interfaces
   {
      
      public static const _xj9160:String = "ButtonCloseClicked";
      
      public static const _xm13918:String = "AdClicked";
      
      protected var _ru12176:MovieClip;
      
      protected var _ig5144:MovieClip;
      
      protected var _pm4274:Function;
      
      protected var _data:MediaFile;
      
      protected var _sc11444:MovieClip;
      
      public function BannersController(param1:MediaFile, param2:Function)
      {
         super();
         this._data = param1;
         this._pm4274 = param2;
         this._gy2041();
         this._gp393();
      }
      
      protected function _gp393() : void
      {
         this._ig5144 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("videoAdBackground.swf","VideoBannerClose") as MovieClip;
         var _loc1_:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("banner.closing",5);
         UtilsUtils._xl9503(this._ig5144.textContainer.txt,_loc1_);
         _xw1367.getInstance()._uc3178(this._ig5144,_xw1367._ww5897);
         this._ig5144.x = _xw1367._rw15680 - this._ig5144.width;
         this._ig5144.y = 30;
         this._ig5144.closeActive = false;
      }
      
      public function _yg556(param1:int) : void
      {
         var _loc2_:int = Math.floor(5 - param1 / 1000);
         var _loc3_:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("banner.closing",_loc2_);
         UtilsUtils._xl9503(this._ig5144.textContainer.txt,_loc3_);
         if(_loc2_ <= 0)
         {
            this._do14274();
         }
      }
      
      protected function _do14274() : void
      {
         this._ig5144.closeActive = true;
         var _loc1_:String = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("button.cerrar");
         UtilsUtils._xl9503(this._ig5144.textContainer.txt,_loc1_);
         this._ig5144.addEventListener(MouseEvent.CLICK,this._lw11279);
         this._ig5144.useHandCursor = true;
         this._ig5144.buttonMode = true;
         this._ig5144.mouseChildren = false;
      }
      
      public function get _hc11714() : Boolean
      {
         return this._ig5144.closeActive;
      }
      
      protected function _gy2041() : void
      {
         this._ru12176 = new MovieClip();
         _xw1367.getInstance()._uc3178(this._ru12176,_xw1367._ww5897);
         this._ru12176.addEventListener(MouseEvent.CLICK,this._sm103);
         this._ru12176.x = _xw1367._rw15680 / 2 - this._data.width / 2;
         this._ru12176.y = _xw1367._lu15794 / 2 - this._data.height / 2;
         this._ru12176.useHandCursor = true;
         this._ru12176.buttonMode = true;
      }
      
      private function _sm103(param1:Event) : void
      {
         dispatchEvent(new BannersEvents(_xm13918));
      }
      
      protected function _lw11279(param1:Event = null) : void
      {
         dispatchEvent(new BannersEvents(_xj9160));
      }
      
      public function destroy() : void
      {
         if(this._ru12176)
         {
            _xw1367.getInstance()._na10792(this._ru12176,_xw1367._ww5897);
            this._ru12176.removeEventListener(MouseEvent.CLICK,this._sm103);
         }
         if(this._ig5144)
         {
            _xw1367.getInstance()._na10792(this._ig5144,_xw1367._ww5897);
            this._ig5144.removeEventListener(MouseEvent.CLICK,this._lw11279);
         }
         this._pm4274 = null;
         this._ig5144 = null;
         this._ru12176 = null;
      }
   }
}

