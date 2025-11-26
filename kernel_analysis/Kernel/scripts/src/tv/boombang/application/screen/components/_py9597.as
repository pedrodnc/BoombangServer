package src.tv.boombang.application.screen.components
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.utils.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class _py9597 extends MovieClip implements _jk15536
   {
      
      public static const _gv14471:String = "SEQUENCECOMPLETED";
      
      private var _sequence:Array;
      
      private var _xo6614:MovieClip;
      
      private var _time:int;
      
      private var _er11167:int;
      
      private var _us13282:int;
      
      private var _je12770:int = 0;
      
      private var _hl8168:Timer;
      
      public function _py9597(param1:MovieClip, param2:Array, param3:int, param4:int = 0, param5:int = 0)
      {
         super();
         this._xo6614 = param1;
         this._sequence = param2;
         this._time = param3;
         this._er11167 = param4;
         this._us13282 = param5;
         this._xo6614.addChild(this._sequence[0]);
         this._sequence[0].x = this._er11167;
         this._sequence[0].y = this._us13282;
         this._hl8168 = new Timer(this._time);
         this._hl8168.addEventListener(TimerEvent.TIMER,this._fl14330);
         this._hl8168.start();
      }
      
      public function destroy() : void
      {
         this._hl8168.stop();
         this._hl8168.removeEventListener(TimerEvent.TIMER,this._fl14330);
         this._hl8168 = null;
      }
      
      private function _fl14330(param1:TimerEvent) : void
      {
         var _loc2_:int = this._je12770 + 1;
         if(_loc2_ < this._sequence.length)
         {
            this._xo6614.removeChild(this._sequence[this._je12770]);
            this._xo6614.addChild(this._sequence[_loc2_]);
            this._sequence[_loc2_].x = this._er11167;
            this._sequence[_loc2_].y = this._us13282;
            this._je12770 = _loc2_;
            this._hl8168.start();
         }
         else
         {
            this._xo6614.removeChild(this._sequence[this._je12770]);
            this.destroy();
            dispatchEvent(new Event(_gv14471));
         }
      }
   }
}

