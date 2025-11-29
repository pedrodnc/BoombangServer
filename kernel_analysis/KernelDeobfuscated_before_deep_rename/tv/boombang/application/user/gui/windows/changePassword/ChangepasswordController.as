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
      
      public static function _vx13870() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,ChangepasswordModel._ql11306);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.description = "windows.changePassword.firstStepDescription";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _bc15262() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,ChangepasswordModel._ql11306);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.description = "windows.securityCodeWasIncorrect";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _em6871() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,ChangepasswordModel._of6230);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.text = "windows.checkingSecurityKey";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _us1932() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,ChangepasswordModel._lh14608);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.text = "windows.changePassword.changingPassword";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _sh10302() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,ChangepasswordModel._fq1822);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.text = "serverRespondedWithError";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _lg455() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,ChangepasswordModel._fq1822);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.text = "windows.changePassword.serverValidationError";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _uo2186(param1:String = "") : ChangepasswordView
      {
         var _loc2_:ChangepasswordView = new ChangepasswordView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ChangePasswordWindow") as MovieClip,ChangepasswordModel._op4503);
         _loc2_._to10627 = param1;
         _loc2_.title = "windows.changePassword.changePassword";
         _loc2_._ta7578 = "windows.changePassword.oldPassword";
         _loc2_._ih11223 = "windows.changePassword.newPassword";
         _loc2_._ed12820 = "windows.changePassword.repeatNewPassword";
         _loc2_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc2_;
      }
      
      public static function _ij7779() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","AcceptedDataCard") as MovieClip,ChangepasswordModel._sx7781);
         _loc1_.title = "windows.changePassword.changePassword";
         _loc1_.text = "windows.changePassword.passwordChanged";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
   }
}

