package src.tv.boombang.application.screen.components
{
   import flash.display.*;
   import flash.filters.*;
   
   public class _mr7010 extends Sprite
   {
      
      private var _xo6614:Sprite;
      
      public function _mr7010(param1:DisplayObject, param2:Number, param3:Number, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:int = 0;
         var _loc7_:Bitmap = null;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:Sprite = null;
         var _loc11_:Array = null;
         var _loc12_:ColorMatrixFilter = null;
         var _loc16_:int = 0;
         super();
         param1.cacheAsBitmap = true;
         var _loc13_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc13_.draw(param1);
         var _loc14_:Number = 0;
         var _loc15_:Number = 0;
         this._xo6614 = new Sprite();
         if(param5)
         {
            _loc7_ = new Bitmap(_loc13_);
            this._xo6614.addChild(_loc7_);
            _loc7_.alpha = 0.25;
         }
         while(_loc14_ < param1.width)
         {
            _loc6_ = 0;
            while(_loc15_ < param1.height)
            {
               _loc8_ = _loc13_.getPixel32(_loc14_,_loc15_);
               _loc9_ = uint(_loc8_ >> 24 & 0xFF);
               if(_loc9_ > 85)
               {
                  _loc10_ = new Sprite();
                  _loc10_.graphics.beginFill(_loc8_);
                  _loc10_.graphics.drawCircle(0,0,param2);
                  _loc10_.graphics.endFill();
                  _loc10_.x = _loc14_;
                  _loc10_.y = _loc15_;
                  this._xo6614.addChild(_loc10_);
               }
               _loc6_++;
               _loc15_ = _loc15_ + param2 * 2 + param3;
            }
            _loc15_ = 0;
            _loc16_++;
            _loc14_ = _loc14_ + param2 * 2 + param3;
         }
         if(param4)
         {
            _loc11_ = new Array();
            _loc11_ = _loc11_.concat([0.5,0.5,0.5,0,0]);
            _loc11_ = _loc11_.concat([0.5,0.5,0.5,0,0]);
            _loc11_ = _loc11_.concat([0.5,0.5,0.5,0,0]);
            _loc11_ = _loc11_.concat([0,0,0,1,0]);
            _loc12_ = new ColorMatrixFilter(_loc11_);
            this._xo6614.filters = [_loc12_];
         }
         var _loc17_:BitmapData = new BitmapData(this._xo6614.width,this._xo6614.height,true,0);
         _loc17_.draw(this._xo6614);
         var _loc18_:Bitmap = new Bitmap(_loc17_);
         this._xo6614 = null;
         _loc18_.x = -_loc16_ / 2 * (param2 * 2 + param3);
         _loc18_.y = -_loc6_ / 2 * (param2 * 2 + param3);
         addChild(_loc18_);
      }
   }
}

