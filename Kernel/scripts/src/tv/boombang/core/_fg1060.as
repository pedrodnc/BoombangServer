package src.tv.boombang.core
{
   import src.allData.*;
   import src.tv.boombang.core.config.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public final class _fg1060
   {
      
      public function _fg1060()
      {
         super();
      }
      
      public static function get _mn8930() : _dw1395
      {
         return _lh7543.get(_dw1395) as _dw1395;
      }
      
      public static function get user() : _qv587
      {
         return _qv587.getInstance();
      }
      
      public static function get data() : _hv12530
      {
         return _hv12530.getInstance();
      }
      
      public static function get _dy2407() : _bh8496
      {
         return _sw9805.getInstance().notifications;
      }
      
      public static function get _oq4061() : _sw9805
      {
         return _sw9805.getInstance();
      }
   }
}

