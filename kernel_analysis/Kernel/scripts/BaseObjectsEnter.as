package
{
   import flash.external.*;
   
   public dynamic class BaseObjectsEnter extends BaseObjects
   {
      
      protected var typeArea:int;
      
      protected var channelType:int;
      
      protected var idScene:int;
      
      protected var numeroEscenario:int;
      
      protected var maximoUsuarios:int;
      
      protected var cantidadUsuarios:int;
      
      protected var abierto:Boolean;
      
      public function BaseObjectsEnter()
      {
         super();
      }
      
      public function getCantidadUsuarios() : int
      {
         return this.cantidadUsuarios;
      }
      
      public function getMaximoUsuarios() : int
      {
         return this.maximoUsuarios;
      }
      
      public function getNumeroEscenario() : int
      {
         return this.numeroEscenario;
      }
      
      public function getChannelType() : int
      {
         return this.channelType;
      }
      
      public function getTypeArea() : int
      {
         return this.typeArea;
      }
      
      public function getidScene() : int
      {
         return this.idScene;
      }
      
      public function getAbierto() : Boolean
      {
         return this.abierto;
      }
      
      public function setCantidadUsuarios(param1:int) : void
      {
         this.cantidadUsuarios = param1;
      }
      
      public function setAbierto(param1:Boolean) : void
      {
         this.abierto = param1;
      }
      
      override public function setProps(param1:Array) : void
      {
         super.setProps(param1);
         if(param1.length >= 7)
         {
            this.typeArea = int(param1[0]);
            this.channelType = int(param1[1]);
            this.idScene = int(param1[2]);
            if(param1[3] == "")
            {
               this.setAbierto(true);
            }
            else
            {
               this.setAbierto(false);
            }
            this.numeroEscenario = int(param1[4]);
            this.maximoUsuarios = int(param1[5]);
            this.setCantidadUsuarios(int(param1[6]));
         }
      }
      
      public function setMostrarIndicador(param1:Boolean) : void
      {
      }
      
      public function _BaseObjectsEnterGetTypeArea() : int
      {
         return this.getTypeArea();
      }
      
      public function _BaseObjectsEnterGetChannelType() : int
      {
         return this.getChannelType();
      }
      
      public function _BaseObjectsEnterGetidScene() : int
      {
         return this.getidScene();
      }
      
      public function _BaseObjectsEnterGetCantidadUsuarios() : int
      {
         return this.getCantidadUsuarios();
      }
      
      public function _BaseObjectsEnterGetMaximoUsuarios() : int
      {
         return this.getMaximoUsuarios();
      }
      
      public function _BaseObjectsEnterGetNumeroEscenario() : int
      {
         return this.getNumeroEscenario();
      }
      
      public function _BaseObjectsEnterGetAbierto() : Boolean
      {
         return this.getAbierto();
      }
      
      public function _BaseObjectsEnterSetMostrarIndicador(param1:Boolean) : void
      {
         this.setMostrarIndicador(param1);
      }
      
      public function _BaseObjectsEnterSetCantidadUsuarios(param1:int) : void
      {
         this.setCantidadUsuarios(param1);
      }
      
      public function _BaseObjectsEnterSetAbierto(param1:Boolean) : void
      {
         ExternalInterface.call("console.log","Entro: " + param1);
         this.setAbierto(param1);
      }
   }
}

