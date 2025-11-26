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
      
      public static function _vx13870() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,EditconnectionsModel._ql11306);
         _loc1_.title = "windows.editConnections.title";
         _loc1_.description = "windows.editConnections.firstStepDescription";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _bc15262() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,EditconnectionsModel._ql11306);
         _loc1_.title = "windows.editConnections.title";
         _loc1_.description = "windows.securityCodeWasIncorrect";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _em6871() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,EditconnectionsModel._of6230);
         _loc1_.title = "windows.editConnections.title";
         _loc1_.text = "windows.checkingSecurityKey";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _ty10842() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,EditconnectionsModel._fi12639);
         _loc1_.title = "windows.editConnections.title";
         _loc1_.text = "windows.editConnections.unlockingConnections";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _sh10302() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,EditconnectionsModel._fq1822);
         _loc1_.title = "windows.editConnections.title";
         _loc1_.text = "serverRespondedWithError";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _je11018(param1:Object) : EditconnectionsModel
      {
         var _loc2_:EditconnectionsModel = new EditconnectionsModel(param1,(ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","EditConnectionsWindow") as MovieClip,EditconnectionsModel._pb5870);
         _loc2_.title = "windows.editConnections.title";
         _loc2_._hm5004 = "windows.editConnections.currentConnections";
         _loc2_._dw12784 = "windows.editConnections.availableConnections";
         _loc2_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc2_;
      }
      
      public static function _jk1276(param1:String = "") : EditconnectionsView
      {
         var _loc2_:EditconnectionsView = new EditconnectionsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ChangePasswordWindow") as MovieClip,EditconnectionsModel._qg7263);
         _loc2_._to10627 = param1;
         _loc2_.title = "windows.editConnections.title";
         _loc2_._ml14435 = "windows.editConnections.username";
         _loc2_._ih11223 = "windows.changePassword.newPassword";
         _loc2_._ed12820 = "windows.changePassword.repeatNewPassword";
         _loc2_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc2_;
      }
   }
}

