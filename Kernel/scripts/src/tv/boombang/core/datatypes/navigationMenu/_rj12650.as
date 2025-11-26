package src.tv.boombang.core.datatypes.navigationMenu
{
   import src.tv.boombang.commons.utils._fh6432;
   
   public class _rj12650 extends _fh6432
   {
      
      public static const _gs9765:_rj12650 = new _rj12650(-3);
      
      public static const _vy15917:_rj12650 = new _rj12650(-2);
      
      public static const _of10544:_rj12650 = new _rj12650(-1);
      
      public static const _rk11857:_rj12650 = new _rj12650(0);
      
      public static const _no10274:_rj12650 = new _rj12650(1);
      
      public static const _oy11565:_rj12650 = new _rj12650(2);
      
      public static const _hw8585:_rj12650 = new _rj12650(3);
      
      public static const _rk3856:_rj12650 = new _rj12650(4);
      
      public static const _no1719:_rj12650 = new _rj12650(5);
      
      public static const _fp738:_rj12650 = new _rj12650(6);
      
      public static const _gc230:_rj12650 = new _rj12650(7);
      
      public static const _pg15:_rj12650 = new _rj12650(8);
      
      public static const _ka2131:_rj12650 = new _rj12650(9);
      
      public static const _kc3485:_rj12650 = new _rj12650(12);
      
      public static const _bc13969:_rj12650 = new _rj12650(13);
      
      public static const _jq2686:_rj12650 = new _rj12650(14);
      
      public static const _ja11389:_rj12650 = new _rj12650(15);
      
      public static const _ac14999:_rj12650 = new _rj12650(16);
      
      public static const _fp12162:_rj12650 = new _rj12650(17);
      
      public static const _kg1287:_rj12650 = new _rj12650(18);
      
      _xy6875(_rj12650);
      
      private var _sv7018:int;
      
      public function _rj12650(param1:int)
      {
         super();
         this._sv7018 = param1;
      }
      
      public static function _bn928(param1:int) : _rj12650
      {
         var _loc2_:_rj12650 = null;
         for each(_loc2_ in _rj12650._dy13189)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function get _dy13189() : Array
      {
         return [_gs9765,_vy15917,_of10544,_rk11857,_no10274,_oy11565,_hw8585,_rk3856,_no1719,_fp738,_gc230,_pg15,_ka2131,_kc3485,_bc13969,_jq2686,_ja11389,_ac14999,_fp12162,_kg1287];
      }
      
      public function get id() : int
      {
         return this._sv7018;
      }
   }
}

