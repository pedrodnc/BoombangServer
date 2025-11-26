package src.tv.boombang.application.global.gui.components
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import src.utils.*;
   
   public class ToolTip extends MovieClip
   {
      
      public static const textString:String = "leftAdjust";
      
      public static const textString1:String = "centerAdjust";
      
      protected static const count:int = 10;
      
      protected var _asset:MovieClip;
      
      protected var _hk5176:MovieClip;
      
      protected var _yf3562:TextField;
      
      protected var _js10054:Sprite;
      
      protected var _vr11636:Sprite;
      
      protected var textString2:String;
      
      public function ToolTip(param1:MovieClip, param2:String = null)
      {
         super();
         if(param2 == null)
         {
            param2 = textString;
         }
         this._asset = param1;
         this.textString2 = param2;
         this._hk5176 = this._asset["textContainer"];
         this._yf3562 = this._hk5176["txt"];
         this._vr11636 = param1["back"];
         this._js10054 = param1["triangle"];
      }
      
      public function set txt(param1:String) : void
      {
         UtilsUtils._bj8346(this._yf3562,param1);
         this.reset();
         this._im767();
      }
      
      public function set color(param1:uint) : void
      {
         StringUtils._ts14032(this._vr11636,param1);
         StringUtils._ts14032(this._js10054,param1);
      }
      
      private function reset() : void
      {
         this._yf3562.width = this._yf3562.width;
         this._vr11636.width = this._hk5176.width;
      }
      
      public function _im767() : void
      {
         if(this.textString2 == textString)
         {
            this._yf3562.height = this._yf3562.textHeight + count;
            this._vr11636.height = this._hk5176.height + count;
            this._yf3562.width = this._yf3562.textWidth + count;
            this._vr11636.width = this._hk5176.width + count;
            this._hk5176.x = Math.round(this._vr11636.x - this._vr11636.width + count / 4);
            this._hk5176.y = -Math.round(this._yf3562.height / 2) + count / 2 - 2;
         }
         else if(this.textString2 == textString1)
         {
            this._yf3562.width = this._yf3562.textWidth + count;
            this._vr11636.width = this._hk5176.width;
            this._hk5176.x = Math.round(this._vr11636.x - this._vr11636.width);
            this._hk5176.x = -this._hk5176.width / 2;
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
   }
}

