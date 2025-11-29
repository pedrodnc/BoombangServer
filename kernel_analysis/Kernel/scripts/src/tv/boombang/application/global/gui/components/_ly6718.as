package src.tv.boombang.application.global.gui.components
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import src.utils.*;
   
   public class _ly6718 extends _va5249
   {
      
      public function _ly6718(param1:MovieClip, param2:String = "", param3:String = null)
      {
         if(param3 == null)
         {
            param3 = _qd3237;
         }
         super(param1,param2,param3);
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         _xo6614.enabled = param1;
         _xo6614.useHandCursor = param1;
         if(!param1)
         {
            if(_xv14798._tm12465(_xo6614,_wu6647) != -1)
            {
               _xo6614.gotoAndStop(_wu6647);
            }
            _xo6614.alpha = 0.5;
         }
         else
         {
            if(_xv14798._tm12465(_xo6614,_ep8467) != -1)
            {
               _xo6614.gotoAndStop(_ep8467);
            }
            _xo6614.alpha = 1;
         }
      }
      
      override protected function _rt5195(param1:MouseEvent) : void
      {
         _ai4478(param1);
         if(_xo6614.enabled)
         {
            if(_xo6614.currentLabels.indexOf(OVER_STATE) != -1)
            {
               _xo6614.gotoAndStop(OVER_STATE);
            }
            if(_sd13687)
            {
               _sd13687.transform.colorTransform = _lf14786;
            }
         }
      }
      
      override protected function _qu5290(param1:MouseEvent) : void
      {
         _ai4478(param1);
         if(_xo6614.enabled)
         {
            if(_xo6614.currentLabels.indexOf(_ep8467) != -1)
            {
               _xo6614.gotoAndStop(_ep8467);
            }
            if(_sd13687)
            {
               _sd13687.transform.colorTransform = _ug8797;
            }
         }
      }
   }
}

