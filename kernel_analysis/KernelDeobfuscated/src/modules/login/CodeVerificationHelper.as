package src.modules.login
{
   import flash.display.DisplayObject;
   import src.utils.*;
   
   public class CodeVerificationHelper
   {
      
      private static const textString:String = "mcFichaAyudaCodigos";
      
      private static const textString1:String = "tfTitulo";
      
      private static const textString2:String = "tfItem1";
      
      private static const textString3:String = "tfItem2";
      
      private static const textString4:String = "tfItem3";
      
      public function CodeVerificationHelper()
      {
         super();
      }
      
      public static function authenticateUser(param1:DisplayObject) : void
      {
         var count:LoginModel = new LoginModel();
         UtilsUtils._xl9503(param1[textString][textString1],count._tv2439);
         UtilsUtils._bj8346(param1[textString][textString2],count._eg5797);
         UtilsUtils._bj8346(param1[textString][textString3],count._qt13688);
         UtilsUtils._bj8346(param1[textString][textString4],count._bu299);
      }
   }
}

