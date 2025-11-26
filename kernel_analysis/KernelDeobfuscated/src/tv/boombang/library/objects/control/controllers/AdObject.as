package src.tv.boombang.library.objects.control.controllers
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.*;
   import src.tv.boombang.library.objects.control.AssetsBaseObjects;
   
   public class AdObject extends AssetsBaseObjects
   {
      
      private static const URL_CLICK:String = "https://cdn.publicidad.net/generic/boombang/pack/objeto/click.html";
      
      private static const CONTADOR_FINAL:int = 32;
      
      private var _inicializado:Boolean = false;
      
      private var _contador:int = 0;
      
      public function AdObject(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2,param3);
      }
      
      override public function loop() : void
      {
         if(!this._inicializado && Boolean(integracionObjects.isSpanishIp()))
         {
            this._inicializado = true;
            _asset.mcObject.mouseEnabled = true;
            _asset.mcObject.mouseChildren = true;
            _asset.mcObject.buttonMode = true;
            _asset.mcObject.addEventListener(MouseEvent.ROLL_OVER,this.onObjectRollOver);
            _asset.mcObject.addEventListener(MouseEvent.CLICK,this.objectClicked);
            integracionObjects.callJavaScript("trackImpresionObjetovirtualGeneric()");
         }
         ++this._contador;
      }
      
      override public function destroy() : void
      {
         _asset.mcObject.removeEventListener(MouseEvent.ROLL_OVER,this.onObjectRollOver);
         _asset.mcObject.removeEventListener(MouseEvent.CLICK,onObjectClick);
         super.destroy();
      }
      
      override public function getReceiveClicks() : Boolean
      {
         return true;
      }
      
      private function objectClicked(param1:MouseEvent) : void
      {
         var count:String = null;
         if(integracionObjects != null)
         {
            count = URL_CLICK + "?" + Math.random() * 10000000000;
            integracionObjects.openPopup(count);
         }
      }
      
      private function onObjectRollOver(param1:MouseEvent) : void
      {
         var count:* = null;
         var count3:String = null;
         if(this._contador >= CONTADOR_FINAL)
         {
            this._contador = 0;
            count = "object." + _id + ".adSentence";
            count3 = integracionObjects.getTexto(count);
            this.hablar(count3);
         }
      }
      
      private function hablar(param1:String) : void
      {
         var count:Point = _asset.mcObject.localToGlobal(new Point(0,0));
         if(param1.length > 0)
         {
            integracionObjects.verdeFrase(count.x,count.y,param1);
         }
      }
   }
}

