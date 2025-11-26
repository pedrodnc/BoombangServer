package src.tv.boombang.application.interactions.controller
{
   import flash.events.*;
   import src.*;
   import src.person._ta2443;
   import src.tv.boombang.application.interactions._ya5360;
   import src.tv.boombang.application.interactions.view.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.commons.utils.*;
   
   public class _qv7383 extends EventDispatcher implements _jk15536
   {
      
      public static const _me1377:String = "interactionAcceptedEvent";
      
      public static const _xn13401:String = "interactionDeclinedEvent";
      
      private var _yb4490:_ta2443;
      
      private var _js15529:_ta2443;
      
      private var _gn930:_ya5360;
      
      private var _gw13414:_rl1041;
      
      public function _qv7383(param1:_ta2443, param2:_ta2443, param3:_ya5360)
      {
         super();
         if(param1 == null)
         {
            throw new Error("from parameter can not be null");
         }
         this._yb4490 = param1;
         this._js15529 = param2;
         this._gn930 = param3;
         this._gw13414 = new _rl1041(this._gn930);
         this._gw13414.addEventListener(_rl1041._mj8899,this._bc8168,false,0,true);
         this._gw13414.addEventListener(_rl1041._yv14583,this._ah251,false,0,true);
         _xw1367.getInstance()._uc3178(this._gw13414,_xw1367._kg5042,true);
         _tq2768._ps6769().addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
      }
      
      public function destroy() : void
      {
         _xw1367.getInstance()._na10792(this._gw13414,_xw1367._kg5042);
         _tq2768._ps6769().removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function get type() : _ya5360
      {
         return this._gn930;
      }
      
      public function get _ro10838() : _ta2443
      {
         return this._yb4490;
      }
      
      public function get _lk9069() : _ta2443
      {
         return this._js15529;
      }
      
      protected function _ah251(param1:Event) : void
      {
         dispatchEvent(new Event(_xn13401));
      }
      
      protected function _bc8168(param1:Event) : void
      {
         if(this._yb4490._gj9864(this._js15529))
         {
            dispatchEvent(new Event(_me1377));
         }
         else
         {
            (param1.target as _rl1041)._ry6622();
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         this._gw13414.x = this._yb4490.x;
         this._gw13414.y = this._yb4490.y - 110;
      }
   }
}

