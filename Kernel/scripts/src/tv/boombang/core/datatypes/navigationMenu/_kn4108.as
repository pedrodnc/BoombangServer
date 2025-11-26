package src.tv.boombang.core.datatypes.navigationMenu
{
   public class _kn4108
   {
      
      private var _tk905:_hj3512;
      
      private var _yd13074:_rj12650;
      
      private var _ea4969:int;
      
      private var _wp4971:int;
      
      private var _name:String;
      
      private var _ck1016:int;
      
      private var _gs4445:int;
      
      private var _lt14262:int;
      
      private var _jt10688:_cd9992;
      
      private var _sv7018:int;
      
      private var _ii12619:int;
      
      private var _pr5247:Boolean = false;
      
      public function _kn4108()
      {
         super();
      }
      
      public static function parse(param1:Array, param2:int) : _kn4108
      {
         var _loc3_:_kn4108 = new _kn4108();
         _loc3_._ks12861 = _cd9992._bn928(param2);
         _loc3_._ls5877 = _hj3512._bn928(param1[0]);
         _loc3_._kb5211 = _rj12650._bn928(param1[1]);
         _loc3_._lh4996 = param1[2];
         _loc3_.name = param1[3];
         _loc3_._sc1342 = param1[4];
         _loc3_._vn12441 = param1[5];
         _loc3_._un6586 = param1[6];
         _loc3_._eb11619 = param1[7];
         _loc3_._fq658 = param1[8];
         _loc3_._rx11081 = param1[9];
         return _loc3_;
      }
      
      public function clone() : _kn4108
      {
         var _loc1_:_kn4108 = new _kn4108();
         if(this._ks12861)
         {
            _loc1_._ks12861 = _cd9992._bn928(this._ks12861._tv1901);
         }
         _loc1_._ls5877 = _hj3512._bn928(this._ls5877.id);
         _loc1_._kb5211 = _rj12650._bn928(this._kb5211.id);
         _loc1_._lh4996 = this._lh4996;
         _loc1_.name = this.name;
         _loc1_._sc1342 = this._sc1342;
         _loc1_._vn12441 = this._vn12441;
         _loc1_._un6586 = this._un6586;
         _loc1_._eb11619 = this._eb11619;
         _loc1_._fq658 = this._fq658;
         _loc1_._rx11081 = this._rx11081;
         return _loc1_;
      }
      
      public function get _ls5877() : _hj3512
      {
         return this._tk905;
      }
      
      public function set _ls5877(param1:_hj3512) : void
      {
         this._tk905 = param1;
      }
      
      public function get _kb5211() : _rj12650
      {
         return this._yd13074;
      }
      
      public function set _kb5211(param1:_rj12650) : void
      {
         this._yd13074 = param1;
      }
      
      public function get _lh4996() : int
      {
         return this._ea4969;
      }
      
      public function set _lh4996(param1:int) : void
      {
         this._ea4969 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get _sc1342() : int
      {
         return this._wp4971;
      }
      
      public function set _sc1342(param1:int) : void
      {
         this._wp4971 = param1;
      }
      
      public function get _ks12861() : _cd9992
      {
         return this._jt10688;
      }
      
      public function set _ks12861(param1:_cd9992) : void
      {
         this._jt10688 = param1;
      }
      
      public function get _vn12441() : int
      {
         return this._ck1016;
      }
      
      public function set _vn12441(param1:int) : void
      {
         this._ck1016 = param1;
      }
      
      public function get _un6586() : int
      {
         return this._gs4445;
      }
      
      public function set _un6586(param1:int) : void
      {
         this._gs4445 = param1;
      }
      
      public function get _rx11081() : int
      {
         return this._lt14262;
      }
      
      public function set _rx11081(param1:int) : void
      {
         this._lt14262 = param1;
      }
      
      public function get _eb11619() : int
      {
         return this._sv7018;
      }
      
      public function set _eb11619(param1:int) : void
      {
         this._sv7018 = param1;
      }
      
      public function get _fq658() : int
      {
         return this._ii12619;
      }
      
      public function set _fq658(param1:int) : void
      {
         this._ii12619 = param1;
      }
      
      public function get _si7985() : Boolean
      {
         return this._pr5247;
      }
      
      public function set _si7985(param1:Boolean) : void
      {
         this._pr5247 = param1;
      }
   }
}

