package src.tv.boombang.core.datatypes.notifications
{
   import src.tv.boombang.commons.utils._fh6432;
   
   public class _bw12046 extends _fh6432
   {
      
      public static const _ft9177:_bw12046 = new _bw12046(-1);
      
      public static const TEXT:_bw12046 = new _bw12046(0);
      
      public static const _je12522:_bw12046 = new _bw12046(1);
      
      public static const _uq10974:_bw12046 = new _bw12046(2);
      
      public static const _fk12602:_bw12046 = new _bw12046(3);
      
      public static const _qy2384:_bw12046 = new _bw12046(4);
      
      public static const _ur4266:_bw12046 = new _bw12046(5);
      
      public static const _ap6455:_bw12046 = new _bw12046(6);
      
      public static const _em13679:_bw12046 = new _bw12046(7);
      
      public static const _ww14078:_bw12046 = new _bw12046(8);
      
      _xy6875(_bw12046);
      
      private var _id:int;
      
      public function _bw12046(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public static function _ob13942(param1:int) : _bw12046
      {
         var _loc2_:_bw12046 = null;
         for each(_loc2_ in _bw12046._dy13189)
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
         return [_ft9177,TEXT,_je12522,_uq10974,_fk12602,_qy2384,_ur4266,_ap6455,_em13679,_ww14078];
      }
      
      public function get id() : int
      {
         return this._id;
      }
   }
}

