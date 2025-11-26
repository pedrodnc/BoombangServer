package src.person.animations
{
   import flash.display.MovieClip;
   import flash.geom.Point;
   import src.allData.scene.typeEscenarios.*;
   import src.person.*;
   
   public class _xk11626 extends _je4353
   {
      
      private var _xv12297:_il6324;
      
      public function _xk11626(param1:_um8624, param2:_il6324, param3:MovieClip, param4:int, param5:int, param6:Function, param7:int = -1)
      {
         super(param1,param3,param4,param5,param6);
         this._xv12297 = param2;
         if(param7 != -1)
         {
            this._xf12113 = param7;
         }
      }
      
      override public function loop() : void
      {
         if(_ul4608 == _ga7956._lo13715)
         {
            this._sk13984();
         }
         if(_ul4608 == _ga7956._li10585 && _me14044._jn11596 == _ga7956._jj10590)
         {
            this._cm6250();
         }
         _dx13345();
      }
      
      private function _sk13984() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:int = _gb9590.currentFrame;
         var _loc3_:int = _gb9590.totalFrames / 3;
         var _loc4_:int = _gb9590.totalFrames / 3 * 2;
         var _loc5_:Point = _il6324.getPlotXY(_me14044._gn15250);
         var _loc6_:int = _loc5_.y;
         var _loc7_:int = 90;
         _loc7_ = _loc7_ + this._xv12297._hc2542(_loc5_.x);
         _loc1_ = (_loc7_ - _loc6_) / _loc3_;
         if(_loc2_ < _loc3_)
         {
            _tv3848.y += _loc1_;
         }
         else if(_loc2_ > _loc4_ + 2)
         {
            _tv3848.y -= _loc1_;
         }
      }
      
      private function _cm6250() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Point = _il6324.getPlotXY(_me14044._gn15250);
         var _loc4_:int = _gb9590.currentFrame;
         var _loc5_:int = 95 + (_gb9590.totalFrames - 95) / 3;
         var _loc6_:int = 95 + (_gb9590.totalFrames - 95) / 3 * 2;
         var _loc7_:int = _loc2_.y;
         var _loc8_:int = 90;
         _loc8_ = _loc8_ + this._xv12297._hc2542(_loc2_.x);
         _loc1_ = (_loc8_ - _loc7_) / (_loc5_ - 95);
         if(_loc4_ >= 95)
         {
            if(_loc4_ < _loc5_)
            {
               _tv3848.y += _loc1_;
            }
            else if(_loc4_ > _loc6_ + 2)
            {
               _tv3848.y -= _loc1_;
            }
         }
      }
   }
}

