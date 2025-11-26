package src.modules.plantas
{
   import flash.display.MovieClip;
   import src.org.osflash.thunderbolt.*;
   import src.utils.*;
   
   public class PlantasUtils
   {
      
      private var items:Array;
      
      public function PlantasUtils()
      {
         super();
         this.items = new Array();
      }
      
      public function loop() : void
      {
         var count2:PlantasModel = null;
         if(this.items == null)
         {
            return;
         }
         for each(count2 in this.items)
         {
            count2._yd11475();
         }
      }
      
      public function destroy() : void
      {
         var count2:PlantasModel = null;
         for each(count2 in this.items)
         {
            count2.destroy();
         }
         this.items = null;
      }
      
      public function _qo10278(param1:int, param2:MovieClip) : Boolean
      {
         var count3:PlantasModel = null;
         var count1:PlantasModel = null;
         for each(count3 in this.items)
         {
            if(count3.count2 == param1)
            {
               ThunderboltModel.info("Se encontro la regadera: ",count3.count2);
               if(count3._dn7993())
               {
                  return true;
               }
               return false;
            }
         }
         ThunderboltModel.info("No se encontro la regadera, se crea una nueva: ");
         count1 = new PlantasModel(param1,StringUtils._so3313(param2));
         count1._dn7993();
         this.items.push(count1);
         ThunderboltModel.info("Regaderas: ",this.items.length);
         return true;
      }
   }
}

