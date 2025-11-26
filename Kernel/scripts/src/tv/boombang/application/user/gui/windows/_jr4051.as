package src.tv.boombang.application.user.gui.windows
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _jr4051 extends _lx1779
   {
      
      public static const _ql11306:String = "startStep";
      
      public function _jr4051()
      {
         super();
      }
      
      override protected function init() : void
      {
         var _loc1_:_rj10079 = new _rj10079(_cw8295("ToolTipAccountUnprotected") as MovieClip,_ql11306);
         _loc1_._ay2315(_ja3764.BOTTOM,18,18,16776960);
         _loc1_.text = "tooltip.securityKeyInDeactivation";
         _wj9062._lt3848(_loc1_);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == _pm4313._by10560)
         {
            _pr2018.getInstance().remove(this);
         }
      }
   }
}

