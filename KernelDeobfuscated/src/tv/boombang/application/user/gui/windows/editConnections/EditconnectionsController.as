package src.tv.boombang.application.user.gui.windows.editConnections
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class EditconnectionsController
   {
      
      public function EditconnectionsController()
      {
         super();
      }
      
      public static function connect() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,EditconnectionsModel.textString);
         count2.title = "windows.editConnections.title";
         count2.description = "windows.editConnections.firstStepDescription";
         count2.label = "windows.securityKey";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function connect1() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,EditconnectionsModel.textString);
         count2.title = "windows.editConnections.title";
         count2.description = "windows.securityCodeWasIncorrect";
         count2.label = "windows.securityKey";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,EditconnectionsModel.textString1);
         count2.title = "windows.editConnections.title";
         count2.text = "windows.checkingSecurityKey";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function connect3() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,EditconnectionsModel._fi12639);
         count2.title = "windows.editConnections.title";
         count2.text = "windows.editConnections.unlockingConnections";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function loadData2() : WindowsView
      {
         var count2:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,EditconnectionsModel.textString3);
         count2.title = "windows.editConnections.title";
         count2.text = "serverRespondedWithError";
         count2._xe10297 = WindowsView.TOP_RIGHT;
         return count2;
      }
      
      public static function connect5(param1:Object) : EditconnectionsModel
      {
         var count:EditconnectionsModel = new EditconnectionsModel(param1,(ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","EditConnectionsWindow") as MovieClip,EditconnectionsModel._pb5870);
         count.title = "windows.editConnections.title";
         count._hm5004 = "windows.editConnections.currentConnections";
         count._dw12784 = "windows.editConnections.availableConnections";
         count._xe10297 = WindowsView.TOP_RIGHT;
         return count;
      }
      
      public static function connect6(param1:String = "") : EditconnectionsView
      {
         var count:EditconnectionsView = new EditconnectionsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ChangePasswordWindow") as MovieClip,EditconnectionsModel._qg7263);
         count._to10627 = param1;
         count.title = "windows.editConnections.title";
         count._ml14435 = "windows.editConnections.username";
         count._ih11223 = "windows.changePassword.newPassword";
         count._ed12820 = "windows.changePassword.repeatNewPassword";
         count._xe10297 = WindowsView.TOP_RIGHT;
         return count;
      }
   }
}

