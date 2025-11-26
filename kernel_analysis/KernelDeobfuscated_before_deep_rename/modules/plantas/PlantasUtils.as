package src.modules.plantas
{
   import flash.display.MovieClip;
   import src.org.osflash.thunderbolt.*;
   import src.utils.*;
   
   public class PlantasUtils
   {
      
      private var _xa8873:Array;
      
      public function PlantasUtils()
      {
         super();
         this._xa8873 = new Array();
      }
      
      public function loop() : void
      {
         var _loc1_:PlantasModel = null;
         if(this._xa8873 == null)
         {
            return;
         }
         for each(_loc1_ in this._xa8873)
         {
            _loc1_._yd11475();
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:PlantasModel = null;
         for each(_loc1_ in this._xa8873)
         {
            _loc1_.destroy();
         }
         this._xa8873 = null;
      }
      
      public function _qo10278(param1:int, param2:MovieClip) : Boolean
      {
         var _loc3_:PlantasModel = null;
         var _loc4_:PlantasModel = null;
         for each(_loc3_ in this._xa8873)
         {
            if(_loc3_._hw14129 == param1)
            {
               ThunderboltModel.info("Se encontro la regadera: ",_loc3_._hw14129);
               if(_loc3_._dn7993())
               {
                  return true;
               }
               return false;
            }
         }
         ThunderboltModel.info("No se encontro la regadera, se crea una nueva: ");
         _loc4_ = new PlantasModel(param1,StringUtils._so3313(param2));
         _loc4_._dn7993();
         this._xa8873.push(_loc4_);
         ThunderboltModel.info("Regaderas: ",this._xa8873.length);
         return true;
      }
   }
}

