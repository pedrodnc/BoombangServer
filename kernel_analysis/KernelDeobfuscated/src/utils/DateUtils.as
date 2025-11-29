package src.utils
{
   public class DateUtils
   {
      
      private static var _xf5268:MathUtils;
      
      private static var count:Number;
      
      private static var count1:int;
      
      private static var count2:int;
      
      private static var count3:int;
      
      private static var count4:int;
      
      private static var count5:int;
      
      private static var count6:int;
      
      private static const textString23:String = "w ";
      
      private static const textString24:String = "d ";
      
      private static const textString25:String = "h ";
      
      private static const textString26:String = "m ";
      
      private static const textString27:String = "s ";
      
      private static const count:int = 7;
      
      private static const count1:int = 24;
      
      private static const count2:int = 60;
      
      private static const count3:int = count * count1 * count2;
      
      private static var textString5:String = "";
      
      private static var count11:int = 0;
      
      public function DateUtils()
      {
         super();
      }
      
      public static function _os4304(param1:Number = 1) : MathUtils
      {
         _le11515(param1);
         _xf5268 = new MathUtils();
         _xf5268._de6958(count6,MathUtils.textString);
         _xf5268._de6958(count5,MathUtils.count2);
         _xf5268._de6958(count4,MathUtils.count1);
         _xf5268._de6958(count3,MathUtils.count);
         _xf5268._de6958(count2,MathUtils.count3);
         return _xf5268;
      }
      
      public static function getString(param1:Number = 1, param2:int = 2) : String
      {
         var count3:String = null;
         var count1:String = null;
         var count2:String = null;
         count11 = 0;
         textString5 = "";
         _le11515(param1);
         if(count2 > 0)
         {
            textString5 = count2 + textString23;
            ++count11;
         }
         if(count3 > 0)
         {
            textString5 += count3 + textString24;
            ++count11;
         }
         if(count4 > 0 && count11 < param2)
         {
            count3 = count4 < 10 ? "0" + String(count4) : String(count4);
            textString5 += count3 + textString25;
            ++count11;
         }
         if(count5 > 0 && count11 < param2)
         {
            count1 = count5 < 10 ? "0" + String(count5) : String(count5);
            textString5 += count1 + textString26;
            ++count11;
         }
         if(count11 < param2 && count6 > 0)
         {
            count2 = count6 < 10 ? "0" + String(count6) : String(count6);
            textString5 += count2 + textString27;
         }
         else if(count11 < param2)
         {
            textString5 += "0" + textString27;
         }
         return textString5;
      }
      
      private static function _le11515(param1:Number) : void
      {
         count = param1 / count3;
         count2 = int(count);
         count -= count2;
         count *= count;
         count3 = int(count);
         count -= count3;
         count *= count1;
         count4 = int(count);
         count -= count4;
         count *= count2;
         count5 = int(count);
         count -= count5;
         count *= count2;
         count6 = int(count);
      }
   }
}

