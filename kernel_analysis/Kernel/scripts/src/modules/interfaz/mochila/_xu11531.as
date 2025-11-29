package src.modules.interfaz.mochila
{
   import src.allData.sceneObjects.dataObjects.*;
   
   public class _xu11531
   {
      
      private var _xj81:Array;
      
      private var _dk15271:Boolean;
      
      public function _xu11531()
      {
         super();
         this.reset();
      }
      
      public function _fh8876() : void
      {
         this._dk15271 = false;
      }
      
      public function reset() : void
      {
         this._xj81 = new Array();
         this._dk15271 = true;
      }
      
      public function add(param1:_gl6654, param2:int) : void
      {
         var _loc3_:_gl6654 = null;
         if(!this._dk15271)
         {
            return;
         }
         var _loc4_:_gl6654 = param1._iu12125();
         _loc4_.cant = param2;
         if(param1._sl11700._au2864)
         {
            this._xj81.push(_loc4_);
         }
         else
         {
            _loc3_ = this._me5726(_loc4_);
            if(_loc3_ != null)
            {
               _loc3_.cant += param2;
            }
            else
            {
               this._xj81.push(_loc4_);
            }
         }
      }
      
      public function _gd15941(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:_gl6654 = null;
         var _loc5_:int = 0;
         if(param1 >= 0)
         {
            _loc5_ = this._xj81.length - 1;
            while(_loc5_ >= 0)
            {
               _loc4_ = _gl6654(this._xj81[_loc5_]);
               if(_loc4_._hw14129 == param1)
               {
                  this._xj81.splice(_loc5_,1);
               }
               _loc5_--;
            }
         }
         else
         {
            _loc5_ = this._xj81.length - 1;
            while(_loc5_ >= 0)
            {
               _loc4_ = _gl6654(this._xj81[_loc5_]);
               if(_loc4_._rm6352 == param2)
               {
                  _loc4_.cant -= param3;
               }
               _loc5_--;
            }
         }
      }
      
      public function _me5726(param1:_gl6654) : _gl6654
      {
         var _loc2_:_gl6654 = null;
         for each(_loc2_ in this._xj81)
         {
            if(_loc2_._rm6352 == param1._rm6352)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function _xq15842(param1:_gl6654) : int
      {
         var _loc2_:_gl6654 = null;
         var _loc3_:int = 0;
         if(!param1._sl11700._au2864)
         {
            for each(_loc2_ in this._xj81)
            {
               if(_loc2_._rm6352 == param1._rm6352)
               {
                  return param1.cant - _loc2_.cant;
               }
            }
            return param1.cant;
         }
         _loc3_ = 0;
         for each(_loc2_ in this._xj81)
         {
            if(_loc2_._rm6352 == param1._rm6352)
            {
               _loc3_++;
            }
         }
         return param1.cant - _loc3_;
      }
      
      public function _as10156(param1:_gl6654, param2:int) : Boolean
      {
         var _loc3_:_gl6654 = null;
         if(param2 == 0)
         {
            return false;
         }
         if(!param1._sl11700._au2864)
         {
            for each(_loc3_ in this._xj81)
            {
               if(_loc3_._rm6352 == param1._rm6352)
               {
                  if(param2 <= param1.cant - _loc3_.cant)
                  {
                     return true;
                  }
                  return false;
               }
            }
            if(param2 <= param1.cant)
            {
               return true;
            }
            return false;
         }
         return false;
      }
      
      public function _ul2385(param1:_gl6654) : Boolean
      {
         var _loc2_:_gl6654 = null;
         if(param1._sl11700._au2864)
         {
            for each(_loc2_ in this._xj81)
            {
               if(_loc2_._hw14129 == param1._hw14129)
               {
                  return false;
               }
            }
            return true;
         }
         for each(_loc2_ in this._xj81)
         {
            if(_loc2_._rm6352 == param1._rm6352)
            {
               if(_loc2_.cant < param1.cant)
               {
                  return true;
               }
               return false;
            }
         }
         return true;
      }
   }
}

