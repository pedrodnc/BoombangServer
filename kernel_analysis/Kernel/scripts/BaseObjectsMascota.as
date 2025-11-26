package
{
   import flash.display.MovieClip;
   
   public dynamic class BaseObjectsMascota extends BaseObjectsAnimado
   {
      
      public static const LIMITES_DESPLAZAMIENTO_PANTALLA:int = 0;
      
      public static const LIMITES_DESPLAZAMIENTO_GRILLA:int = 1;
      
      public static const LIMITES_DESPLAZAMIENTO_PANTALLA_INFERIOR:int = 2;
      
      public function BaseObjectsMascota()
      {
         super();
      }
      
      public function getDesplazaConClick() : Boolean
      {
         return false;
      }
      
      public function getLimitesDesplazamientoConClick() : int
      {
         return LIMITES_DESPLAZAMIENTO_PANTALLA;
      }
      
      public function getDesplazaConClickAutomatico() : Boolean
      {
         return true;
      }
      
      public function desplazarHacia(param1:int, param2:int) : void
      {
      }
      
      public function setDisparar(param1:int) : void
      {
      }
      
      public function setMascotaSeleccionada(param1:Boolean) : void
      {
      }
      
      public function getMovieClipIconoMascota() : MovieClip
      {
         return null;
      }
      
      public function getSeleccionable() : Boolean
      {
         return true;
      }
      
      public function onIconoPresionado() : void
      {
      }
      
      public function setAccionFroggy(param1:int, param2:int) : void
      {
      }
      
      public function setAccionTopo(param1:int) : void
      {
      }
      
      public function setAccionLoro(param1:String) : void
      {
      }
      
      public function setAccionUpdateLoro(param1:int, param2:String) : void
      {
      }
      
      public function setMascotaPosition(param1:int, param2:int, param3:int) : void
      {
      }
      
      public function setMascotaAction(param1:int) : void
      {
      }
      
      public function onMontableMontar(param1:int, param2:int) : void
      {
      }
      
      public function onMontableDesmontar(param1:int, param2:int) : void
      {
      }
      
      public function onMontableMover(param1:int, param2:int) : void
      {
      }
      
      public function setNoriaRotacion(param1:int, param2:int) : void
      {
      }
      
      public function setNoriaVelocidad(param1:int, param2:int) : void
      {
      }
      
      public function setHitsContador(param1:int) : void
      {
      }
      
      override public function _BaseObjectsDestroy() : void
      {
         destroy();
      }
      
      public function _BaseObjectsMascotaGetDesplazaConClick() : Boolean
      {
         return this.getDesplazaConClick();
      }
      
      public function _BaseObjectsMascotaGetLimitesDesplazamientoConClick() : int
      {
         return this.getLimitesDesplazamientoConClick();
      }
      
      public function _BaseObjectsMascotaSetDisparar(param1:int) : void
      {
         this.setDisparar(param1);
      }
      
      public function _BaseObjectsMascotaSetMascotaSeleccionada(param1:Boolean) : void
      {
         this.setMascotaSeleccionada(param1);
      }
      
      public function _BaseObjectsMascotaGetMovieClipIconoMascota() : MovieClip
      {
         return this.getMovieClipIconoMascota();
      }
      
      public function _BaseObjectsMascotaGetSeleccionable() : Boolean
      {
         return this.getSeleccionable();
      }
      
      public function _BaseObjectsMascotaOnIconoPresionado() : void
      {
         this.onIconoPresionado();
      }
      
      public function _BaseObjectsMascotaSetAccionFroggy(param1:int, param2:int) : void
      {
         this.setAccionFroggy(param1,param2);
      }
      
      public function _BaseObjectsMascotaSetAccionTopo(param1:int) : void
      {
         this.setAccionTopo(param1);
      }
      
      public function _BaseObjectsMascotaSetAccionLoro(param1:String) : void
      {
         this.setAccionLoro(param1);
      }
      
      public function _BaseObjectsMascotaSetAccionUpdateLoro(param1:int, param2:String) : void
      {
         this.setAccionUpdateLoro(param1,param2);
      }
      
      public function _BaseObjectsMascotaSetMascotaPosition(param1:int, param2:int, param3:int) : void
      {
         this.setMascotaPosition(param1,param2,param3);
      }
      
      public function _BaseObjectsMascotaSetMascotaAction(param1:int) : void
      {
         this.setMascotaAction(param1);
      }
      
      public function _BaseObjectsMascotaGetDesplazaConClickAutomatico() : Boolean
      {
         return this.getDesplazaConClickAutomatico();
      }
      
      public function _BaseObjectsMascotaDesplazarHacia(param1:int, param2:int) : void
      {
         this.desplazarHacia(param1,param2);
      }
      
      public function _BaseObjectsMascotaOnMontableMontar(param1:int, param2:int) : void
      {
         this.onMontableMontar(param1,param2);
      }
      
      public function _BaseObjectsMascotaOnMontableDesmontar(param1:int, param2:int) : void
      {
         this.onMontableDesmontar(param1,param2);
      }
      
      public function _BaseObjectsMascotaOnMontableMover(param1:int, param2:int) : void
      {
         this.onMontableMover(param1,param2);
      }
      
      public function _BaseObjectsMascotaNoriaRotacion(param1:int, param2:int) : void
      {
         this.setNoriaRotacion(param1,param2);
      }
      
      public function _BaseObjectsMascotaNoriaVelocidad(param1:int, param2:int) : void
      {
         this.setNoriaVelocidad(param1,param2);
      }
      
      public function _BaseObjectsSetHitsContador(param1:int) : void
      {
         this.setHitsContador(param1);
      }
   }
}

