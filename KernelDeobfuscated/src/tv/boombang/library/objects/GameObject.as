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
         var count:String = null;
         var count3:String = null;
         var items:uint = 0;
         _ue14192 = new Dictionary();
         var count1:XML = new XML(param1);
         var count2:XMLList = count1.child("object");
         var count7:uint = uint(count2.length());
         while(items < count7)
         {
            count = count2[items].attribute("name").toString();
            count3 = count2[items].attribute("class").toString();
            if(_ue14192[count] != null)
            {
               throw new Error("Duplicate localization phrase, key=" + count);
            }
            _ue14192[count] = count3;
            items++;
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
            var count1:String = "src.tv.boombang.library.objects.control.controllers." + _ue14192[param1];
            var count2:Class = getDefinitionByName(null) as Class;
            return new count2(param2,param1,param3);
         }
         return param2;
      }
   }
}

