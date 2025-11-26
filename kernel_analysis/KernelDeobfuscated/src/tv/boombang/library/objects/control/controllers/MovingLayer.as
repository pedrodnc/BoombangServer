package src.tv.boombang.library.objects.control.controllers
{
   import flash.display.MovieClip;
   import flash.geom.Point;
   import src.tv.boombang.library.objects.control.AssetsBaseObjects;
   
   public class MovingLayer extends AssetsBaseObjects
   {
      
      private var _mcObject:MovieClip;
      
      private var _mcColor0_bg:MovieClip;
      
      private var _init:Boolean = false;
      
      public function MovingLayer(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2,param3);
         this._mcObject = param1.mcObject;
         this._mcColor0_bg = param1.mcObject.mcObjectRef.mcColor0_bg;
      }
      
      override public function loop() : void
      {
         var count2:Point = null;
         var count:Number = 1;
         if(!this._init)
         {
            this._init = true;
            this._mcColor0_bg.gotoAndStop("efectoOn");
         }
         count = Number(integracionObjects.getSceneScale());
         count2 = integracionObjects.getObjectPos(idPose);
         this._mcColor0_bg.x = -(count2.x * (1 / count));
         this._mcColor0_bg.y = -(count2.y * (1 / count));
      }
   }
}

