package src.tv.boombang.library.objects.control.controllers
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import src.tv.boombang.library.objects.control.AssetsBaseObjects;
   
   public class OpenSarcophagus extends AssetsBaseObjects
   {
      
      private var blockClicksCounter:int = 50;
      
      public function OpenSarcophagus(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2,param3);
      }
      
      override public function init() : void
      {
         _asset.mcObject.mcObjectRef.mcColor0.mouseEnabled = true;
         _asset.mcObject.mcObjectRef.mcColor0.mouseChildren = true;
         _asset.mcObject.mcObjectRef.mcColor0.buttonMode = true;
      }
      
      override public function getReceiveClicks() : Boolean
      {
         return true;
      }
      
      override public function onObjectClick(param1:MouseEvent) : void
      {
         if(this.blockClicksCounter > 70)
         {
            this.blockClicksCounter = 0;
            _asset.mcObject.mcObjectRef.mcColor0.gotoAndPlay("open");
         }
      }
      
      override public function loop() : void
      {
         if(this.blockClicksCounter < 71)
         {
            ++this.blockClicksCounter;
         }
      }
   }
}

