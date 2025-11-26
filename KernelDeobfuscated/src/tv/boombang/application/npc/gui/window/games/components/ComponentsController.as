package src.tv.boombang.application.npc.gui.window.games.components
{
   import flash.display.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class ComponentsController extends MovieClip
   {
      
      private var count3:int;
      
      public function ComponentsController(param1:int)
      {
         super();
         this.count3 = param1;
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029(["trophie_game_" + this.count3 + ".png"],this._ff13430);
      }
      
      private function _ff13430() : void
      {
         var count2:Bitmap = (ServiceLocator.get(ResourceManager) as ResourceManager)._pf13231("trophie_game_" + this.count3 + ".png") as Bitmap;
         addChild(count2);
      }
   }
}

