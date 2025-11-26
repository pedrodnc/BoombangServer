package src.modules.banners
{
   import flash.display.MovieClip;
   import src.utils.*;
   
   public class BannersUtils extends MovieClip
   {
      
      private var _asset:MovieClip;
      
      private var _width:Number;
      
      public function BannersUtils(param1:MovieClip, param2:Number)
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
         var count3:String = String(Math.floor(param2 / 1000));
         if(count3.length == 1)
         {
            count3 = "0" + count3;
         }
         var count1:String = "00:00:" + count3;
         UtilsUtils._xl9503(this._asset.timeTxt,count1);
         var count2:Number = this._width * param1 / 100;
         this._asset.percentageGraphicLine.width = count2;
      }
   }
}

