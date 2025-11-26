package src.loaders
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.*;
   import src.person.*;
   
   public class _eh1137 extends _jr15810
   {
      
      private static const _hy14562:String = "mcLoader";
      
      private static const _xs14420:String = "mcPerson";
      
      private static const _bn5205:String = "colorTrans";
      
      public static const _ln13779:Array = [0,"E","L","R","Y","I","C","N","G","B","M","J"];
      
      protected static const _dg9384:String = "mcBarraProgreso";
      
      protected static const _vd15368:String = "mcBarra";
      
      private var _al10421:MovieClip;
      
      private var _ch10744:MovieClip;
      
      private var _gg7070:_od6763;
      
      private var _so13485:MovieClip;
      
      private var _tx26:int;
      
      private var _ox7357:Number = 0;
      
      protected var _vl12074:MovieClip;
      
      protected var _wm265:MovieClip;
      
      public function _eh1137(param1:MovieClip)
      {
         super(param1);
         this.init();
      }
      
      protected function init() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = int(_hv12530.getInstance()._jn11596);
         while(_loc1_ < _ga7956._vr7101)
         {
            _eh11850[_ln13779[_loc3_] + _bn5205 + (_loc1_ + 1)].color = _hv12530.getInstance().colors.getColor(_loc1_);
            _loc1_++;
         }
         while(_loc2_ < _ga7956._iv7424)
         {
            _eh11850[_hy14562][_xs14420 + (_loc2_ + 1)].visible = false;
            _loc2_++;
         }
         this._so13485 = _eh11850[_hy14562][_xs14420 + _loc3_];
         this._so13485.visible = true;
         _eh11850.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this._tx26 = 5;
         this._vl12074 = MovieClip(_eh11850[_hy14562][_dg9384]);
         this._wm265 = MovieClip(this._vl12074.getChildByName(_vd15368));
      }
      
      override public function _aj8898(param1:int) : void
      {
         this._wm265.gotoAndStop(param1);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(_fn7388 <= 95)
         {
            _loc2_ = (350 - this._so13485.y) * 0.1;
            this._so13485.y += _loc2_;
         }
         if(_fn7388 > 95)
         {
            this._tx26 += 5;
            this._so13485.y += this._tx26;
         }
      }
      
      override public function show() : void
      {
         super.show();
         _eh11850.x = 0;
         _eh11850.y = 0;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _eh11850.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}

