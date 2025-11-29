package src.tv.boombang.application.ga
{
   import flash.events.*;
   import flash.utils.*;
   import src.tv.boombang.commons.utils.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class _dv9978
   {
      
      private static var _instance:_dv9978;
      
      private static const _cg2357:Number = 10;
      
      private static const _cm14959:Number = 5000;
      
      private static const _ay7012:Number = 20000;
      
      private var _ok12026:Number;
      
      private var _nq10507:Number;
      
      private var _ah341:Number = 0;
      
      private var _dx4453:String;
      
      private var _ai6024:String;
      
      private var _kj3755:Timer;
      
      public function _dv9978(param1:_lj1267)
      {
         super();
         if(!(param1 is _lj1267))
         {
            throw new Error("FPSManager is a singleton class, use getInstance() instead");
         }
      }
      
      public static function getInstance() : _dv9978
      {
         if(!_instance)
         {
            _instance = new _dv9978(new _lj1267());
         }
         return _instance;
      }
      
      public function stop() : void
      {
         _tq2768._ps6769().removeEventListener(Event.ENTER_FRAME,this._an14427);
         if(this._kj3755)
         {
            this._kj3755.removeEventListener(TimerEvent.TIMER,this._ok14633);
            this._kj3755.stop();
            this._kj3755 = null;
         }
      }
      
      public function start(param1:Boolean = false, param2:String = "") : void
      {
         var _loc3_:Number = Math.random() * 100;
         if(_loc3_ < _cg2357)
         {
            this._ah341 = 0;
            this._ok12026 = getTimer();
            this._dx4453 = param2;
            this._ai6024 = "LOADING";
            if(param1)
            {
               this._kj3755 = new Timer(_ay7012,0);
               this._kj3755.addEventListener(TimerEvent.TIMER,this._ok14633,false,0,true);
               this._kj3755.start();
            }
            _tq2768._ps6769().addEventListener(Event.ENTER_FRAME,this._an14427,false,0,true);
         }
      }
      
      private function _ok14633(param1:TimerEvent) : void
      {
         this._kj3755.removeEventListener(TimerEvent.TIMER,this._ok14633);
         this._kj3755.stop();
         this._kj3755 = null;
         this._ah341 = 0;
         this._ok12026 = getTimer();
         this._ai6024 = "NORMAL";
         _tq2768._ps6769().addEventListener(Event.ENTER_FRAME,this._an14427,false,0,true);
      }
      
      private function _an14427(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:String = null;
         ++this._ah341;
         this._nq10507 = getTimer();
         if(this._nq10507 - _cm14959 > this._ok12026)
         {
            _tq2768._ps6769().removeEventListener(Event.ENTER_FRAME,this._an14427);
            _loc2_ = _cm14959 * this._ah341 / (this._nq10507 - this._ok12026);
            _loc2_ /= _cm14959 / 1000;
            if(this._dx4453 != "")
            {
               _loc3_ = this._dx4453;
            }
            else
            {
               _loc3_ = "general";
            }
            (_lh7543.get(_wl11587) as _wl11587)._fs11949("FrameRate",_loc3_,this._ai6024,_loc2_);
         }
      }
   }
}

class _lj1267
{
   
   public function _lj1267()
   {
      super();
   }
}
