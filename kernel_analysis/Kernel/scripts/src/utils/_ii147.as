package src.utils
{
   public class _ii147
   {
      
      private static var _lg3214:Array = ["test","boombang","cola","caca","pass","password","xxyyzz","user","admin","porno","sexo","amor","dinero","qwerty"];
      
      public function _ii147()
      {
         super();
      }
      
      public static function _uj937(param1:String) : Boolean
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         param1 = param1.toLowerCase();
         for each(_loc2_ in _lg3214)
         {
            if(param1 == _loc2_)
            {
               return false;
            }
         }
         _loc4_ = -1;
         while(_loc4_ < 2)
         {
            _loc3_ = 0;
            _loc5_ = 0;
            while(_loc5_ < param1.length - 1)
            {
               _loc6_ = int(param1.charCodeAt(_loc5_));
               _loc7_ = int(param1.charCodeAt(_loc5_ + 1));
               _loc8_ = param1.charCodeAt(_loc5_ + 1) + _loc4_;
               if(param1.charCodeAt(_loc5_) == param1.charCodeAt(_loc5_ + 1) + _loc4_)
               {
                  _loc3_++;
               }
               else
               {
                  _loc3_ = 0;
               }
               _loc5_++;
            }
            if(_loc3_ >= param1.length - 1)
            {
               return false;
            }
            _loc4_++;
         }
         return true;
      }
   }
}

