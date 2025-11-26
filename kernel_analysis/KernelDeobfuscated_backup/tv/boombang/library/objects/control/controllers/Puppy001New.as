package src.tv.boombang.library.objects.control.controllers
{
   import flash.display.MovieClip;
   import src.tv.boombang.library.objects.control.AssetsBaseObjects;
   
   public class Puppy001New extends AssetsBaseObjects
   {
      
      private var contadorFramesAnimacion:int;
      
      public function Puppy001New(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2,param3);
      }
      
      override public function init() : void
      {
         this.contadorFramesAnimacion = Math.random() * 16 * 5 + 16 * 10;
      }
      
      override public function loop() : void
      {
         --this.contadorFramesAnimacion;
         if(this.contadorFramesAnimacion <= 0)
         {
            _asset.mcObject.mcObjectRef.mcColor3_1.gotoAndPlay(3);
            this.contadorFramesAnimacion = Math.random() * 16 * 5 + 16 * 10;
         }
      }
   }
}

