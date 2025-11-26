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
         if(param1.length < TextLocalizer.count)
         {
            return false;
         }
         if(param1.length > TextLocalizer.count1)
         {
            return false;
         }
         return true;
      }
      
      public static function _nj4370(param1:String) : Boolean
      {
         var count3:int = 0;
         var count1:int = 0;
         var items:int = 0;
         var count:String = param1.toLowerCase();
         while(items < count.length)
         {
            if("123456789".indexOf(count.charAt(items)) < 0)
            {
               count1++;
            }
            items++;
         }
         if(count1 == 0)
         {
            return false;
         }
         items = 0;
         while(items < count.length)
         {
            if("abcdefghijklmnopqrstuvwxyz".indexOf(count.charAt(items)) < 0)
            {
               count3++;
            }
            items++;
         }
         if(count3 == 0)
         {
            return false;
         }
         return true;
      }
      
      public static function _pv10123(param1:String) : Boolean
      {
         var count:RegExp = /^[A-Za-z0-9._%+-]+@(([a-zA-Z]+[\w-]+\.)+[a-zA-Z]{2,4})$/i;
         return count.test(param1);
      }
   }
}

