package src.modules.interfaz.fichaKeko
{
   import src.modules.interfaz.fichaKeko.interacciones.*;
   
   public class Fichakeko
   {
      
      public static const count:int = 0;
      
      public static const count1:int = 0;
      
      private var items:Array;
      
      private var items1:Array;
      
      private var items2:Array;
      
      public function Fichakeko()
      {
         super();
         this.items = new Array();
         this.items[Interacciones._oh5695] = 0;
         this.items[Interacciones._ij14791] = 0;
         this.items[Interacciones.count3] = 0;
         this.items[Interacciones._fu3499] = count;
         this.items[Interacciones._fm10949] = count1;
         this.items2 = new Array();
         this.items2[Interacciones._oh5695] = true;
         this.items2[Interacciones._ij14791] = true;
         this.items2[Interacciones.count3] = true;
         this.items2[Interacciones._fu3499] = true;
         this.items2[Interacciones._fm10949] = true;
      }
      
      public function destroy() : void
      {
         this.items = null;
         this.items2 = null;
      }
      
      public function _kh2598(param1:int, param2:int, param3:Boolean) : void
      {
         if(param1 >= this.items.length)
         {
            return;
         }
         this.items[param1] = param2;
         this.items2[param1] = param3;
      }
      
      public function _ob10395(param1:int) : int
      {
         return this.items[param1];
      }
      
      public function _ij15685(param1:int) : Boolean
      {
         return this.items2[param1];
      }
   }
}

