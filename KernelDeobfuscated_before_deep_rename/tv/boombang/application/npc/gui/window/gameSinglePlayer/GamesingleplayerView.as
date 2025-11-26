package src.tv.boombang.application.npc.gui.window.gameSinglePlayer
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.application.npc.gui.window.gameSinglePlayer.windows.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class GamesingleplayerView extends UIWindow
   {
      
      public static const _do8349:String = "initialKeyStep";
      
      public static const _yo14798:String = "initSingleGame";
      
      public function GamesingleplayerView(param1:int)
      {
         super();
         this._wg6689();
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == StepsView._by10560)
         {
            UIDialog.getInstance().remove(this);
         }
         if(param2 == StepsView._yo4206)
         {
            dispatchEvent(new Event(_yo14798));
         }
      }
      
      private function _wg6689() : void
      {
         var _loc1_:WindowsView = new WindowsView(_cw8295("GamesSingleRegisterWindow") as MovieClip,_do8349);
         _loc1_._le7018 = "games.singlePlayer.registerWindow.game_1.title";
         _loc1_._th13516 = "games.singlePlayer.registerWindow.game_1.description";
         _wj9062._lt3848(_loc1_);
      }
   }
}

