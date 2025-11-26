package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import flash.text.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.utils.*;
   
   public class UIPanel extends MovieClip implements Interfaces
   {
      
      private var _content:Sprite;
      
      private var count:int = 5;
      
      private var _yc726:uint = 2236962;
      
      private var _dx1094:uint = 15856113;
      
      private var textString2:String;
      
      private var count1:int = 90;
      
      private var textString1:UITextField;
      
      private var count2:int = 12;
      
      private var count3:int = 9;
      
      public function UIPanel()
      {
         this.textString2 = "no text";
         this.textString1 = UITextField.BOTTOM;
         super();
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      public function destroy() : void
      {
      }
      
      public function clone() : UIPanel
      {
         var count2:UIPanel = new UIPanel();
         count2.padding = this.count;
         count2.textColor = this._yc726;
         count2.backgroundColor = this._dx1094;
         count2.text = this.textString2;
         count2._ui11624 = this.count1;
         count2._xe10297 = this.textString1;
         count2.fontSize = this.count2;
         count2.cornerRadius = this.count3;
         count2.x = x;
         count2.y = y;
         count2.alpha = alpha;
         count2.rotation = rotation;
         count2.visible = visible;
         count2._sl14850();
         return count2;
      }
      
      public function get textColor() : uint
      {
         return this._yc726;
      }
      
      public function set textColor(param1:uint) : void
      {
         this._yc726 = param1;
      }
      
      public function get cornerRadius() : int
      {
         return this.count3;
      }
      
      public function set cornerRadius(param1:int) : void
      {
         this.count3 = param1;
      }
      
      public function get fontSize() : int
      {
         return this.count2;
      }
      
      public function set fontSize(param1:int) : void
      {
         this.count2 = param1;
      }
      
      public function get _xe10297() : UITextField
      {
         return this.textString1;
      }
      
      public function set _xe10297(param1:UITextField) : void
      {
         this.textString1 = param1;
      }
      
      public function get _ui11624() : int
      {
         return this.count1;
      }
      
      public function set _ui11624(param1:int) : void
      {
         this.count1 = param1;
      }
      
      public function get text() : String
      {
         return this.textString2;
      }
      
      public function set text(param1:String) : void
      {
         this.textString2 = param1;
      }
      
      public function get backgroundColor() : uint
      {
         return this._dx1094;
      }
      
      public function set backgroundColor(param1:uint) : void
      {
         this._dx1094 = param1;
      }
      
      public function get padding() : int
      {
         return this.count;
      }
      
      public function set padding(param1:int) : void
      {
         this.count = param1;
      }
      
      public function _sl14850() : void
      {
         if(this._content == null)
         {
            this._content = new MovieClip();
         }
         while(this._content.numChildren > 0)
         {
            this._content.removeChildAt(0);
         }
         var count2:TextFormat = new TextFormat();
         count2.font = "VAGRoundedBlack";
         count2.size = this.count2;
         count2.align = TextFormatAlign.CENTER;
         count2.color = this._yc726;
         var count:TextField = new TextField();
         count.text = this.textString2;
         count.setTextFormat(count2);
         UtilsUtils._xl9503(count,this.textString2);
         count.selectable = false;
         count.autoSize = TextFieldAutoSize.LEFT;
         count.width = this.count1;
         count.wordWrap = true;
         count.x = count.y = Math.round(this.count);
         var count3:Sprite = StringUtils.createBox(count.width + 2 * this.count,count.height + 2 * this.count,this._dx1094,this.count3);
         StringUtils._ay2315(count3,this.textString1,15,10,this._dx1094);
         this._content.addChild(count3);
         this._content.addChild(count);
         switch(this.textString1)
         {
            case UITextField.BOTTOM:
            case UITextField.TOP:
            case UITextField.CENTER:
               this._content.x = -0.5 * this._content.width;
               break;
            case UITextField.BOTTOM_LEFT:
            case UITextField.LEFT:
            case UITextField.TOP_LEFT:
               this._content.x = 0;
               break;
            case UITextField.BOTTOM_RIGHT:
            case UITextField.RIGHT:
            case UITextField.TOP_RIGHT:
               this._content.x = this._content.width;
         }
         switch(this.textString1)
         {
            case UITextField.TOP:
            case UITextField.TOP_LEFT:
            case UITextField.TOP_RIGHT:
               this._content.y = 10;
               break;
            case UITextField.LEFT:
            case UITextField.CENTER:
            case UITextField.RIGHT:
               this._content.y = -0.5 * this._content.height;
               break;
            case UITextField.BOTTOM_RIGHT:
            case UITextField.BOTTOM:
            case UITextField.BOTTOM_LEFT:
               this._content.y = -this._content.height;
         }
         addChild(this._content);
      }
   }
}

