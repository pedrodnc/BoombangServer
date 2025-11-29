package src.tv.boombang.application.user.gui.windows.userOptions
{
   import src.tv.boombang.commons.utils.ColorUtils;
   
   public final class UseroptionsView extends ColorUtils
   {
      
      public static const _bq892:UseroptionsView = new UseroptionsView("gui.userSetupMenu.chooseCharacter");
      
      public static const _qi11934:UseroptionsView = new UseroptionsView("gui.userSetupMenu.chooseColors");
      
      public static const _bj14425:UseroptionsView = new UseroptionsView("gui.userSetupMenu.changeEmail");
      
      public static const _ql281:UseroptionsView = new UseroptionsView("gui.userSetupMenu.validateEmail");
      
      public static const _gn15140:UseroptionsView = new UseroptionsView("gui.userSetupMenu.changeSubscriptions");
      
      public static const _sh10258:UseroptionsView = new UseroptionsView("gui.userSetupMenu.changePassword");
      
      public static const _rt5055:UseroptionsView = new UseroptionsView("gui.userSetupMenu.deactivateAccount");
      
      public static const _fp4047:UseroptionsView = new UseroptionsView("windows.activateKey.title");
      
      public static const _ww14047:UseroptionsView = new UseroptionsView("windows.deactivateKey.title");
      
      public static const _yj2995:UseroptionsView = new UseroptionsView("windows.cancelDeactivateKey.title");
      
      public static const _sn11620:UseroptionsView = new UseroptionsView("windows.editConnections.title");
      
      public static const _bw14176:UseroptionsView = new UseroptionsView("windows.options.mute");
      
      _xy6875(UseroptionsView);
      
      private var _name:String;
      
      public function UseroptionsView(param1:String)
      {
         super();
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
   }
}

