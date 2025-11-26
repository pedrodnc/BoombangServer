package src.modules.plantas
{
   import flash.display.MovieClip;
   import src.org.osflash.thunderbolt.*;
   import src.utils.*;
   
   public class _dk6663
   {
      
      private var _xa8873:Array;
      
      public function _dk6663()
      {
         super();
         this._xa8873 = new Array();
      }
      
      public function loop() : void
      {
         var _loc1_:_kv14832 = null;
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
         var _loc1_:_kv14832 = null;
         for each(_loc1_ in this._xa8873)
         {
            _loc1_.destroy();
         }
         this._xa8873 = null;
      }
      
      public function _qo10278(param1:int, param2:MovieClip) : Boolean
      {
         var _loc3_:_kv14832 = null;
         var _loc4_:_kv14832 = null;
         for each(_loc3_ in this._xa8873)
         {
            if(_loc3_._hw14129 == param1)
            {
               _mr16168.info("Se encontro la regadera: ",_loc3_._hw14129);
               if(_loc3_._dn7993())
               {
                  return true;
               }
               return false;
            }
         }
         _mr16168.info("No se encontro la regadera, se crea una nueva: ");
         _loc4_ = new _kv14832(param1,_xv14798._so3313(param2));
         _loc4_._dn7993();
         this._xa8873.push(_loc4_);
         _mr16168.info("Regaderas: ",this._xa8873.length);
         return true;
      }
   }
}

