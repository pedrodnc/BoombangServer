package src.tv.boombang.application.npc.gui.window.games.components
{
   import flash.display.*;
   import flash.text.*;
   import src.modules.multiplayerGames.dataGame.*;
   import src.tv.boombang.application.npc.gui.window.games.windows.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class _bk14913 extends MovieClip
   {
      
      protected var _xo6614:MovieClip;
      
      private var _cs3147:int;
      
      private var _da13484:int;
      
      private var _ii8971:int;
      
      public function _bk14913(param1:int, param2:int)
      {
         super();
         this._cs3147 = param1;
         this._da13484 = param2;
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","GamesLevelsInformationBoxes") as MovieClip;
         addChild(this._xo6614);
         _xv14798._ll15297(this._xo6614["background"],_du6524._tj10999[param1],1);
         this._xo6614.setChildIndex(this._xo6614["background"],0);
         this._th13516 = "games.prizes.game_" + this._cs3147 + ".level_" + this._da13484;
         this._ii8971 = _oc1650._fv13263(this._cs3147);
         (_lh7543.get(_vy3822) as _vy3822)._vv13029(["game_" + this._ii8971 + "_" + this._da13484 + ".png"],this._ff13430);
      }
      
      private function _ff13430() : void
      {
         var _loc1_:Bitmap = (_lh7543.get(_vy3822) as _vy3822)._pf13231("game_" + this._ii8971 + "_" + this._da13484 + ".png") as Bitmap;
         _loc1_.scaleX = 0.85;
         _loc1_.scaleY = 0.85;
         _loc1_.smoothing = true;
         _loc1_.x = 7;
         this._xo6614.addChild(_loc1_);
      }
      
      public function set _th13516(param1:String) : void
      {
         _yq8362._bj8346(this._xo6614["descriptionTxt"]["txt"] as TextField,param1);
         this._xo6614["descriptionTxt"]["txt"].autoSize = TextFieldAutoSize.LEFT;
         this._xo6614["descriptionTxt"]["txt"].width = 150;
         var _loc2_:TextFormat = (this._xo6614["descriptionTxt"]["txt"] as TextField).getTextFormat();
         _loc2_.align = "left";
         _loc2_.size = 12;
         this._xo6614["descriptionTxt"]["txt"].setTextFormat(_loc2_);
      }
      
      override public function get width() : Number
      {
         return this._xo6614["background"].width;
      }
      
      override public function get height() : Number
      {
         return this._xo6614["background"].height;
      }
   }
}

