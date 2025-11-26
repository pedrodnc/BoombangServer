package src.tv.boombang.application.rankings.gui.windows
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class RankingsWindow extends UIWindow implements Interfaces
   {
      
      public static const _ii8405:String = "rankingMenu";
      
      private var _vk5423:WindowsView;
      
      private var _ck5194:int;
      
      public function RankingsWindow(param1:int)
      {
         this._ck5194 = param1;
         super();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._vk5423)
         {
            this._vk5423.destroy();
         }
         this._vk5423 = null;
      }
      
      override protected function init() : void
      {
         this._vk5423 = new WindowsView(_cw8295("RankingWindow") as MovieClip,RankingsWindow._ii8405,this._ck5194);
         _wj9062._lt3848(this._vk5423);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == StepsView._by10560)
         {
            UIDialog.getInstance().remove(this);
            dispatchEvent(new Event("onCloseWindow"));
         }
      }
   }
}

