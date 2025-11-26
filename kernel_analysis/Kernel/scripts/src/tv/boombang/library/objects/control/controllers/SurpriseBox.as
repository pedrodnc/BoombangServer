package src.tv.boombang.library.objects.control.controllers
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import src.tv.boombang.library.objects.control.AssetsBaseObjectsSurpriseBox;
   
   public class SurpriseBox extends AssetsBaseObjectsSurpriseBox
   {
      
      private var _init:Boolean = false;
      
      private var blockClicksCounter:int = 50;
      
      public function SurpriseBox(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2,param3);
      }
      
      override public function init() : void
      {
         _asset.mouseEnabled = false;
         _asset.mouseChildren = false;
         _asset.buttonMode = false;
      }
      
      override public function getReceiveClicks() : Boolean
      {
         return true;
      }
      
      override public function onObjectClick(param1:MouseEvent) : void
      {
         if(!owner)
         {
            return;
         }
         if(this.blockClicksCounter > 50)
         {
            this.blockClicksCounter = 0;
            integracionObjects.sendMsgActivarCajita(idPose);
         }
      }
      
      override public function loop() : void
      {
         ++this.blockClicksCounter;
         if(this._init == false)
         {
            this._init = true;
            if(owner)
            {
               _asset.mouseEnabled = true;
               _asset.mouseChildren = true;
               _asset.buttonMode = true;
            }
         }
      }
   }
}

