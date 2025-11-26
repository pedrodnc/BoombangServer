package src.tv.boombang.application.npc.gui.window.games.components
{
   import flash.display.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _kp6241 extends MovieClip
   {
      
      private var _lj8573:int;
      
      public function _kp6241(param1:int)
      {
         super();
         this._lj8573 = param1;
         (_lh7543.get(_vy3822) as _vy3822)._vv13029(["trophie_game_" + this._lj8573 + ".png"],this._ff13430);
      }
      
      private function _ff13430() : void
      {
         var _loc1_:Bitmap = (_lh7543.get(_vy3822) as _vy3822)._pf13231("trophie_game_" + this._lj8573 + ".png") as Bitmap;
         addChild(_loc1_);
      }
   }
}

