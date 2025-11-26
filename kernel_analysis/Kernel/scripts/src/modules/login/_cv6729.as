package src.modules.login
{
   import flash.display.MovieClip;
   import flash.utils.*;
   import src.modules.chooseIsla._qk12738;
   import src.person.*;
   
   public class _cv6729 extends _qk12738
   {
      
      private const _ce9386:int = 5000;
      
      private const _yq2314:int = 250;
      
      private var _xo5897:int;
      
      private var _cx14680:Boolean = false;
      
      private var _mn5720:int;
      
      public function _cv6729(param1:MovieClip, param2:Number, param3:Number)
      {
         super(param1,this._pw11559(),param2,param3);
      }
      
      public function loop() : void
      {
         var _loc1_:int = Math.abs(getTimer() - this._xo5897);
         var _loc2_:int = this._cx14680 ? int(this._yq2314) : int(this._ce9386);
         if(_loc1_ > _loc2_)
         {
            this._xo5897 = getTimer();
            this._cx14680 = !this._cx14680;
            if(this._cx14680)
            {
               _kl16116(null);
            }
            else
            {
               _kl16116(this._pw11559());
            }
         }
      }
      
      private function _pw11559() : _um8624
      {
         var _loc1_:_um8624 = new _um8624();
         var _loc2_:int = Math.random() * _ga7956._iv7424 + 1;
         do
         {
            _loc2_ = Math.random() * _ga7956._iv7424 + 1;
         }
         while(_loc2_ == this._mn5720);
         
         this._mn5720 = _loc2_;
         _loc1_._jn11596 = _loc2_;
         _loc1_._ab9299();
         return _loc1_;
      }
   }
}

