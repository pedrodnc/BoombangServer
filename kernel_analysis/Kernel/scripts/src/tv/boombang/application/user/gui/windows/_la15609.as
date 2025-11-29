package src.tv.boombang.application.user.gui.windows
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _la15609 extends _lx1779
   {
      
      public static const _ql11306:String = "startStep";
      
      public function _la15609()
      {
         super();
      }
      
      override protected function init() : void
      {
         var _loc1_:_cw4332 = new _cw4332(_cw8295("ToolTipActivateSuperKey") as MovieClip,_ql11306);
         _loc1_.text = "tooltip.securityKeyActivation";
         _loc1_._ay2315(_ja3764.BOTTOM,18,18,16776960);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == _pm4313._by10560)
         {
            _pr2018.getInstance().remove(this);
         }
         switch(param1)
         {
            case _ql11306:
               if(param2 == _pm4313._dh1979)
               {
                  dispatchEvent(new Event(param2));
               }
               return;
            default:
               return;
         }
      }
   }
}

