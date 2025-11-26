package src.modules.login
{
   import flash.display.DisplayObject;
   import src.utils.*;
   
   public class CodeVerificationHelper
   {
      
      private static const _ku9346:String = "mcFichaAyudaCodigos";
      
      private static const _wq8129:String = "tfTitulo";
      
      private static const _cp4836:String = "tfItem1";
      
      private static const _vy13447:String = "tfItem2";
      
      private static const _nq15624:String = "tfItem3";
      
      public function CodeVerificationHelper()
      {
         super();
      }
      
      public static function _ra15698(param1:DisplayObject) : void
      {
         var _loc2_:LoginModel = new LoginModel();
         UtilsUtils._xl9503(param1[_ku9346][_wq8129],_loc2_._tv2439);
         UtilsUtils._bj8346(param1[_ku9346][_cp4836],_loc2_._eg5797);
         UtilsUtils._bj8346(param1[_ku9346][_vy13447],_loc2_._qt13688);
         UtilsUtils._bj8346(param1[_ku9346][_nq15624],_loc2_._bu299);
      }
   }
}

