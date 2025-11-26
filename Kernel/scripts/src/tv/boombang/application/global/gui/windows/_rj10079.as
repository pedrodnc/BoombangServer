package src.tv.boombang.application.global.gui.windows
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.utils.*;
   
   public class _rj10079 extends _ja3764
   {
      
      public function _rj10079(param1:MovieClip, param2:String)
      {
         super(param1,param2);
      }
      
      override public function _oi4498(param1:Number = 0, param2:Number = 0) : void
      {
         super._oi4498(param1,param2);
         _xo6614["descriptionTxt"]["txt"].width = _mc2836 - 20;
         if(param2 > 0)
         {
            if(_xo6614["sign"])
            {
               _xo6614["sign"].height = param2 * 50 / 100;
               _xo6614["sign"].scaleX = _xo6614["sign"].scaleY;
               _xo6614["sign"].y = _xo6614["title"].y + _xo6614["title"].height + _xo6614["sign"].height / 2 + param2 * 8 / 100;
               _xo6614["sign"].x = _xo6614["back"].width / 2;
            }
            _xo6614["descriptionTxt"].y = _xo6614["back"].height - _xo6614["descriptionTxt"].height - param2 * 3 / 100;
         }
      }
      
      public function set text(param1:String) : void
      {
         _yq8362._bj8346(_xo6614["descriptionTxt"]["txt"] as TextField,param1);
         _xo6614["descriptionTxt"]["txt"].autoSize = TextFieldAutoSize.CENTER;
         var _loc2_:TextFormat = (_xo6614["descriptionTxt"]["txt"] as TextField).getTextFormat();
         _loc2_.align = "center";
         _xo6614["descriptionTxt"]["txt"].setTextFormat(_loc2_);
      }
   }
}

