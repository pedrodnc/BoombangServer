package src.tv.boombang.application.user.gui.windows.deleteAccount
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class DeleteaccountController
   {
      
      public function DeleteaccountController()
      {
         super();
      }
      
      public static function connect() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,DeleteaccountModel.textString);
         count2.title = "windows.deleteAccount.deleteAccount";
         count2.description = "windows.deleteAccount.firstStepDescription";
         count2.label = "windows.securityKey";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function connect1() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,DeleteaccountModel.textString);
         count2.title = "windows.deleteAccount.deleteAccount";
         count2.description = "windows.securityCodeWasIncorrect";
         count2.label = "windows.securityKey";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,DeleteaccountModel.textString1);
         count2.title = "windows.deleteAccount.deleteAccount";
         count2.text = "windows.checkingSecurityKey";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function destroy2() : DeleteaccountView
      {
         var count2:DeleteaccountView = new DeleteaccountView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","DeleteAccountWindow") as MovieClip,DeleteaccountModel.textString4);
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData1() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,DeleteaccountModel.textString5);
         count2.title = "windows.deleteAccount.deleteAccount";
         count2.text = "windows.deleteAccount.deletingAccount";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData2() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","AcceptedDataCard") as MovieClip,DeleteaccountModel.textString6);
         count2.title = "windows.deleteAccount.deleteAccount";
         count2.text = "windows.deleteAccount.deletionComplete";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData2() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,DeleteaccountModel.textString3);
         count2.title = "windows.deleteAccount.deleteAccount";
         count2.text = "serverRespondedWithError";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
   }
}

