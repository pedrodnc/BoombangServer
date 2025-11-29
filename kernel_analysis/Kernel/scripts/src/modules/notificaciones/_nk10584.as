package src.modules.notificaciones
{
   import src.modules.notificaciones.fichas.*;
   
   public class _nk10584
   {
      
      private var _re13316:Array;
      
      public function _nk10584()
      {
         super();
         this._re13316 = new Array();
      }
      
      public function get stack() : Array
      {
         return this._re13316;
      }
      
      public function _yn12676(param1:_je4126) : void
      {
         this._re13316.push(param1);
      }
      
      public function _mm3622(param1:_je4126) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = int(this._re13316.length);
         while(_loc3_ < _loc2_)
         {
            if(param1 == this._re13316[_loc3_])
            {
               this._re13316.splice(_loc3_,1);
               return;
            }
            _loc3_++;
         }
      }
      
      public function _ik12692(param1:int) : Boolean
      {
         var _loc2_:_je4126 = null;
         var _loc4_:int = 0;
         var _loc3_:int = int(this._re13316.length);
         while(_loc4_ < _loc3_)
         {
            _loc2_ = _je4126(this._re13316[_loc4_]);
            if(param1 == _loc2_._cx7747)
            {
               return true;
            }
            _loc4_++;
         }
         return false;
      }
      
      public function _ck3170(param1:int) : _je4126
      {
         var _loc2_:_je4126 = null;
         var _loc4_:int = 0;
         var _loc3_:int = int(this._re13316.length);
         while(_loc4_ < _loc3_)
         {
            _loc2_ = _je4126(this._re13316[_loc4_]);
            if(param1 == _loc2_._cx7747)
            {
               return _loc2_;
            }
            _loc4_++;
         }
         return null;
      }
   }
}

