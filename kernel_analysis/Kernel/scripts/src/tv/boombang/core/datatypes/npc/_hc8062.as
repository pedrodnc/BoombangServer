package src.tv.boombang.core.datatypes.npc
{
   import src.tv.boombang.commons.utils._fh6432;
   
   public class _hc8062 extends _fh6432
   {
      
      public static const _nd14059:_hc8062 = new _hc8062(0);
      
      public static const _fi15052:_hc8062 = new _hc8062(1);
      
      public static const _su3149:_hc8062 = new _hc8062(2);
      
      public static const _ej5839:_hc8062 = new _hc8062(3);
      
      public static const _gc10840:_hc8062 = new _hc8062(4);
      
      public static const _oh4747:_hc8062 = new _hc8062(5);
      
      _xy6875(_hc8062);
      
      private var _nb15690:int;
      
      public function _hc8062(param1:int)
      {
         super();
         this._nb15690 = param1;
      }
      
      public static function _bn928(param1:int) : _hc8062
      {
         var _loc2_:_hc8062 = null;
         for each(_loc2_ in _hc8062._dy13189)
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
         return [_nd14059,_fi15052,_su3149,_ej5839,_gc10840,_oh4747];
      }
      
      public function get id() : int
      {
         return this._nb15690;
      }
   }
}

