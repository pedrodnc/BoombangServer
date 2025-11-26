package src.tv.boombang.library.popup
{
   import flash.display.*;
   import flash.geom.*;
   import src.tv.boombang.commons.utils.*;
   
   public class PopupUtils extends Sprite
   {
      
      public function PopupUtils(param1:uint)
      {
         super();
         var count:String = GradientType.RADIAL;
         var count3:Array = [param1,param1];
         var count1:Array = [0,0.5];
         var count2:Array = [50,255];
         var count7:Matrix = new Matrix();
         count7.createGradientBox(DisplayUtils._ps6769().stageWidth,DisplayUtils._ps6769().stageHeight,0,0,0);
         var items:String = SpreadMethod.PAD;
         var count8:Sprite = new Sprite();
         var count6:Graphics = count8.graphics;
         count6.beginGradientFill(count,count3,count1,count2,count7,items);
         count6.drawRect(0,0,DisplayUtils._ps6769().stageWidth,DisplayUtils._ps6769().stageHeight);
         addChild(count8);
      }
   }
}

