package src.modules.notificaciones.fichas
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import flash.utils.*;
   import src.*;
   import src.modules.notificaciones.*;
   
   public class _fa8431 extends _je4126
   {
      
      private var _xq16124:TextField;
      
      private var _timer:Timer;
      
      public function _fa8431(param1:_mr880, param2:MovieClip, param3:_uv13537)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         var _loc1_:String = null;
         _ef4896 = _pu6969._if2642(_xg11338) as MovieClip;
         this._xq16124 = _ef4896.getChildByName("txtMessage") as TextField;
         var _loc2_:int = int(_data.data[0]);
         switch(_data.type)
         {
            case _ql14014._bf10334:
               _loc1_ = _ab7564._yu9298.split("[coins]").join(_loc2_);
               break;
            case _ql14014._du11711:
               _loc1_ = _ab7564._sw3647.split("[coins]").join(_loc2_);
               break;
            default:
               _loc1_ = "";
         }
         this._xq16124.text = _loc1_;
         this._timer = new Timer(10000,1);
         this._timer.addEventListener(TimerEvent.TIMER_COMPLETE,this._sn13497);
         this._timer.start();
         _ef4896.x = 65;
         _ef4896.y = 495;
         this.show();
      }
      
      private function _sn13497(param1:TimerEvent) : void
      {
         close();
      }
      
      override public function destroy() : void
      {
         this._timer.removeEventListener(TimerEvent.TIMER_COMPLETE,this._sn13497);
      }
      
      override protected function show() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         switch(_tb13716._dn11747)
         {
            case _wc15106._vg13561:
               _loc1_ = 74;
               _loc2_ = 484;
               break;
            case _wc15106._wc8517:
               _loc1_ = 55;
               _loc2_ = 484;
               break;
            case _wc15106._kn1636:
               _loc1_ = 90;
               _loc2_ = 484;
         }
         _ef4896.x = _loc1_;
         _ef4896.y = _loc2_;
         super.show();
      }
   }
}

