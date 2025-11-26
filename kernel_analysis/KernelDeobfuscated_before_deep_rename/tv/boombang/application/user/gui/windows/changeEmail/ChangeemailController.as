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
      
      public static function _vx13870() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,ChangeemailModel._ql11306);
         _loc1_.title = "windows.changeEmail.changeEmailTitle";
         _loc1_.description = "windows.changeEmail.firstStepDescription";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _bc15262() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,ChangeemailModel._ql11306);
         _loc1_.title = "windows.changeEmail.changeEmailTitle";
         _loc1_.description = "windows.securityCodeWasIncorrect";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _em6871() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,ChangeemailModel._of6230);
         _loc1_.title = "windows.changeEmail.changeEmailTitle";
         _loc1_.text = "windows.checkingSecurityKey";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _cc11960() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,ChangeemailModel._gi14353);
         _loc1_.title = "windows.changeEmail.changeEmailTitle";
         _loc1_.text = "windows.changeEmail.sendingEmail";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _cm1580() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","MailInputWindow") as MovieClip,ChangeemailModel._hs5173,ComponentsModel._rt9913);
         _loc1_.title = "windows.changeEmail.changeEmailTitle";
         _loc1_._ih11223 = "windows.changeEmail.newEmail";
         _loc1_._ed12820 = "windows.changeEmail.repeatNewEmail";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _ij7779() : ChangeemailView
      {
         var _loc1_:ChangeemailView = new ChangeemailView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ChangeMailLastStep") as MovieClip,ChangeemailModel._jm9753);
         _loc1_.title = "windows.changeEmail.changeEmailTitle";
         _loc1_._lt13864 = "windows.changeEmail.processCompleteText";
         _loc1_._qb10255 = "windows.changeEmail.troubleshootingTitle";
         _loc1_._jj10740 = "windows.changeEmail.troubleshooting1";
         _loc1_._wj3692 = "windows.changeEmail.troubleshooting2";
         _loc1_._yd3812 = "windows.changeEmail.troubleshooting3";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _sh10302() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,ChangeemailModel._fq1822);
         _loc1_.title = "windows.changeEmail.changePassword";
         _loc1_.text = "serverRespondedWithError";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
   }
}

