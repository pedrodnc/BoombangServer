package src.modules.notificaciones
{
   import src.modules.notificaciones.fichas.*;
   
   public class _mb1251
   {
      
      private var _re13316:Array;
      
      public function _mb1251()
      {
         super();
         this._re13316 = new Array();
      }
      
      public function get stack() : Array
      {
         return this._re13316;
      }
      
      public function get _wm14109() : _mr880
      {
         var _loc1_:_mr880 = null;
         if(this._xf5597(_ql14014._bf10334))
         {
            _loc1_ = this._ri43(_ql14014._bf10334);
            if(_loc1_ != null)
            {
               return _loc1_;
            }
         }
         else
         {
            _loc1_ = _mr880(this._re13316[0]);
         }
         return _loc1_;
      }
      
      public function get _jd12786() : Boolean
      {
         return this._re13316.length > 0;
      }
      
      public function _xf5597(param1:int) : Boolean
      {
         var _loc2_:_mr880 = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._re13316.length)
         {
            _loc2_ = _mr880(this._re13316[_loc3_]);
            if(_loc2_.type == param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function _ri43(param1:int) : _mr880
      {
         var _loc2_:_mr880 = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._re13316.length)
         {
            _loc2_ = _mr880(this._re13316[_loc3_]);
            if(_loc2_.type == param1)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function _de11210(param1:_mr880) : void
      {
         this._re13316.push(param1);
      }
      
      public function _vo11928(param1:_mr880) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._re13316.length)
         {
            if(this._re13316[_loc2_] == param1)
            {
               this._re13316.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
   }
}

