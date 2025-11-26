package src.tv.boombang.commons.utils
{
   import src.allData.texts.*;
   
   public class UtilsModel
   {
      
      public function UtilsModel()
      {
         super();
      }
      
      public static function _ai14934(param1:String, param2:String) : Boolean
      {
         if(param1 == param2)
         {
            return false;
         }
         return true;
      }
      
      public static function _vm12952(param1:String) : Boolean
      {
         if(param1.length < TextLocalizer._ut5697)
         {
            return false;
         }
         if(param1.length > TextLocalizer._ik13685)
         {
            return false;
         }
         return true;
      }
      
      public static function _nj4370(param1:String) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:String = param1.toLowerCase();
         while(_loc7_ < _loc2_.length)
         {
            if("123456789".indexOf(_loc2_.charAt(_loc7_)) < 0)
            {
               _loc4_++;
            }
            _loc7_++;
         }
         if(_loc4_ == 0)
         {
            return false;
         }
         _loc7_ = 0;
         while(_loc7_ < _loc2_.length)
         {
            if("abcdefghijklmnopqrstuvwxyz".indexOf(_loc2_.charAt(_loc7_)) < 0)
            {
               _loc3_++;
            }
            _loc7_++;
         }
         if(_loc3_ == 0)
         {
            return false;
         }
         return true;
      }
      
      public static function _pv10123(param1:String) : Boolean
      {
         var _loc2_:RegExp = /^[A-Za-z0-9._%+-]+@(([a-zA-Z]+[\w-]+\.)+[a-zA-Z]{2,4})$/i;
         return _loc2_.test(param1);
      }
   }
}

