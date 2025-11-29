package src.tv.boombang.application.npc.gui.window.games.components
{
   import flash.display.*;
   import src.modules.multiplayerGames.dataGame.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _wm11567 extends MovieClip
   {
      
      private var _lj8573:int;
      
      public function _wm11567(param1:int)
      {
         super();
         this._lj8573 = param1;
         if(this._lj8573 == _oc1650._hx13454)
         {
            (_lh7543.get(_vy3822) as _vy3822)._vv13029(["ringlevel.png"],this._ff13431);
         }
         if(this._lj8573 == _oc1650._pa14595)
         {
            (_lh7543.get(_vy3822) as _vy3822)._vv13029(["ringlevel.png"],this._ff13431);
         }
         if(this._lj8573 == _oc1650._de12066)
         {
            (_lh7543.get(_vy3822) as _vy3822)._vv13029(["hiddenPathLevels.png"],this._ff13430);
         }
         if(this._lj8573 == _oc1650._qf5633)
         {
            (_lh7543.get(_vy3822) as _vy3822)._vv13029(["cocolevel.png"],this._ff13434);
         }
         else
         {
            if(this._lj8573 == _oc1650._hx13454 || this._lj8573 == _oc1650._de12066)
            {
               return;
            }
            (_lh7543.get(_vy3822) as _vy3822)._vv13029(["battleroyalelevel.png"],this._ff13432);
         }
      }
      
      private function _ff13431() : void
      {
         var _loc1_:Bitmap = (_lh7543.get(_vy3822) as _vy3822)._pf13231("ringlevel.png") as Bitmap;
         _loc1_.y = -8;
         addChild(_loc1_);
      }
      
      private function _ff13432() : void
      {
         var _loc1_:Bitmap = (_lh7543.get(_vy3822) as _vy3822)._pf13231("battleroyalelevel.png") as Bitmap;
         _loc1_.y = -8;
         addChild(_loc1_);
      }
      
      private function _ff13430() : void
      {
         var _loc1_:Bitmap = null;
         _loc1_ = (_lh7543.get(_vy3822) as _vy3822)._pf13231("hiddenPathLevels.png") as Bitmap;
         _loc1_.y = -8;
         addChild(_loc1_);
      }
      
      private function _ff13434() : void
      {
         var _loc1_:Bitmap = (_lh7543.get(_vy3822) as _vy3822)._pf13231("cocolevel.png") as Bitmap;
         _loc1_.y = -8;
         addChild(_loc1_);
      }
   }
}

