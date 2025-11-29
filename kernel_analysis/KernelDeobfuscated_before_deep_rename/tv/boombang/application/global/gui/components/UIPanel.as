package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import flash.text.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.utils.*;
   
   public class UIPanel extends MovieClip implements Interfaces
   {
      
      private var _content:Sprite;
      
      private var _rx8341:int = 5;
      
      private var _yc726:uint = 2236962;
      
      private var _dx1094:uint = 15856113;
      
      private var _fy3765:String;
      
      private var _aa2646:int = 90;
      
      private var _aq4672:UITextField;
      
      private var _cf7606:int = 12;
      
      private var _ae485:int = 9;
      
      public function UIPanel()
      {
         this._fy3765 = "no text";
         this._aq4672 = UITextField.BOTTOM;
         super();
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      public function destroy() : void
      {
      }
      
      public function clone() : UIPanel
      {
         var _loc1_:UIPanel = new UIPanel();
         _loc1_.padding = this._rx8341;
         _loc1_.textColor = this._yc726;
         _loc1_.backgroundColor = this._dx1094;
         _loc1_.text = this._fy3765;
         _loc1_._ui11624 = this._aa2646;
         _loc1_._xe10297 = this._aq4672;
         _loc1_.fontSize = this._cf7606;
         _loc1_.cornerRadius = this._ae485;
         _loc1_.x = x;
         _loc1_.y = y;
         _loc1_.alpha = alpha;
         _loc1_.rotation = rotation;
         _loc1_.visible = visible;
         _loc1_._sl14850();
         return _loc1_;
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
         return this._ae485;
      }
      
      public function set cornerRadius(param1:int) : void
      {
         this._ae485 = param1;
      }
      
      public function get fontSize() : int
      {
         return this._cf7606;
      }
      
      public function set fontSize(param1:int) : void
      {
         this._cf7606 = param1;
      }
      
      public function get _xe10297() : UITextField
      {
         return this._aq4672;
      }
      
      public function set _xe10297(param1:UITextField) : void
      {
         this._aq4672 = param1;
      }
      
      public function get _ui11624() : int
      {
         return this._aa2646;
      }
      
      public function set _ui11624(param1:int) : void
      {
         this._aa2646 = param1;
      }
      
      public function get text() : String
      {
         return this._fy3765;
      }
      
      public function set text(param1:String) : void
      {
         this._fy3765 = param1;
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
         return this._rx8341;
      }
      
      public function set padding(param1:int) : void
      {
         this._rx8341 = param1;
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
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.font = "VAGRoundedBlack";
         _loc1_.size = this._cf7606;
         _loc1_.align = TextFormatAlign.CENTER;
         _loc1_.color = this._yc726;
         var _loc2_:TextField = new TextField();
         _loc2_.text = this._fy3765;
         _loc2_.setTextFormat(_loc1_);
         UtilsUtils._xl9503(_loc2_,this._fy3765);
         _loc2_.selectable = false;
         _loc2_.autoSize = TextFieldAutoSize.LEFT;
         _loc2_.width = this._aa2646;
         _loc2_.wordWrap = true;
         _loc2_.x = _loc2_.y = Math.round(this._rx8341);
         var _loc3_:Sprite = StringUtils.createBox(_loc2_.width + 2 * this._rx8341,_loc2_.height + 2 * this._rx8341,this._dx1094,this._ae485);
         StringUtils._ay2315(_loc3_,this._aq4672,15,10,this._dx1094);
         this._content.addChild(_loc3_);
         this._content.addChild(_loc2_);
         switch(this._aq4672)
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
         switch(this._aq4672)
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

