package src.tv.boombang.core.service_container.services.resource_management
{
   import flash.events.Event;
   import flash.utils.*;
   import src.tv.boombang.core.service_container.services.resource_management.Resources.*;
   
   public class _hc11274 extends _vy3822
   {
      
      private var _wl4601:Array;
      
      public function _hc11274()
      {
         super();
      }
      
      override public function start(param1:Object) : Boolean
      {
         this._wl4601 = new Array();
         return super.start(param1);
      }
      
      override public function stop() : Boolean
      {
         this._wl4601 = null;
         return super.stop();
      }
      
      override public function _lg3799(param1:String) : void
      {
         super._lg3799(param1);
      }
      
      override protected function _st11087(param1:Event) : void
      {
         var _loc2_:_gg3875 = param1.target as _gg3875;
         _loc2_._sa8043 = getTimer();
         if(!_ku15912[_loc2_.id])
         {
            this._wl4601.push(_loc2_);
         }
         else
         {
            _ku15912[_loc2_.id] = getTimer();
         }
         if(this._wl4601.length > 400)
         {
            this._lh4521();
         }
         super._st11087(param1);
      }
      
      private function _lh4521() : void
      {
         var _loc1_:_gg3875 = null;
         this._wl4601.sortOn("_sa8043",Array.NUMERIC);
         var _loc3_:Array = this._wl4601.splice(0,50);
         while(_loc3_.length > 0)
         {
            _loc1_ = _loc3_.shift();
            if(_ku15912[_loc1_.id])
            {
               (_ku15912[_loc1_.id] as _gg3875).destroy();
               delete _ku15912[_loc1_.id];
            }
         }
      }
   }
}

