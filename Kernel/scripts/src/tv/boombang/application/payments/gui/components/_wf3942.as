package src.tv.boombang.application.payments.gui.components
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.components.*;
   
   public class _wf3942 extends _ee13487
   {
      
      private var _ek13205:_xg1747;
      
      private var _fh3421:_xg1747;
      
      private var _rb11960:MovieClip;
      
      public function _wf3942(param1:String, param2:String = "")
      {
         super(param1,param2,"PaymentRadioButton");
         this._rb11960 = _xo6614["coinIcon"];
         this._ek13205 = new _xg1747(_xo6614["gameCoin"] as MovieClip);
         this._fh3421 = new _xg1747(_xo6614["realCoin"] as MovieClip);
      }
      
      public function set _ml15036(param1:String) : void
      {
         this._ek13205.txt = param1;
         this._ek13205._xq11642();
         this._im767();
      }
      
      public function set _vn12780(param1:String) : void
      {
         this._fh3421.txt = param1;
         this._fh3421._xq11642();
         this._im767();
      }
      
      public function _im767() : void
      {
         this._rb11960.x = this._ek13205.view.x + this._ek13205._dy3092 + 5;
         this._fh3421.view.x = this._rb11960.x + this._rb11960.width + 10;
      }
      
      public function get _ks13626() : Number
      {
         return this._rb11960.x;
      }
      
      public function set _il5120(param1:Number) : void
      {
         this._ek13205.view.x += param1 - this._rb11960.x;
         this._im767();
      }
      
      override public function destroy() : void
      {
         this._ek13205.destroy();
         this._fh3421.destroy();
         super.destroy();
      }
   }
}

