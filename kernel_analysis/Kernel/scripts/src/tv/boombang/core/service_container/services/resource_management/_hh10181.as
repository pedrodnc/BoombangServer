package src.tv.boombang.core.service_container.services.resource_management
{
   import src.config.*;
   
   public class _hh10181
   {
      
      private var _yr8991:String;
      
      private var _tk12117:String;
      
      private var _we2837:uint;
      
      private var _ck3400:String;
      
      private var _id:String;
      
      private var _py11791:String;
      
      private var _gn930:_qs2112;
      
      public function _hh10181()
      {
         super();
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get _lv11027() : String
      {
         var _loc1_:String = "?nocache=";
         if(this._ck3400 != null && this._ck3400.length > 0)
         {
            _loc1_ += this._ck3400;
         }
         else
         {
            _loc1_ = "";
         }
         return _cc7688._su9470 + "/" + this._yr8991 + "/" + this._tk12117 + _loc1_;
      }
      
      public function get _vx10703() : String
      {
         return this._ck3400;
      }
      
      public function set _vx10703(param1:String) : void
      {
         this._ck3400 = param1;
      }
      
      public function get size() : uint
      {
         return this._we2837;
      }
      
      public function set size(param1:uint) : void
      {
         this._we2837 = param1;
      }
      
      public function get _fa5988() : String
      {
         return this._tk12117;
      }
      
      public function set _fa5988(param1:String) : void
      {
         this._tk12117 = param1;
         this._id = this._tk12117;
         this._py11791 = this._tk12117.slice(this._tk12117.lastIndexOf(".") + 1);
      }
      
      public function get _kg3936() : String
      {
         return this._yr8991;
      }
      
      public function set _kg3936(param1:String) : void
      {
         this._yr8991 = param1;
      }
      
      public function get type() : _qs2112
      {
         return this._gn930;
      }
      
      public function set type(param1:_qs2112) : void
      {
         this._gn930 = param1;
      }
      
      public function get extension() : String
      {
         return this._py11791;
      }
      
      public function set extension(param1:String) : void
      {
         this._py11791 = param1;
      }
   }
}

