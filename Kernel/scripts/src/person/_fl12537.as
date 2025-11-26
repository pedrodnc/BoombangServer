package src.person
{
   public class _fl12537
   {
      
      private var _re13316:Array;
      
      private var _ou4979:_ql8928;
      
      public function _fl12537(param1:_ql8928)
      {
         super();
         this._ou4979 = param1;
         this._re13316 = new Array();
      }
      
      public function get stack() : Array
      {
         return this._re13316;
      }
      
      public function get _ec9004() : _us2761
      {
         var _loc1_:_us2761 = null;
         var _loc2_:int = this._re13316.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ = _us2761(this._re13316[_loc2_]);
            if(!this._ou4979._go3196(_loc1_._bh15168))
            {
               return _loc1_;
            }
            _loc2_--;
         }
         return null;
      }
      
      public function get _fs1054() : int
      {
         var _loc1_:_us2761 = null;
         var _loc2_:int = this._re13316.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ = _us2761(this._re13316[_loc2_]);
            if(!this._ou4979._go3196(_loc1_._bh15168))
            {
               return _loc1_._bh15168;
            }
            _loc2_--;
         }
         return -1;
      }
      
      public function get _ag15710() : _us2761
      {
         return _us2761(this._re13316[this._re13316.length - 1]);
      }
      
      public function _nm8041(param1:_us2761) : void
      {
         this._re13316.push(param1);
      }
      
      public function _co13217(param1:int) : int
      {
         var _loc2_:_us2761 = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._re13316.length)
         {
            _loc2_ = _us2761(this._re13316[_loc3_]);
            if(_loc2_._bh15168 == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function _vb4498(param1:int) : _us2761
      {
         var _loc2_:_us2761 = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._re13316.length)
         {
            _loc2_ = _us2761(this._re13316[_loc3_]);
            if(_loc2_._bh15168 == param1)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function _cj6604(param1:int) : _us2761
      {
         return _us2761(this._re13316[param1]);
      }
      
      public function _lh10470(param1:_us2761) : void
      {
         var _loc2_:_us2761 = null;
         var _loc3_:int = this._re13316.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = _us2761(this._re13316[_loc3_]);
            if(_loc2_ == param1)
            {
               this._re13316.splice(_loc3_,1);
               return;
            }
            _loc3_--;
         }
      }
      
      public function _cc16081() : void
      {
         this._re13316.pop();
      }
      
      public function _gb5302(param1:int) : void
      {
         var _loc2_:_us2761 = null;
         var _loc3_:int = this._re13316.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = _us2761(this._re13316[_loc3_]);
            if(_loc2_._bh15168 == param1)
            {
               this._re13316.splice(_loc3_,1);
               return;
            }
            _loc3_--;
         }
      }
      
      public function _rl3966() : void
      {
         this._re13316 = new Array();
      }
   }
}

