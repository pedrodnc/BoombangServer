package
{
   public class BaseEscenarioMultiplayerGames extends BaseEscenario
   {
      
      private const MC_MONEDAS_ORO:String = "mcMonedaOro";
      
      private const MC_MONEDAS_PLATA:String = "mcMonedaPlata";
      
      private const MC_COUNT_DOWN_PLATA:String = "mcCountDownPlata";
      
      private const TXT_COUNT_DOWN_PLATA:String = "txtCountDownPlata";
      
      protected var instrucciones:Boolean;
      
      public function BaseEscenarioMultiplayerGames()
      {
         super();
         this.instrucciones = false;
      }
      
      public function startGame() : void
      {
      }
      
      public function showSigno() : void
      {
      }
      
      public function hideSigno() : void
      {
      }
      
      override public function loop() : void
      {
         super.loop();
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
      
      public function showMonedas() : void
      {
         if(this[this.MC_MONEDAS_ORO] != null)
         {
            this[this.MC_MONEDAS_ORO].visible = true;
         }
         if(this[this.MC_MONEDAS_PLATA] != null)
         {
            this[this.MC_MONEDAS_PLATA].visible = true;
         }
      }
      
      public function hideMonedas() : void
      {
         if(this[this.MC_MONEDAS_ORO] != null)
         {
            this[this.MC_MONEDAS_ORO].visible = false;
         }
         if(this[this.MC_MONEDAS_PLATA] != null)
         {
            this[this.MC_MONEDAS_PLATA].visible = false;
         }
      }
      
      public function repositionNPC(param1:int) : void
      {
      }
      
      public function _BaseEscenarioActivarInstrucciones() : void
      {
         this.instrucciones = true;
      }
      
      public function _BaseEscenarioRepositionNPC(param1:int) : void
      {
         this.repositionNPC(param1);
      }
      
      public function _BaseEscenarioShowSigno() : void
      {
         this.showSigno();
      }
      
      public function _BaseEscenarioHideSigno() : void
      {
         this.hideSigno();
      }
      
      public function _BaseEscenarioShowMonedas() : void
      {
         this.showMonedas();
      }
      
      public function _BaseEscenarioHideMonedas() : void
      {
         this.hideMonedas();
      }
      
      public function _BaseEscenarioStartGame() : void
      {
         this.startGame();
      }
   }
}

