package src.tv.boombang.application.social.datatypes
{
   import src.tv.boombang.application.social.authenticators.*;
   import src.tv.boombang.application.social.sharers.*;
   import src.tv.boombang.commons.utils._fh6432;
   
   public final class _sw5071 extends _fh6432
   {
      
      public static const _to2262:_sw5071 = new _sw5071("Boombang",new _qr249(),new _pn2586());
      
      public static const _xt5593:_sw5071 = new _sw5071("Facebook",new _is4546(),new _yy12562());
      
      public static const _yy12730:_sw5071 = new _sw5071("Twitter",new _ph14978());
      
      public static const _mr16162:_sw5071 = new _sw5071("Tuenti",new _hq2026());
      
      _xy6875(_sw5071);
      
      private var _qq15402:_be51 = null;
      
      private var _vi14897:_of6728 = null;
      
      private var _name:String = "";
      
      public function _sw5071(param1:String, param2:_of6728 = null, param3:_be51 = null)
      {
         super();
         this._vi14897 = param2;
         this._qq15402 = param3;
         this._name = param1;
      }
      
      public static function get _dy13189() : Array
      {
         return [_to2262,_xt5593,_yy12730,_mr16162];
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get _wk5686() : Boolean
      {
         return this._vi14897 != null;
      }
      
      public function get _ha11838() : Boolean
      {
         return this._qq15402 != null;
      }
      
      public function get _bl5382() : _of6728
      {
         return this._vi14897;
      }
      
      public function get _lc5739() : _be51
      {
         return this._qq15402;
      }
      
      public function initialize() : void
      {
         if(this._qq15402)
         {
            this._qq15402.initialize();
         }
         if(this._vi14897)
         {
            this._vi14897.initialize();
         }
      }
   }
}

