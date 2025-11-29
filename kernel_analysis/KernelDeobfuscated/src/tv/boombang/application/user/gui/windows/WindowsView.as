package src.tv.boombang.application.user.gui.windows
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class WindowsView extends UIWindow
   {
      
      public static const textString:String = "startStep";
      
      public function WindowsView()
      {
         super();
      }
      
      override protected function init() : void
      {
         var count2:WindowsView = new WindowsView(_cw8295("ToolTipAccountUnprotected") as MovieClip,textString);
         count2.text = "tooltip.exchangeActivation";
         count2._oi4498(0,81);
         count2._ay2315(WindowsView.RIGHT,18,18,16776960);
         _wj9062._lt3848(count2);
      }
      
      override protected function move1(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == StepsView.textString3)
         {
            UIDialog.getInstance().remove(this);
         }
      }
   }
}

