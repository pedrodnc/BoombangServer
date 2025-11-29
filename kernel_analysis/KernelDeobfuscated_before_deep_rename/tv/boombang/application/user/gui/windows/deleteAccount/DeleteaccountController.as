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
      
      public static function _vx13870() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,DeleteaccountModel._ql11306);
         _loc1_.title = "windows.deleteAccount.deleteAccount";
         _loc1_.description = "windows.deleteAccount.firstStepDescription";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _bc15262() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","KeyInputWindow") as MovieClip,DeleteaccountModel._ql11306);
         _loc1_.title = "windows.deleteAccount.deleteAccount";
         _loc1_.description = "windows.securityCodeWasIncorrect";
         _loc1_.label = "windows.securityKey";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _em6871() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,DeleteaccountModel._of6230);
         _loc1_.title = "windows.deleteAccount.deleteAccount";
         _loc1_.text = "windows.checkingSecurityKey";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _nh2269() : DeleteaccountView
      {
         var _loc1_:DeleteaccountView = new DeleteaccountView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","DeleteAccountWindow") as MovieClip,DeleteaccountModel._kf198);
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _ue9620() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","SendingDataCard") as MovieClip,DeleteaccountModel._by4099);
         _loc1_.title = "windows.deleteAccount.deleteAccount";
         _loc1_.text = "windows.deleteAccount.deletingAccount";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _ij7779() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","AcceptedDataCard") as MovieClip,DeleteaccountModel._sx7781);
         _loc1_.title = "windows.deleteAccount.deleteAccount";
         _loc1_.text = "windows.deleteAccount.deletionComplete";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
      
      public static function _sh10302() : WindowsView
      {
         var _loc1_:WindowsView = new WindowsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","ErrorDataCard") as MovieClip,DeleteaccountModel._fq1822);
         _loc1_.title = "windows.deleteAccount.deleteAccount";
         _loc1_.text = "serverRespondedWithError";
         _loc1_._xe10297 = WindowsView.TOP_RIGHT;
         return _loc1_;
      }
   }
}

