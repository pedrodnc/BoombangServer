package src.tv.boombang.core.service_container
{
   import flash.utils.*;
   import src.tv.boombang.commons.loadables.*;
   
   public class _lh7543
   {
      
      private static var _instance:_lh7543;
      
      private var _ap7335:Dictionary;
      
      public function _lh7543(param1:_cf13435)
      {
         super();
         if(!(param1 is _cf13435))
         {
            throw new Error("Services class is a singleton. Shouldn\'t be instantiated");
         }
         this._ap7335 = new Dictionary();
      }
      
      public static function add(param1:Class, param2:Object = null) : Boolean
      {
         return getInstance().add(param1,param2);
      }
      
      public static function _un2007(param1:Array, param2:Function) : void
      {
         getInstance()._un2007(param1,param2);
      }
      
      public static function get(param1:Class) : _wk782
      {
         return getInstance().get(param1);
      }
      
      private static function getInstance() : _lh7543
      {
         if(_instance == null)
         {
            _instance = new _lh7543(new _cf13435());
         }
         return _instance;
      }
      
      private function add(param1:Class, param2:Object = null) : Boolean
      {
         if(this._ap7335.hasOwnProperty(getQualifiedClassName(param1)))
         {
            return true;
         }
         var _loc3_:_wk782 = new param1();
         if(_loc3_.start(param2))
         {
            this._ap7335[getQualifiedClassName(param1)] = _loc3_;
            return true;
         }
         return false;
      }
      
      private function _un2007(param1:Array, param2:Function) : void
      {
         var _loc3_:Class = null;
         var _loc4_:Array = new Array();
         for each(_loc3_ in param1)
         {
            this.add(_loc3_);
            _loc4_.push(this._ap7335[getQualifiedClassName(_loc3_)]);
         }
         new _ay13187(_loc4_,param2);
      }
      
      private function get(param1:Class) : _wk782
      {
         if(Boolean(this._ap7335.hasOwnProperty(getQualifiedClassName(param1))) && Boolean((this._ap7335[getQualifiedClassName(param1)] as _wk782)._kn5152))
         {
            return this._ap7335[getQualifiedClassName(param1)];
         }
         return null;
      }
   }
}

class _cf13435
{
   
   public function _cf13435()
   {
      super();
   }
}
