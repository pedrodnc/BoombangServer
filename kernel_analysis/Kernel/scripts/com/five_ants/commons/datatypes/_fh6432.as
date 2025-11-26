package com.five_ants.commons.datatypes
{
   import flash.errors.*;
   import flash.utils.*;
   
   public class _fh6432
   {
      
      protected static var _lj13042:Dictionary = new Dictionary();
      
      protected static var _dy13189:Array = new Array();
      
      private var _label:String;
      
      public function _fh6432()
      {
         super();
         var _loc1_:String = getQualifiedClassName(this);
         if(_lj13042[_loc1_])
         {
            throw new IllegalOperationError("Cannot instantiate anymore: " + _loc1_);
         }
      }
      
      protected static function _xy6875(param1:Class) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = getQualifiedClassName(param1);
         var _loc5_:XML = describeType(param1);
         for each(_loc2_ in _loc5_["constant"])
         {
            _loc3_ = _loc2_.attribute("name");
            param1[_loc3_]._label = _loc3_;
            _dy13189.push(param1[_loc3_]);
         }
         _lj13042[_loc4_] = true;
      }
      
      public function get label() : String
      {
         return this._label;
      }
   }
}

