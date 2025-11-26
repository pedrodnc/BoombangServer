package src.modules.banners
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.media.*;
   import flash.net.*;
   import src.*;
   import src.modules.banners.vast.data.MediaFile;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _ok1640 extends _rw8566
   {
      
      public static const _xl5015:String = "videoStarted";
      
      private static const _ur12531:int = 32;
      
      private static const _pw960:int = 36;
      
      private var _ro9229:Video;
      
      private var _gx1072:NetConnection;
      
      private var _ox13040:NetStream;
      
      private var _my10689:MovieClip;
      
      private var _bd8345:_dt9964;
      
      private var _fv6965:MovieClip;
      
      private var _rk10718:Number = 1;
      
      public function _ok1640(param1:MediaFile, param2:Function)
      {
         var _po357:MovieClip;
         var data:MediaFile = param1;
         var closeFunction:Function = param2;
         this._gx1072 = new NetConnection();
         this._my10689 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("videoAdBackground.swf","AssetAdBackground");
         _po357 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("videoAdBackground.swf","PercentageLine");
         this._fv6965 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("videoAdBackground.swf","VideoContainer");
         this._bd8345 = new _dt9964(_po357,data.width + _ur12531);
         _xw1367.getInstance()._uc3178(this._my10689,_xw1367._ww5897);
         super(data,closeFunction);
         _xw1367.getInstance()._uc3178(this._bd8345,_xw1367._ww5897);
         this._fv6965.width = _data.width + _ur12531;
         this._fv6965.height = _data.height + _pw960;
         _ru12176.addChild(this._fv6965);
         this._gx1072 = new NetConnection();
         this._ro9229 = new Video(_data.width,_data.height);
         _ru12176.addChild(this._ro9229);
         this._gx1072.connect(null);
         this._ox13040 = new NetStream(this._gx1072);
         this._ox13040.client = {"onMetaData":function(param1:Object):void
         {
         }};
         this._ro9229.attachNetStream(this._ox13040);
         this._ox13040.addEventListener(NetStatusEvent.NET_STATUS,this._cw10347);
         this._ox13040.play(_data.uri);
         this._bd8345.y = _ru12176.y + _ru12176.height;
         this._bd8345.x = _ru12176.x;
         this._ro9229.x = this._fv6965.width / 2 - _data.width / 2;
         this._ro9229.y = this._fv6965.height / 2 - _data.height / 2;
      }
      
      private function _cw10347(param1:NetStatusEvent) : void
      {
         switch(param1.info.code)
         {
            case "NetStream.Play.Stop":
               dispatchEvent(new _ck7312(_rw8566._xj9160));
               return;
            case "NetStream.Play.Start":
               this._ys6085();
               dispatchEvent(new _ck7312(_xl5015));
               return;
            default:
               return;
         }
      }
      
      private function onMetaData(param1:Object) : void
      {
      }
      
      override public function destroy() : void
      {
         if(this._my10689)
         {
            _xw1367.getInstance()._na10792(this._my10689,_xw1367._ww5897);
         }
         if(this._bd8345)
         {
            _xw1367.getInstance()._na10792(this._bd8345,_xw1367._ww5897);
         }
         this._ox13040.removeEventListener(NetStatusEvent.NET_STATUS,this._cw10347);
         this._ox13040.close();
         this._ox13040 = null;
         this._ro9229 = null;
         this._gx1072 = null;
         super.destroy();
      }
      
      public function get _cn5923() : int
      {
         return Math.round(this._ox13040.time * 1000);
      }
      
      public function _wg4647(param1:int) : void
      {
         var _loc2_:int = param1 - this._ox13040.time * 1000;
         var _loc3_:Number = this._ox13040.time * 100000 / param1;
         this._bd8345.update(_loc3_,_loc2_);
      }
      
      public function _ys6085() : void
      {
         if(_data.width == 0)
         {
            _data.width = this._ro9229.width;
            _data.height = this._ro9229.height;
         }
         if(_data.width > 640)
         {
            this._rk10718 = 640 / _data.width;
            _data.width *= this._rk10718;
            _data.height *= this._rk10718;
         }
         if(_data.height > 400)
         {
            this._rk10718 = 400 / _data.height;
            _data.width *= this._rk10718;
            _data.height *= this._rk10718;
         }
         _ru12176.x = _xw1367._rw15680 / 2 - _data.width / 2;
         _ru12176.y = _xw1367._lu15794 / 2 - _data.height / 2;
         this._ro9229.width = _data.width;
         this._ro9229.height = _data.height;
         this._fv6965.width = _data.width + _ur12531 * this._rk10718;
         this._fv6965.height = _data.height + _pw960 * this._rk10718;
         this._ro9229.x = this._fv6965.width / 2 - _data.width / 2;
         this._ro9229.y = this._fv6965.height / 2 - _data.height / 2;
         this._bd8345._em10144 = _ru12176.width;
         this._bd8345.y = _ru12176.y + _ru12176.height;
         this._bd8345.x = _ru12176.x;
      }
   }
}

