package src.tv.boombang.library.objects.control.controllers
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.library.objects.control.AssetsBaseObjects;
   
   public class PlantFinal extends AssetsBaseObjects
   {
      
      private static const MC_CARTEL:String = "mcCartel";
      
      private static const TF_TITULO:String = "tf_Titulo";
      
      private static const MOSTRAR:String = "mostrar";
      
      private static const OCULTAR:String = "ocultar";
      
      private var _flip_:int = 0;
      
      private var inicializado:Boolean = false;
      
      private var _mcCartel:MovieClip;
      
      public function PlantFinal(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2,param3);
      }
      
      public static function cleanChildsMovieclip(param1:MovieClip) : void
      {
         var _loc3_:int = 0;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = param1.numChildren;
         while(_loc3_ < _loc2_)
         {
            param1.removeChildAt(0);
            _loc3_++;
         }
      }
      
      override public function destroy() : void
      {
         if(MovieClip(_asset.mcObject.mcObjectRef.mcCartel).hasEventListener(MouseEvent.MOUSE_DOWN))
         {
            this.removeListeners();
         }
         this._mcCartel = null;
      }
      
      override public function loop() : void
      {
         var _loc1_:int = 0;
         if(!this.inicializado)
         {
            this.inicializado = true;
            if(MovieClip(_asset.mcObject.mcObjectRef.mcColor0_Butterfly))
            {
               _loc1_ = Math.random() * 500;
               MovieClip(_asset.mcObject.mcObjectRef.mcColor0_Butterfly).gotoAndPlay(_loc1_);
            }
            if(owner)
            {
               if(!Boolean(int(props)))
               {
                  return;
               }
               this._mcCartel = integracionObjects.getCuadroTextosPlantas(idPose);
               setTextInTextField(this._mcCartel[TF_TITULO],nombre);
               MovieClip(_asset.mcObject.mcObjectRef.mcCartel).addChild(this._mcCartel);
               MovieClip(_asset.mcObject.mcObjectRef.mcCartel).mouseChildren = false;
               MovieClip(_asset.mcObject.mcObjectRef.mcCartel).buttonMode = true;
               this.setFlipped(this._flip_);
               this.addListeners();
            }
         }
      }
      
      private function addListeners() : void
      {
         MovieClip(_asset.mcObject.mcObjectRef.mcCartel).addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDownPlanta);
      }
      
      private function removeListeners() : void
      {
         MovieClip(_asset.mcObject.mcObjectRef.mcCartel).removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDownPlanta);
      }
      
      private function mouseDownPlanta(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
         cleanChildsMovieclip(_asset.mcObject.mcObjectRef.mcCartel);
         this.removeListeners();
         integracionObjects.activarPlanta(idPose);
      }
      
      override public function setFlipped(param1:int) : void
      {
         this._flip_ = param1;
         if(this._mcCartel == null)
         {
            return;
         }
         if(param1 == 0)
         {
            this._mcCartel.scaleX = 1;
         }
         else
         {
            this._mcCartel.scaleX = -1;
         }
      }
   }
}

