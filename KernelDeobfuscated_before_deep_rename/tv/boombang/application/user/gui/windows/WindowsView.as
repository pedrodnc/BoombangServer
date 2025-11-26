package src.tv.boombang.application.user.gui.windows
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class WindowsView extends UIWindow
   {
      
      public static const _ql11306:String = "startStep";
      
      public function WindowsView()
      {
         super();
      }
      
      override protected function init() : void
      {
         var _loc1_:WindowsView = new WindowsView(_cw8295("ToolTipAccountUnprotected") as MovieClip,_ql11306);
         _loc1_.text = "tooltip.exchangeActivation";
         _loc1_._oi4498(0,81);
         _loc1_._ay2315(WindowsView.RIGHT,18,18,16776960);
         _wj9062._lt3848(_loc1_);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == StepsView._by10560)
         {
            UIDialog.getInstance().remove(this);
         }
      }
   }
}

