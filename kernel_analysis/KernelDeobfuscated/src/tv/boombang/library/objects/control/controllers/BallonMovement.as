package src.tv.boombang.library.objects.control.controllers
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.tv.boombang.library.objects.control.AssetsBaseObjects;
   
   public class BallonMovement extends AssetsBaseObjects
   {
      
      private var _init:Boolean = false;
      
      private var blockClicksCounter:int = 50;
      
      public function BallonMovement(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2,param3);
      }
      
      override public function getReceiveClicks() : Boolean
      {
         return true;
      }
      
      public function onObjectBallonClicked(param1:MouseEvent) : void
      {
         if(this.blockClicksCounter > 50)
         {
            this.blockClicksCounter = 0;
            _asset.mcObject.mcObjectRef.mcColor0_1.gotoAndPlay("clicked");
            _asset.mcObject.mcObjectRef.mcColor0_2.gotoAndPlay("clicked");
            _asset.mcObject.mcObjectRef.mcColor1.gotoAndPlay("clicked");
         }
      }
      
      override public function loop() : void
      {
         if(this.blockClicksCounter < 51)
         {
            ++this.blockClicksCounter;
         }
         if(!this._init)
         {
            this._init = true;
            _asset.mcObject.mcObjectRef.mcColor1.addEventListener(MouseEvent.CLICK,this.onObjectBallonClicked);
         }
      }
      
      override public function destroy() : void
      {
         _asset.mcObject.mcObjectRef.mcColor1.removeEventListener(MouseEvent.CLICK,this.onObjectBallonClicked);
      }
   }
}

