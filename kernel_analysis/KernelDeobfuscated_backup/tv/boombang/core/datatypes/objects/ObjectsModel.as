package src.tv.boombang.core.datatypes.objects
{
   import src.allData.catObjects.*;
   import src.multiuser.*;
   
   public class _jv10258
   {
      
      public static const _yg7747:int = 9;
      
      private var _wb54:int;
      
      private var _be13105:int;
      
      private var _hb729:String;
      
      private var _as14907:String;
      
      private var _pf1871:int;
      
      private var _iy10701:int;
      
      private var _ms1741:String;
      
      private var _props:Array;
      
      private var _df5897:int;
      
      public function _jv10258()
      {
         super();
      }
      
      public static function parse(param1:Array) : _jv10258
      {
         var _loc2_:Array = param1.splice(0,_yg7747);
         if(_loc2_.length < _yg7747)
         {
            return null;
         }
         var _loc3_:_jv10258 = new _jv10258();
         _loc3_._wb54 = int(_loc2_[0]);
         _loc3_._be13105 = int(_loc2_[1]);
         _loc3_._hb729 = _loc2_[2];
         _loc3_._as14907 = _loc2_[3];
         _loc3_._pf1871 = _uq7753._iw2544(String(_loc2_[4]));
         _loc3_._iy10701 = int(_loc2_[5]);
         _loc3_._ms1741 = _loc2_[6];
         _loc3_._props = _jl5367._hp13280(_loc2_[7]);
         _loc3_._df5897 = int(_loc2_[8]);
         return _loc3_;
      }
      
      public function get cant() : int
      {
         return this._df5897;
      }
      
      public function get _cs7497() : Array
      {
         return this._props;
      }
      
      public function get _uf1803() : String
      {
         return this._ms1741;
      }
      
      public function get flip() : int
      {
         return this._iy10701;
      }
      
      public function get _mp5283() : int
      {
         return this._pf1871;
      }
      
      public function get _vw7719() : String
      {
         return this._as14907;
      }
      
      public function get _af6638() : String
      {
         return this._hb729;
      }
      
      public function get _rm6352() : int
      {
         return this._be13105;
      }
      
      public function get _hw14129() : int
      {
         return this._wb54;
      }
   }
}

