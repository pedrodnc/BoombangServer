package src.modules.multiplayerGames
{
   import src.allData.*;
   import src.allData.color.ColorModel;
   import src.logs.*;
   import src.modules.*;
   
   public class MultiplayerLobby implements ModuleBase
   {
      
      public static const count25:int = 0;
      
      public static const count1:int = 1;
      
      protected var _tv9779:MultiplayergamesController;
      
      protected var logs:Logger;
      
      private var count32:int;
      
      private var count3:int;
      
      private var _ll5517:ColorModel;
      
      public function MultiplayerLobby(param1:MultiplayergamesController)
      {
         super();
         this.logs = Logger.getInstance();
         this.textString7 = count25;
         this._tv9779 = param1;
         this._tv9779.addEventListener(MultiplayergamesEvents.textString,this.authenticateUser);
         this.count3 = UserSession.getInstance().count1;
         this._ll5517 = UserSession.getInstance().colors;
      }
      
      public function init(param1:Object = null) : void
      {
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
         this._tv9779.removeEventListener(MultiplayergamesEvents.textString,this.authenticateUser);
         if(UserSession.getInstance().count1 != this.count3)
         {
            UserSession.getInstance().count1 = this.count3;
         }
         if(this._ll5517 != null && UserSession.getInstance().colors != this._ll5517)
         {
            UserSession.getInstance().colors = this._ll5517;
         }
      }
      
      public function get textString7() : int
      {
         return this.count32;
      }
      
      public function set textString7(param1:int) : void
      {
         this.count32 = param1;
      }
      
      public function get _ud1642() : ModuleManager
      {
         return this._tv9779;
      }
      
      public function set _ud1642(param1:ModuleManager) : void
      {
         this._tv9779 = MultiplayergamesController(param1);
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
      }
   }
}

