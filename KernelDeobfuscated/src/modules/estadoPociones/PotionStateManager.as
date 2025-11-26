package src.modules.estadoPociones
{
   import src.allData.UserSession;
   import src.multiuser.*;
   import src.org.osflash.thunderbolt.*;
   import src.person.PersonController;
   import src.person.PersonBase;
   
   public class PotionStateManager
   {
      
      public static const count:int = 1;
      
      private var _cm3301:EstadopocionesController;
      
      private var _kq8715:PersonBase;
      
      private var count1:int;
      
      private var _jy4188:UserSession;
      
      private var _ln6006:PersonController;
      
      private var count2:int;
      
      private var count3:int;
      
      private var count4:int;
      
      private var items:Array;
      
      private var isEnabled:Boolean;
      
      public function PotionStateManager()
      {
         super();
         this._cm3301 = new EstadopocionesController();
         this._cm3301.addEventListener(Estadopociones.textString,this.handleSocket);
         this.isEnabled = false;
      }
      
      public function destroy() : void
      {
         this._cm3301.removeEventListener(Estadopociones.textString,this.handleSocket);
      }
      
      public function _kf5607(param1:PersonBase) : void
      {
         this._kq8715 = param1;
      }
      
      private function handleSocket(param1:Estadopociones) : void
      {
         var count:uint = 0;
         var count3:Array = param1.items;
         count3.shift();
         count = uint(String(count3.shift()).charCodeAt(0));
         this.count2 = count3.shift();
         this.count3 = count3.shift();
         this.count4 = count3.shift();
         this.items = new Array();
         var count1:int = int(count3.length);
         if(count1 > 0)
         {
            this.items = SocketManager.getList1(count3.shift());
         }
         this._ln6006 = this._kq8715._xc6184(this.count2);
         if(this._ln6006 == null)
         {
            return;
         }
         switch(count)
         {
            case EstadopocionesController.count1:
               this._ln6006._os12895(this.count4,this.count3,this.items);
               ThunderboltModel.info("***************** PONER POCIMA=" + this.count4);
               return;
            case EstadopocionesController.count2:
               ThunderboltModel.info("***************** QUITAR POCIMA=" + this.count4);
               this._ln6006._al12408(this.count4);
               return;
            default:
               return;
         }
      }
   }
}

