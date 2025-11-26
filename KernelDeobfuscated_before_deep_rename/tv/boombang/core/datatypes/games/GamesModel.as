package src.tv.boombang.core.datatypes.games
{
   public class GamesModel
   {
      
      public static const _yw4649:int = 8;
      
      public static const _it758:int = 3;
      
      private var _oo602:int;
      
      private var _gn930:GamesModel;
      
      private var _cs3147:int;
      
      private var _ns3461:Boolean;
      
      private var _av15001:int;
      
      private var _mm12533:int;
      
      private var _yv14912:int;
      
      private var _xu11693:int;
      
      private var _vl5536:int;
      
      private var _ip15791:Array;
      
      public function GamesModel()
      {
         super();
      }
      
      public static function parse(param1:Array) : GamesModel
      {
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         var _loc6_:int = 0;
         var _loc4_:Array = param1.splice(0,_yw4649);
         if(_loc4_.length < _yw4649)
         {
            return null;
         }
         var _loc5_:GamesModel = new GamesModel();
         _loc5_.type = GamesModel._bn928(_loc4_[0]);
         _loc5_._oa3310 = int(_loc4_[1]);
         _loc5_.isWaiting = Boolean(_loc4_[2] == 1);
         _loc5_._jm15734 = _loc4_[3];
         _loc5_._db14645 = _loc4_[4];
         _loc5_._gh12567 = _loc4_[5];
         _loc5_._fh11066 = _loc4_[6];
         _loc5_._ij7968 = _loc4_[7];
         _loc5_._ou2556 = [];
         while(_loc6_ < _loc5_._ij7968)
         {
            _loc3_ = param1.splice(0,_it758);
            if(_loc3_.length < _it758)
            {
               return null;
            }
            _loc2_ = {};
            _loc2_.rewardType = GamesModel._bn928(_loc3_[0]);
            _loc2_.rewardId = _loc3_[1];
            _loc2_.rewardAmount = _loc3_[2];
            _loc5_._ou2556.push(_loc2_);
            _loc6_++;
         }
         return _loc5_;
      }
      
      public function clone() : GamesModel
      {
         var _loc1_:GamesModel = new GamesModel();
         _loc1_._gn930 = this.type;
         return _loc1_;
      }
      
      public function get type() : GamesModel
      {
         return this._gn930;
      }
      
      public function set type(param1:GamesModel) : void
      {
         this._gn930 = param1;
      }
      
      public function get _oa3310() : int
      {
         return this._cs3147;
      }
      
      public function set _oa3310(param1:int) : void
      {
         this._cs3147 = param1;
      }
      
      public function get isWaiting() : Boolean
      {
         return this._ns3461;
      }
      
      public function set isWaiting(param1:Boolean) : void
      {
         this._ns3461 = param1;
      }
      
      public function get _jm15734() : int
      {
         return this._av15001;
      }
      
      public function set _jm15734(param1:int) : void
      {
         this._av15001 = param1;
      }
      
      public function get _db14645() : int
      {
         return this._mm12533;
      }
      
      public function set _db14645(param1:int) : void
      {
         this._mm12533 = param1;
      }
      
      public function get _gh12567() : int
      {
         return this._yv14912;
      }
      
      public function set _gh12567(param1:int) : void
      {
         this._yv14912 = param1;
      }
      
      public function get _fh11066() : int
      {
         return this._xu11693;
      }
      
      public function set _fh11066(param1:int) : void
      {
         this._xu11693 = param1;
      }
      
      public function get _ij7968() : int
      {
         return this._vl5536;
      }
      
      public function set _ij7968(param1:int) : void
      {
         this._vl5536 = param1;
      }
      
      public function get _ou2556() : Array
      {
         return this._ip15791;
      }
      
      public function set _ou2556(param1:Array) : void
      {
         this._ip15791 = param1;
      }
      
      public function get _an10773() : int
      {
         return this._oo602;
      }
      
      public function set _an10773(param1:int) : void
      {
         this._oo602 = param1;
      }
   }
}

