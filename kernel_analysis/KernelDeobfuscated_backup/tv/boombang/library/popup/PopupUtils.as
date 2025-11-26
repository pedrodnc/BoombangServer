package src.tv.boombang.library.popup
{
   import flash.display.*;
   import flash.geom.*;
   import src.tv.boombang.commons.utils.*;
   
   public class _mu12387 extends Sprite
   {
      
      public function _mu12387(param1:uint)
      {
         super();
         var _loc2_:String = GradientType.RADIAL;
         var _loc3_:Array = [param1,param1];
         var _loc4_:Array = [0,0.5];
         var _loc5_:Array = [50,255];
         var _loc6_:Matrix = new Matrix();
         _loc6_.createGradientBox(_tq2768._ps6769().stageWidth,_tq2768._ps6769().stageHeight,0,0,0);
         var _loc7_:String = SpreadMethod.PAD;
         var _loc8_:Sprite = new Sprite();
         var _loc9_:Graphics = _loc8_.graphics;
         _loc9_.beginGradientFill(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_);
         _loc9_.drawRect(0,0,_tq2768._ps6769().stageWidth,_tq2768._ps6769().stageHeight);
         addChild(_loc8_);
      }
   }
}

