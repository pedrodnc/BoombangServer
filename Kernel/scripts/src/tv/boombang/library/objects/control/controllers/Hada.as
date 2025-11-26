package src.tv.boombang.library.objects.control.controllers
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import src.tv.boombang.library.objects.*;
   import src.tv.boombang.library.objects.control.AssetsBaseObjectsMascota;
   
   public class Hada extends AssetsBaseObjectsMascota
   {
      
      private static const MAX_CHISPAS:int = 50;
      
      private static const CHIPAS_POST:Point = new Point(0,0);
      
      private static const STARS_POST:Point = new Point(0,0);
      
      private static const MAX_HEIGHT_MOVE:Number = 10;
      
      private static const VELOCITY_MOVE:Number = 1;
      
      private const VELOCIDAD_FACTOR:Number = 0.25;
      
      private var seleccionada:Boolean;
      
      private var rollOver:Boolean = false;
      
      private var animando:Boolean = false;
      
      private var flip:int = 0;
      
      private var totalMove:Number = 0;
      
      private var moveUp:Boolean = true;
      
      private var particules:Array;
      
      private var countParticules:int;
      
      private var mclEditor:MovieClip;
      
      private var mclEditor2:MovieClip;
      
      public function Hada(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2,param3);
      }
      
      override public function init() : void
      {
         _asset.mcObject.mcObjectRef.mcStarsEffect.mouseEnabled = false;
         _asset.mcObject.mcObjectRef.mcStarsEffect.mouseChildren = false;
         _asset.mcObject.mcObjectRef.mcArea.mouseEnabled = true;
         _asset.mcObject.mcObjectRef.mcArea.mouseChildren = true;
         _asset.mcObject.mcObjectRef.Hada.gotoAndStop("RollOut");
         _asset.mcObject.mcObjectRef.Hada.mouseEnabled = false;
         _asset.mcObject.mcObjectRef.Hada.mouseChildren = false;
         _asset.mcObject.mcObjectRef.mcArea.addEventListener(MouseEvent.ROLL_OVER,this.hadaRollOver);
         _asset.mcObject.mcObjectRef.mcArea.addEventListener(MouseEvent.ROLL_OUT,this.hadaRollOut);
         var _loc1_:MovieClip = _asset.mcObject.mcObjectRef.mcStarsEffect as MovieClip;
         if(_loc1_)
         {
            _loc1_.stop();
         }
      }
      
      override public function destroy() : void
      {
         _asset.mcObject.mcObjectRef.mcArea.removeEventListener(MouseEvent.ROLL_OVER,this.hadaRollOver);
         _asset.mcObject.mcObjectRef.mcArea.removeEventListener(MouseEvent.ROLL_OUT,this.hadaRollOut);
         super.destroy();
         if(this.mclEditor != null)
         {
            this.mclEditor = null;
            this.mclEditor2 = null;
         }
         super.destroy();
      }
      
      private function hadaRollOver(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
         this.rollOver = true;
      }
      
      private function hadaRollOut(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
         this.rollOver = false;
      }
      
      private function createStars() : void
      {
         var _loc1_:Point = null;
         _loc1_ = _asset.mcObject.mcObjectRef.mcStarsEffect.mcStar.localToGlobal(new Point(0,0));
         _loc1_ = _asset.mcObject.mcObjectRef.mcStarsEffect.mcStar1.localToGlobal(new Point(0,0));
         var _loc2_:MovieClip = _asset.mcObject.mcObjectRef.mcStarsEffect as MovieClip;
         if(_loc2_)
         {
            _loc2_.play();
         }
      }
      
      override public function getDesplazaConClick() : Boolean
      {
         return false;
      }
      
      override public function loop() : void
      {
      }
      
      override public function setMascotaSeleccionada(param1:Boolean) : void
      {
      }
      
      override public function getMovieClipIconoMascota() : MovieClip
      {
         return ObjectCommunication.getAssetForObject(_fileName,"MclIcono");
      }
      
      override public function getSeleccionable() : Boolean
      {
         return false;
      }
      
      override public function onIconoPresionado() : void
      {
      }
      
      override public function getMovieClipEditObjects() : MovieClip
      {
         return this.mclEditor;
      }
   }
}

