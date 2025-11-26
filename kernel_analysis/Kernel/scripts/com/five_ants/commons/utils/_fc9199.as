package com.five_ants.commons.utils
{
   import flash.utils.*;
   
   public function _fc9199(param1:Object) : String
   {
      var _loc2_:Array = getQualifiedClassName(param1).split("::");
      return _loc2_.length == 1 ? _loc2_[0] : _loc2_[1];
   }
}

