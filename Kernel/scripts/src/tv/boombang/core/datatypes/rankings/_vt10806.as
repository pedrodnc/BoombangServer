package src.tv.boombang.core.datatypes.rankings
{
   import src.allData.color.*;
   
   public class _vt10806
   {
      
      private var _ng1021:String;
      
      private var _cg10584:int;
      
      private var _xc2539:int;
      
      private var _vx5775:int;
      
      private var _ca7251:int;
      
      private var _tv10574:_qm1392;
      
      private var _ck5194:int;
      
      public function _vt10806()
      {
         super();
      }
      
      public static function parse(param1:Array) : _vt10806
      {
         var _loc2_:_vt10806 = new _vt10806();
         _loc2_._hq2467 = param1[0];
         _loc2_.points = param1[1];
         _loc2_._tv10574 = new _qm1392(param1[2]);
         _loc2_._ii2352 = param1[3];
         _loc2_._lo1980 = param1[4];
         _loc2_._ik15902 = param1[5];
         _loc2_._el1247 = param1[6];
         return _loc2_;
      }
      
      public function clone() : _vt10806
      {
         var _loc1_:_vt10806 = new _vt10806();
         _loc1_.points = this.points;
         _loc1_._ik15902 = this._ik15902;
         _loc1_._hq2467 = this._hq2467;
         _loc1_._ii2352 = this._ii2352;
         _loc1_._nw695 = this._nw695;
         _loc1_._lo1980 = this._lo1980;
         _loc1_._el1247 = this._el1247;
         return _loc1_;
      }
      
      public function get points() : int
      {
         return this._cg10584;
      }
      
      public function set points(param1:int) : void
      {
         this._cg10584 = param1;
      }
      
      public function get _ik15902() : int
      {
         return this._ca7251;
      }
      
      public function set _ik15902(param1:int) : void
      {
         this._ca7251 = param1;
      }
      
      public function get _hq2467() : String
      {
         return this._ng1021;
      }
      
      public function set _hq2467(param1:String) : void
      {
         this._ng1021 = param1;
      }
      
      public function get _ii2352() : int
      {
         return this._xc2539;
      }
      
      public function set _ii2352(param1:int) : void
      {
         this._xc2539 = param1;
      }
      
      public function get _lo1980() : int
      {
         return this._vx5775;
      }
      
      public function set _lo1980(param1:int) : void
      {
         this._vx5775 = param1;
      }
      
      public function get _el1247() : int
      {
         return this._ck5194;
      }
      
      public function set _el1247(param1:int) : void
      {
         this._ck5194 = param1;
      }
      
      public function get _nw695() : _qm1392
      {
         return this._tv10574;
      }
      
      public function set _nw695(param1:_qm1392) : void
      {
         this._tv10574 = param1;
      }
   }
}

