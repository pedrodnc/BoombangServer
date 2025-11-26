package src.tv.boombang.application.user.gui.windows.changePassword
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class ChangepasswordController
   {
      
      public function ChangepasswordController()
      {
         super();
      }
      
      public static function connect() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,ChangepasswordModel.textString);
         count2.title = "windows.changePassword.changePassword";
         count2.description = "windows.changePassword.firstStepDescription";
         count2.label = "windows.securityKey";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function connect1() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,ChangepasswordModel.textString);
         count2.title = "windows.changePassword.changePassword";
         count2.description = "windows.securityCodeWasIncorrect";
         count2.label = "windows.securityKey";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,ChangepasswordModel.textString1);
         count2.title = "windows.changePassword.changePassword";
         count2.text = "windows.checkingSecurityKey";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData1() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,ChangepasswordModel.textString4);
         count2.title = "windows.changePassword.changePassword";
         count2.text = "windows.changePassword.changingPassword";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData2() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,ChangepasswordModel.textString3);
         count2.title = "windows.changePassword.changePassword";
         count2.text = "serverRespondedWithError";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData3() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,ChangepasswordModel.textString3);
         count2.title = "windows.changePassword.changePassword";
         count2.text = "windows.changePassword.serverValidationError";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function _uo2186(param1:String = "") : ChangepasswordView
      {
         var count:ChangepasswordView = new ChangepasswordView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ChangePasswordWindow") as MovieClip,ChangepasswordModel.textString3);
         count._to10627 = param1;
         count.title = "windows.changePassword.changePassword";
         count._ta7578 = "windows.changePassword.oldPassword";
         count._ih11223 = "windows.changePassword.newPassword";
         count._ed12820 = "windows.changePassword.repeatNewPassword";
         count._xe10297 = WindowsView.TOP_RIGHT;
         return count;
      }
      
      public static function loadData2() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","AcceptedDataCard") as MovieClip,ChangepasswordModel.textString6);
         count2.title = "windows.changePassword.changePassword";
         count2.text = "windows.changePassword.passwordChanged";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
   }
}

