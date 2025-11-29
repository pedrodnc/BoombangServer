package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import src.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.commons.utils.*;
   
   public class UIButton extends MovieClip implements Interfaces
   {
      
      private var _rh6976:Point;
      
      private var _df9200:Point;
      
      private var textString1:UITextField;
      
      private var _content:MovieClip;
      
      public function UIButton()
      {
         this._rh6976 = new Point();
         this._df9200 = new Point();
         this.textString1 = UITextField.TOP_LEFT;
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.start,false,0,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this._yx3333,false,0,true);
         _xw1367.getInstance().addEventListener(Event.RESIZE,this._qw620);
         this._content = new MovieClip();
         super.addChild(this._content);
      }
      
      public function destroy() : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.start);
         removeEventListener(Event.REMOVED_FROM_STAGE,this._yx3333);
         DisplayUtils._ps6769().removeEventListener(Event.RESIZE,this._qw620);
      }
      
      public function get _xe10297() : UITextField
      {
         return this.textString1;
      }
      
      public function set _xe10297(param1:UITextField) : void
      {
         this.textString1 = param1;
         this._vb7585();
      }
      
      public function get _wg2951() : Point
      {
         return this._df9200;
      }
      
      public function set _wg2951(param1:Point) : void
      {
         this._df9200 = param1;
         this._vb7585();
      }
      
      public function get _np5723() : Point
      {
         return this._rh6976;
      }
      
      public function set _np5723(param1:Point) : void
      {
         this._rh6976 = param1;
         this._vb7585();
      }
      
      override public function set x(param1:Number) : void
      {
         this._rh6976 = new Point(0,0);
         this._df9200.x = param1;
         this._vb7585();
      }
      
      override public function set y(param1:Number) : void
      {
         this._rh6976 = new Point(0,0);
         this._df9200.y = param1;
         this._vb7585();
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         return this._content.addChild(param1);
      }
      
      override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         return this._content.addChildAt(param1,param2);
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         return this._content.removeChild(param1);
      }
      
      override public function removeChildAt(param1:int) : DisplayObject
      {
         return this._content.removeChildAt(param1);
      }
      
      override public function swapChildren(param1:DisplayObject, param2:DisplayObject) : void
      {
         this._content.swapChildren(param1,param2);
      }
      
      override public function swapChildrenAt(param1:int, param2:int) : void
      {
         this._content.swapChildrenAt(param1,param2);
      }
      
      override public function contains(param1:DisplayObject) : Boolean
      {
         return this._content.contains(param1);
      }
      
      public function _vb7585() : void
      {
         if(stage)
         {
            super.x = stage.stageWidth * this._rh6976.x + this._df9200.x;
            super.y = stage.stageHeight * this._rh6976.y + this._df9200.y;
            super.x = 1012 * this._rh6976.x + this._df9200.x;
            super.y = 657 * this._rh6976.y + this._df9200.y;
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
                  this._content.y = 0;
                  return;
               case UITextField.LEFT:
               case UITextField.CENTER:
               case UITextField.RIGHT:
                  this._content.y = -0.5 * this._content.height;
                  return;
               case UITextField.BOTTOM_RIGHT:
               case UITextField.BOTTOM:
               case UITextField.BOTTOM_LEFT:
                  this._content.y = -this._content.height;
                  return;
            }
         }
      }
      
      protected function start(param1:Event) : void
      {
         this._vb7585();
      }
      
      protected function _yx3333(param1:Event) : void
      {
      }
      
      protected function _qw620(param1:Event) : void
      {
         this._vb7585();
      }
   }
}

