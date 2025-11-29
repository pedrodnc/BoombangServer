package com.five_ants.commons.debug.logging
{
   import com.five_ants.commons.datatypes._fh6432;
   
   public class _vw7000 extends _fh6432
   {
      
      public static const INFO:_vw7000 = new _vw7000("info");
      
      public static const WARN:_vw7000 = new _vw7000("warn");
      
      public static const ERROR:_vw7000 = new _vw7000("error");
      
      public static const LOG:_vw7000 = new _vw7000("log");
      
      _xy6875(_vw7000);
      
      private var _ld13642:String;
      
      public function _vw7000(param1:String)
      {
         super();
         this._ld13642 = param1;
      }
      
      public function get _hb1544() : String
      {
         return this._ld13642;
      }
   }
}

