package src.tv.boombang.application.npc.gui.window.gameSinglePlayer
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.application.npc.gui.window.gameSinglePlayer.windows.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class GamesingleplayerView extends UIWindow
   {
      
      public static const textString:String = "initialKeyStep";
      
      public static const textString1:String = "initSingleGame";
      
      public function GamesingleplayerView(param1:int)
      {
         super();
         this.registerUser();
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
      
      override protected function move1(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == StepsView.textString3)
         {
            UIDialog.getInstance().remove(this);
         }
         if(param2 == StepsView.textString)
         {
            dispatchEvent(new Event(textString1));
         }
      }
      
      private function registerUser() : void
      {
         var count2:WindowsView = new WindowsView(_cw8295("GamesSingleRegisterWindow") as MovieClip,textString);
         count2._le7018 = "games.singlePlayer.registerWindow.game_1.title";
         count2._th13516 = "games.singlePlayer.registerWindow.game_1.description";
         _wj9062._lt3848(count2);
      }
   }
}

