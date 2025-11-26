package src.modules.multiplayerGames
{
   import src.allData.*;
   import src.allData.color.ColorModel;
   import src.logs.*;
   import src.modules.*;
   
   public class MultiplayerLobby implements ModuleBase
   {
      
      public static const _ai7182:int = 0;
      
      public static const _nu6936:int = 1;
      
      protected var _tv9779:MultiplayergamesController;
      
      protected var logs:Logger;
      
      private var _ju13599:int;
      
      private var _xs8104:int;
      
      private var _ll5517:ColorModel;
      
      public function MultiplayerLobby(param1:MultiplayergamesController)
      {
         super();
         this.logs = Logger.getInstance();
         this._jd12664 = _ai7182;
         this._tv9779 = param1;
         this._tv9779.addEventListener(MultiplayergamesEvents._eb9995,this._bw11981);
         this._xs8104 = UserSession.getInstance()._jn11596;
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
         this._tv9779.removeEventListener(MultiplayergamesEvents._eb9995,this._bw11981);
         if(UserSession.getInstance()._jn11596 != this._xs8104)
         {
            UserSession.getInstance()._jn11596 = this._xs8104;
         }
         if(this._ll5517 != null && UserSession.getInstance().colors != this._ll5517)
         {
            UserSession.getInstance().colors = this._ll5517;
         }
      }
      
      public function get _jd12664() : int
      {
         return this._ju13599;
      }
      
      public function set _jd12664(param1:int) : void
      {
         this._ju13599 = param1;
      }
      
      public function get _ud1642() : ModuleManager
      {
         return this._tv9779;
      }
      
      public function set _ud1642(param1:ModuleManager) : void
      {
         this._tv9779 = MultiplayergamesController(param1);
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
      }
   }
}

