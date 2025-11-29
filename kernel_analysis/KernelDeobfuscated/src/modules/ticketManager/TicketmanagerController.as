package src.modules.ticketManager
{
   import flash.utils.*;
   import src.logs.*;
   import src.modules.clickBlock.*;
   
   public class TicketmanagerController
   {
      
      private static var _hj12780:Dictionary = new Dictionary();
      
      private static var textString:String = "";
      
      private static var textString1:String = "";
      
      public static var textString2:String = "EnterAreaPublic_ChooseSceneModule";
      
      public static var textString3:String = "EnterAreaCasa_ChooseSceneModule";
      
      public static var textString4:String = "MyHomeClick";
      
      public static var textString5:String = "ChooseIslaModule";
      
      public static var textString6:String = "InterfaceModule";
      
      public static var textString7:String = "CODEPRESS_ALTA_LOC_OK";
      
      public static var textString8:String = "enterSceneBpad";
      
      public static var textString25:String = "IrAlli";
      
      public function TicketmanagerController()
      {
         super();
      }
      
      public static function _xm12587(param1:String) : Boolean
      {
         if(_hj12780[param1] >= 1)
         {
            onClick("Ya existen " + _hj12780[param1] + " tickets del evento/clase " + param1,"");
            var count:* = _hj12780;
            var count3:* = param1;
            var count1:* = undefined[undefined] - 1;
            undefined[undefined] = undefined;
            return false;
         }
         _hj12780[param1] = 1;
         textString = param1;
         ClickblockModel.render(ClickblockModel.count);
         return true;
      }
      
      public static function _xh10884(param1:String) : Boolean
      {
         var count:* = undefined;
         var count3:* = undefined;
         var count1:* = undefined;
         if(_hj12780[param1] == 1)
         {
            count = _hj12780;
            count3 = param1;
            count1 = count[count3] - 1;
            count[count3] = count1;
            textString1 = param1;
            return true;
         }
         if(_ao15042 == param1)
         {
            onClick("El evento/clase " + param1," no registra ningun ticket");
         }
         return false;
      }
      
      private static function onClick(param1:String, param2:String) : void
      {
         ClickblockModel.move();
         Logger.getInstance()._kp3815(new Logs(Logger.count,param1,param2));
      }
      
      public static function get _hd36() : int
      {
         var count2:* = undefined;
         var count:int = 0;
         for(count2 in _hj12780)
         {
            if(_hj12780[count2] > 0)
            {
               count++;
            }
         }
         return count;
      }
      
      public static function _cl15459() : void
      {
         var count2:* = undefined;
         for(count2 in _hj12780)
         {
            _hj12780[count2] = 0;
         }
         ClickblockModel.move();
      }
      
      public static function get _ao15042() : String
      {
         return textString;
      }
      
      public static function get _wj5205() : String
      {
         return textString1;
      }
   }
}

