package src.tv.boombang.core.datatypes.screen
{
   import src.allData.color.*;
   
   public class _tr3910
   {
      
      private static const _qg15428:int = 4;
      
      private var _qe4041:_rd1956;
      
      private var _yh4494:Array;
      
      public function _tr3910()
      {
         super();
      }
      
      public static function parse(param1:Array) : _tr3910
      {
         var _loc2_:Object = null;
         var _loc6_:int = 0;
         if(!param1[1] || param1[1] == 0)
         {
            return null;
         }
         var _loc3_:Array = param1.splice(0,param1[1] * _qg15428 + 2);
         if(_loc3_.length < param1[1] * _qg15428 + 2)
         {
            return null;
         }
         var _loc4_:_tr3910 = new _tr3910();
         _loc4_._cc8790 = _rd1956._bn928(_loc3_.splice(0,1));
         var _loc5_:int = int(_loc3_.splice(0,1));
         _loc4_._oh12066 = [];
         while(_loc6_ < _loc5_)
         {
            _loc2_ = {};
            _loc2_.name = _loc3_.splice(0,1);
            _loc2_._wa13225 = _loc3_.splice(0,1);
            _loc2_.colours = new _qm1392(_loc3_.splice(0,1));
            _loc2_.points = _loc3_.splice(0,1);
            _loc4_._oh12066.push(_loc2_);
            _loc6_++;
         }
         return _loc4_;
      }
      
      public function clone() : _tr3910
      {
         var _loc1_:_tr3910 = new _tr3910();
         _loc1_._cc8790 = this._cc8790;
         return _loc1_;
      }
      
      public function get _cc8790() : _rd1956
      {
         return this._qe4041;
      }
      
      public function set _cc8790(param1:_rd1956) : void
      {
         this._qe4041 = param1;
      }
      
      public function get _oh12066() : Array
      {
         return this._yh4494;
      }
      
      public function set _oh12066(param1:Array) : void
      {
         this._yh4494 = param1;
      }
   }
}

