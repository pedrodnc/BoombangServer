package
{
   public dynamic class BaseObjectsAnimado extends BaseObjects
   {
      
      public function BaseObjectsAnimado()
      {
         super();
      }
      
      public function getVelocidad() : Number
      {
         return 0.1;
      }
      
      public function setDesplazando(param1:Boolean) : void
      {
      }
      
      public function setPorcentajeDesplazamientoCompletado(param1:int) : void
      {
      }
      
      public function updateDatosPlata(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      public function sincronizarGift(param1:int, param2:int) : void
      {
      }
      
      public function activarCajita() : void
      {
      }
      
      public function _BaseObjectsAnimadoGetVelocidad() : Number
      {
         return this.getVelocidad();
      }
      
      public function _BaseObjectsAnimadoSetDesplazando(param1:Boolean) : void
      {
         this.setDesplazando(param1);
      }
      
      public function _BaseObjectsAnimadoSetPorcentajeDesplazamientoCompletado(param1:int) : void
      {
         this.setPorcentajeDesplazamientoCompletado(param1);
      }
      
      public function _BaseObjectsAnimadoUpdateDatosPlata(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.updateDatosPlata(param1,param2,param3,param4);
      }
      
      public function _BaseObjectsAnimadoSincronizarGift(param1:int, param2:int) : void
      {
         this.sincronizarGift(param1,param2);
      }
      
      public function _BaseObjectCajitaActivarCajita() : void
      {
         this.activarCajita();
      }
   }
}

