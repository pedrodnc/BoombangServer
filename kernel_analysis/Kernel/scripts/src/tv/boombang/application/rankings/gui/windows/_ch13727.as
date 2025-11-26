package src.tv.boombang.application.rankings.gui.windows
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _ch13727 extends _lx1779 implements _jk15536
   {
      
      public static const _ii8405:String = "rankingMenu";
      
      private var _vk5423:_uc512;
      
      private var _ck5194:int;
      
      public function _ch13727(param1:int)
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
         this._vk5423 = new _uc512(_cw8295("RankingWindow") as MovieClip,_ch13727._ii8405,this._ck5194);
         _wj9062._lt3848(this._vk5423);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == _pm4313._by10560)
         {
            _pr2018.getInstance().remove(this);
            dispatchEvent(new Event("onCloseWindow"));
         }
      }
   }
}

