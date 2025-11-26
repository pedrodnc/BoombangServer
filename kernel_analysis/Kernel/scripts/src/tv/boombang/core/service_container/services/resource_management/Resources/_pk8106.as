package src.tv.boombang.core.service_container.services.resource_management.Resources
{
   public class _pk8106 extends _gg3875
   {
      
      private var _data:String;
      
      public function _pk8106(param1:String, param2:String)
      {
         super(param1,param2);
      }
      
      public function _mg5102(param1:Boolean = false) : String
      {
         var _loc2_:String = null;
         if(this._data != null)
         {
            return this._data;
         }
         if(_es2525 != null)
         {
            _loc2_ = _es2525.readMultiByte(_es2525.length,"utf-8");
            _es2525.position = 0;
            this._data = _loc2_;
            return this._data;
         }
         return null;
      }
      
      public function _fp2025(param1:Boolean = false) : String
      {
         var _loc2_:String = null;
         if(this._data != null)
         {
            return this._data;
         }
         if(_es2525 != null)
         {
            _es2525.uncompress();
            _loc2_ = _es2525.readMultiByte(_es2525.length,"utf-8");
            _es2525.position = 0;
            this._data = _loc2_;
            return this._data;
         }
         return null;
      }
   }
}

