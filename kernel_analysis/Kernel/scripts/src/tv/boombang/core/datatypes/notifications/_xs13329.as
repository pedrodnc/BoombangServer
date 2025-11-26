package src.tv.boombang.core.datatypes.notifications
{
   public class _xs13329 extends _ac14381
   {
      
      private var _em8420:String;
      
      private var _wg15056:String;
      
      private var _nj12125:String;
      
      private var _we10119:int;
      
      public function _xs13329()
      {
         super();
      }
      
      override public function parse(param1:Array) : _ac14381
      {
         super.parse(param1);
         var _loc2_:int = 4 + parseInt(param1[3]);
         this._em8420 = param1[_loc2_++];
         this._wg15056 = param1[_loc2_++];
         this._nj12125 = param1[_loc2_++];
         this._we10119 = param1[_loc2_];
         return this;
      }
      
      public function get level() : int
      {
         return this._we10119;
      }
      
      public function set level(param1:int) : void
      {
         this._we10119 = param1;
      }
      
      public function get _gs12774() : String
      {
         return this._nj12125;
      }
      
      public function set _gs12774(param1:String) : void
      {
         this._nj12125 = param1;
      }
      
      public function get _qa11276() : String
      {
         return this._wg15056;
      }
      
      public function set _qa11276(param1:String) : void
      {
         this._wg15056 = param1;
      }
      
      public function get _kv12836() : String
      {
         return this._em8420;
      }
      
      public function set _kv12836(param1:String) : void
      {
         this._em8420 = param1;
      }
   }
}

