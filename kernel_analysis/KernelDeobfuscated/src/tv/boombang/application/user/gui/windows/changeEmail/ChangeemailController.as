package src.tv.boombang.application.user.gui.windows.changeEmail
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class ChangeemailController
   {
      
      public function ChangeemailController()
      {
         super();
      }
      
      public static function connect() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,ChangeemailModel.textString);
         count2.title = "windows.changeEmail.changeEmailTitle";
         count2.description = "windows.changeEmail.firstStepDescription";
         count2.label = "windows.securityKey";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function connect1() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,ChangeemailModel.textString);
         count2.title = "windows.changeEmail.changeEmailTitle";
         count2.description = "windows.securityCodeWasIncorrect";
         count2.label = "windows.securityKey";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,ChangeemailModel.textString1);
         count2.title = "windows.changeEmail.changeEmailTitle";
         count2.text = "windows.checkingSecurityKey";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData1() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,ChangeemailModel.textString5);
         count2.title = "windows.changeEmail.changeEmailTitle";
         count2.text = "windows.changeEmail.sendingEmail";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function _cm1580() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","MailInputWindow") as MovieClip,ChangeemailModel.textString4,ComponentsModel.textString2);
         count2.title = "windows.changeEmail.changeEmailTitle";
         count2._ih11223 = "windows.changeEmail.newEmail";
         count2._ed12820 = "windows.changeEmail.repeatNewEmail";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData2() : ChangeemailView
      {
         var count2:ChangeemailView = new ChangeemailView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ChangeMailLastStep") as MovieClip,ChangeemailModel.textString6);
         count2.title = "windows.changeEmail.changeEmailTitle";
         count2._lt13864 = "windows.changeEmail.processCompleteText";
         count2._qb10255 = "windows.changeEmail.troubleshootingTitle";
         count2._jj10740 = "windows.changeEmail.troubleshooting1";
         count2._wj3692 = "windows.changeEmail.troubleshooting2";
         count2._yd3812 = "windows.changeEmail.troubleshooting3";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData2() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,ChangeemailModel.textString3);
         count2.title = "windows.changeEmail.changePassword";
         count2.text = "serverRespondedWithError";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
   }
}

