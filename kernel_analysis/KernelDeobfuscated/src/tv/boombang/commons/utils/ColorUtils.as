package src.tv.boombang.commons.utils
{
   import flash.errors.*;
   import flash.utils.*;
   
   public class ColorUtils
   {
      
      protected static var _lj13042:Object = new Object();
      
      protected static var items:Array = new Array();
      
      private var _label:String;
      
      public function ColorUtils()
      {
         super();
         var count2:String = getQualifiedClassName(this);
         if(_lj13042[count2])
         {
            throw new IllegalOperationError("Cannot instantiate anymore: " + count2);
         }
      }
      
      protected static function _xy6875(param1:Class) : void
      {
         var count:XML = null;
         var count3:String = null;
         var count1:String = getQualifiedClassName(param1);
         var count2:XML = describeType(param1);
         for each(count in count2["constant"])
         {
            count3 = count.attribute("name");
            param1[count3]._label = count3;
            items.push(param1[count3]);
         }
         _lj13042[count1] = true;
      }
      
      public function get label() : String
      {
         return this._label;
      }
   }
}

