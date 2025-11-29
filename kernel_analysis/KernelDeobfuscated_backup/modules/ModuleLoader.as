package src.modules
{
   import flash.events.Event;
   import src.utils.*;
   
   public class _hq14072 extends Event
   {
      
      public static const _vt1454:String = "eventCodeFlagStandar";
      
      public var _lv9976:Array;
      
      public function _hq14072(param1:String, param2:Array)
      {
         super(param1);
         this._lv9976 = param2;
      }
      
      override public function toString() : String
      {
         return formatToString("StandarEvent","type","bubbles","cancelable","eventPhase","arrayTrama");
      }
      
      override public function clone() : Event
      {
         return new _hq14072(type,_xv14798._vc10061(this._lv9976));
      }
   }
}

