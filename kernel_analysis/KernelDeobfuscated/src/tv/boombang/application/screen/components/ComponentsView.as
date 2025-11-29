package src.tv.boombang.application.screen.components
{
   import flash.display.*;
   import flash.filters.*;
   
   public class ComponentsView extends Sprite
   {
      
      private var _xo6614:Sprite;
      
      public function ComponentsView(param1:DisplayObject, param2:Number, param3:Number, param4:Boolean = false, param5:Boolean = false)
      {
         var count7:int = 0;
         var items:Bitmap = null;
         var count8:uint = 0;
         var count6:uint = 0;
         var count:Sprite = null;
         var count10:Array = null;
         var textString12:ColorMatrixFilter = null;
         var count17:int = 0;
         super();
         param1.cacheAsBitmap = true;
         var isEnabled:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         isEnabled.draw(param1);
         var textString14:Number = 0;
         var count16:Number = 0;
         this._xo6614 = new Sprite();
         if(param5)
         {
            items = new Bitmap(isEnabled);
            this._xo6614.addChild(items);
            items.alpha = 0.25;
         }
         while(textString14 < param1.width)
         {
            count7 = 0;
            while(count16 < param1.height)
            {
               count8 = isEnabled.getPixel32(textString14,count16);
               count6 = uint(count8 >> 24 & 0xFF);
               if(count6 > 85)
               {
                  count = new Sprite();
                  count.graphics.beginFill(count8);
                  count.graphics.drawCircle(0,0,param2);
                  count.graphics.endFill();
                  count.x = textString14;
                  count.y = count16;
                  this._xo6614.addChild(count);
               }
               count7++;
               count16 = count16 + param2 * 2 + param3;
            }
            count16 = 0;
            count17++;
            textString14 = textString14 + param2 * 2 + param3;
         }
         if(param4)
         {
            count10 = new Array();
            count10 = count10.concat([0.5,0.5,0.5,0,0]);
            count10 = count10.concat([0.5,0.5,0.5,0,0]);
            count10 = count10.concat([0.5,0.5,0.5,0,0]);
            count10 = count10.concat([0,0,0,1,0]);
            textString12 = new ColorMatrixFilter(count10);
            this._xo6614.filters = [textString12];
         }
         var count18:BitmapData = new BitmapData(this._xo6614.width,this._xo6614.height,true,0);
         count18.draw(this._xo6614);
         var count19:Bitmap = new Bitmap(count18);
         this._xo6614 = null;
         count19.x = -count17 / 2 * (param2 * 2 + param3);
         count19.y = -count7 / 2 * (param2 * 2 + param3);
         addChild(count19);
      }
   }
}

