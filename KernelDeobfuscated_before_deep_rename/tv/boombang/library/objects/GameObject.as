package src.tv.boombang.library.objects
{
   import flash.display.MovieClip;
   import flash.utils.*;
   import src.tv.boombang.library.objects.control.AutomaticClassAccess;
   import src.tv.boombang.library.objects.control.controllers.*;
   
   public class GameObject
   {
      
      private static var _ue14192:Dictionary;
      
      private var _vh7604:AutomaticClassAccess;
      
      public function GameObject()
      {
         super();
      }
      
      public static function _ws15664(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc7_:uint = 0;
         _ue14192 = new Dictionary();
         var _loc4_:XML = new XML(param1);
         var _loc5_:XMLList = _loc4_.child("object");
         var _loc6_:uint = uint(_loc5_.length());
         while(_loc7_ < _loc6_)
         {
            _loc2_ = _loc5_[_loc7_].attribute("name").toString();
            _loc3_ = _loc5_[_loc7_].attribute("class").toString();
            if(_ue14192[_loc2_] != null)
            {
               throw new Error("Duplicate localization phrase, key=" + _loc2_);
            }
            _ue14192[_loc2_] = _loc3_;
            _loc7_++;
         }
      }
      
      public static function _wn4796(param1:String, param2:MovieClip, param3:int) : MovieClip
      {
         if(!_ue14192)
         {
            throw new Error("Error functionality asset");
         }
         if(_ue14192.hasOwnProperty(param1))
         {
            var _loc4_:String = "src.tv.boombang.library.objects.control.controllers." + _ue14192[param1];
            var _loc5_:Class = getDefinitionByName(null) as Class;
            return new _loc5_(param2,param1,param3);
         }
         return param2;
      }
   }
}

