package src.tv.boombang.core.datatypes.npc
{
   public class _mk4174
   {
      
      private var _os14466:int;
      
      private var _fv8883:int;
      
      private var _ch11647:int;
      
      private var _name:String;
      
      private var _x:int;
      
      private var _y:int;
      
      private var _bc2670:int;
      
      private var _qp9735:_hc8062;
      
      private var _gu9288:int;
      
      private var _oy752:int;
      
      private var _ed11375:Boolean;
      
      public function _mk4174()
      {
         super();
      }
      
      public static function parse(param1:Array) : _mk4174
      {
         var _loc2_:_mk4174 = new _mk4174();
         _loc2_._oq4159 = param1[0];
         _loc2_._ud6796 = param1[1];
         _loc2_._mc12100 = param1[2];
         _loc2_.name = param1[3];
         _loc2_.x = param1[4];
         _loc2_.y = param1[5];
         _loc2_.orientation = param1[6];
         _loc2_._iq7144 = _hc8062._bn928(parseInt(param1[7]));
         if(_loc2_._iq7144 == _hc8062._ej5839)
         {
            _loc2_._bv13835 = param1[8];
         }
         else if(_loc2_._iq7144 == _hc8062._gc10840)
         {
            _loc2_.games = Boolean(param1[8]);
         }
         else
         {
            _loc2_._jg8660 = param1[8];
         }
         return _loc2_;
      }
      
      public function clone() : _mk4174
      {
         var _loc1_:_mk4174 = new _mk4174();
         _loc1_._oq4159 = this._oq4159;
         _loc1_._ud6796 = this._ud6796;
         _loc1_._mc12100 = this._mc12100;
         _loc1_.name = this.name;
         _loc1_.x = this.x;
         _loc1_.y = this.y;
         _loc1_.orientation = this.orientation;
         _loc1_._iq7144 = this._iq7144;
         _loc1_._jg8660 = this._jg8660;
         _loc1_._bv13835 = this._bv13835;
         return _loc1_;
      }
      
      public function get _iq7144() : _hc8062
      {
         return this._qp9735;
      }
      
      public function set _iq7144(param1:_hc8062) : void
      {
         this._qp9735 = param1;
      }
      
      public function get _oq4159() : int
      {
         return this._os14466;
      }
      
      public function set _oq4159(param1:int) : void
      {
         this._os14466 = param1;
      }
      
      public function get _ud6796() : int
      {
         return this._fv8883;
      }
      
      public function set _ud6796(param1:int) : void
      {
         this._fv8883 = param1;
      }
      
      public function get _mc12100() : int
      {
         return this._ch11647;
      }
      
      public function set _mc12100(param1:int) : void
      {
         this._ch11647 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function set x(param1:int) : void
      {
         this._x = param1;
      }
      
      public function get y() : int
      {
         return this._y;
      }
      
      public function set y(param1:int) : void
      {
         this._y = param1;
      }
      
      public function get orientation() : int
      {
         return this._bc2670;
      }
      
      public function set orientation(param1:int) : void
      {
         this._bc2670 = param1;
      }
      
      public function get _jg8660() : int
      {
         return this._gu9288;
      }
      
      public function set _jg8660(param1:int) : void
      {
         this._gu9288 = param1;
      }
      
      public function get _bv13835() : int
      {
         return this._oy752;
      }
      
      public function set _bv13835(param1:int) : void
      {
         this._oy752 = param1;
      }
      
      public function get games() : Boolean
      {
         return this._ed11375;
      }
      
      public function set games(param1:Boolean) : void
      {
         this._ed11375 = param1;
      }
   }
}

