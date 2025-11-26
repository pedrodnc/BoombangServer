package src.modules.banners
{
   import flash.display.MovieClip;
   import src.utils.*;
   
   public class _dt9964 extends MovieClip
   {
      
      private var _asset:MovieClip;
      
      private var _width:Number;
      
      public function _dt9964(param1:MovieClip, param2:Number)
      {
         super();
         this.addChild(param1);
         this._asset = param1;
         this._width = param2;
         param1.background.width = param2;
         param1.percentageGraphicLine.width = 0;
      }
      
      public function set _em10144(param1:Number) : void
      {
         this._width = param1;
         this._asset.background.width = param1;
         this._asset.percentageGraphicLine.width = 0;
      }
      
      public function update(param1:int, param2:int) : void
      {
         var _loc3_:String = String(Math.floor(param2 / 1000));
         if(_loc3_.length == 1)
         {
            _loc3_ = "0" + _loc3_;
         }
         var _loc4_:String = "00:00:" + _loc3_;
         _yq8362._xl9503(this._asset.timeTxt,_loc4_);
         var _loc5_:Number = this._width * param1 / 100;
         this._asset.percentageGraphicLine.width = _loc5_;
      }
   }
}

