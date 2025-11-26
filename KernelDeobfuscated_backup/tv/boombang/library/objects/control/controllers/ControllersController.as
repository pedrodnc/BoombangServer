package src.tv.boombang.library.objects.control.controllers
{
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   import src.tv.boombang.library.objects.control.AssetsBaseObjectsAnimated;
   
   public class Plant extends AssetsBaseObjectsAnimated
   {
      
      protected static const TIMER_DELAY_MINUTES:Number = 0.01;
      
      protected static const TIMER_DELAY_MLS:Number = 1000;
      
      protected static const VALUE_MAX_COUNT:int = 100;
      
      protected static const VALUE_MIN_COUNT:int = 0;
      
      protected static const VALUE_SHOW_ICON_AGUA:int = 20;
      
      protected static const FRAME_ICON_OCULTAR:String = "Ocultar";
      
      protected static const FRAME_ICON_MOSTRAR:String = "Mostrar";
      
      protected static const REGAR:String = "Regar";
      
      private var actualizarPlanta:Timer;
      
      protected var estaMuerta:Boolean = false;
      
      protected var faltaAgua:Boolean = false;
      
      protected var estaFinalizada:Boolean = false;
      
      protected var inicializado:Boolean = false;
      
      protected var datosPlanta:DatosDePlanta;
      
      public function Plant(param1:MovieClip, param2:String, param3:int)
      {
         this.datosPlanta = new DatosDePlanta();
         super(param1,param2,param3);
      }
      
      override public function init() : void
      {
         this.actualizarPlanta = new Timer(this.minToMls(TIMER_DELAY_MINUTES));
         this.actualizarPlanta = new Timer(TIMER_DELAY_MLS);
         this.actualizarPlanta.addEventListener(TimerEvent.TIMER,this.tickTime);
         _asset.mcObject.mcObjectRef.mcHitArea.addEventListener(MouseEvent.MOUSE_DOWN,this.mostrarPanel);
         _asset.mcObject.mcObjectRef.mcHitArea.buttonMode = true;
      }
      
      override public function loop() : void
      {
         if(!this.inicializado)
         {
            if(props.length > 3)
            {
               this.datosPlanta.tiempoTotalAgua = props[0];
               this.datosPlanta.tiempoRestanteAgua = props[1] / 60;
               this.datosPlanta.tiempoTotalCrecer = props[2];
               this.datosPlanta.tiempoRestanteCrecer = props[3] / 60;
               this.datosPlanta.primeraVezPuesta = Boolean(int(props[4]));
               if(owner && Boolean(this.datosPlanta.primeraVezPuesta))
               {
                  this.mostrarPanel(null);
                  this.datosPlanta.primeraVezPuesta = false;
               }
               this.inicializado = true;
            }
            if(!this.actualizarPlanta.running)
            {
               this.actualizarPlanta.start();
            }
         }
      }
      
      override public function destroy() : void
      {
         if(this.actualizarPlanta != null)
         {
            this.actualizarPlanta.stop();
            this.actualizarPlanta.removeEventListener(TimerEvent.TIMER,this.tickTime);
            this.actualizarPlanta = null;
         }
         this.datosPlanta = null;
         integracionObjects.hidePanelDatosPlanta();
         _asset.mcObject.mcObjectRef.mcHitArea.removeEventListener(MouseEvent.MOUSE_DOWN,this.mostrarPanel);
      }
      
      override public function updateDatosPlata(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.datosPlanta.tiempoRestanteAgua = param1 / 60;
         this.datosPlanta.tiempoTotalAgua = param2;
         this.datosPlanta.tiempoRestanteCrecer = param3 / 60;
         this.datosPlanta.tiempoTotalCrecer = param4;
         if(!this.actualizarPlanta.running && param1 > 0)
         {
            this.actualizarPlanta.start();
         }
      }
      
      private function tickTime(param1:TimerEvent) : void
      {
         this.datosPlanta.tiempoRestanteAgua -= TIMER_DELAY_MLS / 1000 / 60;
         this.datosPlanta.tiempoRestanteCrecer -= TIMER_DELAY_MLS / 1000 / 60;
         this.checkDatos();
         this.actualizarPlantaAnimation(this.valorPorcentual());
      }
      
      protected function mostrarPanel(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
            param1.stopPropagation();
         }
         integracionObjects.showPanelDatosPlanta(idPose,this.datosPlanta);
      }
      
      private function valorPorcentual() : int
      {
         var _loc1_:int = (this.datosPlanta.tiempoTotalCrecer - this.datosPlanta.tiempoRestanteCrecer) * 100 / this.datosPlanta.tiempoTotalCrecer;
         if(_loc1_ > 100)
         {
            _loc1_ = 100;
         }
         if(_loc1_ < 0)
         {
            _loc1_ = 0;
         }
         return _loc1_;
      }
      
      private function moveHeadByInt(param1:MovieClip, param2:int) : void
      {
         if(param1)
         {
            param1.gotoAndStop(param2);
         }
      }
      
      private function moveHeadByString(param1:MovieClip, param2:String) : void
      {
         if(param1)
         {
            param1.gotoAndStop(param2);
         }
      }
      
      public function actualizarPlantaAnimation(param1:int) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Array = new Array();
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor0));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor0_Front));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor0_Front2));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor0_Back));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor0_leafs));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor0_shadow));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor0_Shad));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor0_1));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor0_2));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor0_3));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor1_Front));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor1_Back));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor1_Color));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor1));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor1_1));
         _loc3_.push(MovieClip(_asset.mcObject.mcObjectRef.mcColor1_2));
         if(this.estaMuerta)
         {
            this.moveHeadByString(MovieClip(_asset.mcObject.mcObjectRef.mcColor0_Dead),FRAME_ICON_MOSTRAR);
            for each(_loc2_ in _loc3_)
            {
               this.moveHeadByInt(_loc2_,VALUE_MAX_COUNT + 1);
            }
         }
         else
         {
            this.moveHeadByString(MovieClip(_asset.mcObject.mcObjectRef.mcColor0_Dead),FRAME_ICON_OCULTAR);
            for each(_loc2_ in _loc3_)
            {
               this.moveHeadByInt(_loc2_,param1);
            }
         }
         if(this.faltaAgua)
         {
            this.moveHeadByString(MovieClip(_asset.mcObject.mcObjectRef.mcIconoAgua),FRAME_ICON_MOSTRAR);
         }
         else
         {
            this.moveHeadByString(MovieClip(_asset.mcObject.mcObjectRef.mcIconoAgua),FRAME_ICON_OCULTAR);
         }
      }
      
      private function checkDatos() : void
      {
         var _loc1_:Number = this.datosPlanta.tiempoRestanteAgua * 100 / this.datosPlanta.tiempoTotalAgua;
         this.faltaAgua = _loc1_ < VALUE_SHOW_ICON_AGUA;
         if(this.datosPlanta.tiempoRestanteAgua <= 0)
         {
            this.estaMuerta = true;
            this.actualizarPlanta.stop();
         }
         else
         {
            this.estaMuerta = false;
         }
         if(this.datosPlanta.tiempoRestanteAgua > 0 && this.datosPlanta.tiempoRestanteCrecer >= this.datosPlanta.tiempoTotalCrecer)
         {
            this.estaFinalizada = true;
            this.actualizarPlanta.stop();
         }
         else
         {
            this.estaFinalizada = false;
         }
      }
      
      private function minToMls(param1:Number) : int
      {
         return param1 * (1000 * 60);
      }
   }
}

