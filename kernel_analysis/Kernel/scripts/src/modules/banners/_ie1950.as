package src.modules.banners
{
   import flash.display.*;
   import flash.events.Event;
   import src.*;
   import src.modules.banners.vast.data.MediaFile;
   import src.tv.boombang.commons.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _ie1950 extends _rw8566
   {
      
      private var _yf3494:_jq5572;
      
      public function _ie1950(param1:MediaFile, param2:Function)
      {
         _sc11444 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("videoAdBackground.swf","BlackBackground");
         _sc11444.width = _xw1367._rw15680;
         _sc11444.height = _xw1367._lu15794;
         _xw1367.getInstance()._uc3178(_sc11444,_xw1367._ww5897);
         super(param1,param2);
         this._yf3494 = new _jq5572(param1.uri,_jq5572._vd10814);
         this._yf3494.addEventListener(_jq5572._om2683,this._ss11253);
         this._yf3494.addEventListener(_jq5572._qv3006,this._fa12525);
         this._yf3494.load();
      }
      
      private function _ss11253(param1:Event) : void
      {
         this._yf3494.removeEventListener(_jq5572._om2683,this._ss11253);
         this._yf3494.removeEventListener(_jq5572._qv3006,this._fa12525);
         var _loc2_:Loader = Loader((param1.currentTarget as _jq5572).getData());
         _ru12176.addChild(_loc2_);
      }
      
      private function _fa12525(param1:Event) : void
      {
         this._yf3494.removeEventListener(_jq5572._om2683,this._ss11253);
         this._yf3494.removeEventListener(_jq5572._qv3006,this._fa12525);
         _pm4274();
      }
      
      override public function destroy() : void
      {
         if(_sc11444)
         {
            _xw1367.getInstance()._na10792(_sc11444,_xw1367._ww5897);
         }
         if(this._yf3494)
         {
            this._yf3494.removeEventListener(_jq5572._om2683,this._ss11253);
            this._yf3494.removeEventListener(_jq5572._qv3006,this._fa12525);
            this._yf3494.destroy();
         }
         super.destroy();
      }
   }
}

