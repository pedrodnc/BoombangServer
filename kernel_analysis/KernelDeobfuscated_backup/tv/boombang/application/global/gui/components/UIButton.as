package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import src.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.commons.utils.*;
   
   public class _rn8936 extends MovieClip implements _jk15536
   {
      
      private var _rh6976:Point;
      
      private var _df9200:Point;
      
      private var _aq4672:_wk9007;
      
      private var _content:MovieClip;
      
      public function _rn8936()
      {
         this._rh6976 = new Point();
         this._df9200 = new Point();
         this._aq4672 = _wk9007.TOP_LEFT;
         super();
         addEventListener(Event.ADDED_TO_STAGE,this._lb15297,false,0,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this._yx3333,false,0,true);
         _xw1367.getInstance().addEventListener(Event.RESIZE,this._qw620);
         this._content = new MovieClip();
         super.addChild(this._content);
      }
      
      public function destroy() : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this._lb15297);
         removeEventListener(Event.REMOVED_FROM_STAGE,this._yx3333);
         _tq2768._ps6769().removeEventListener(Event.RESIZE,this._qw620);
      }
      
      public function get _xe10297() : _wk9007
      {
         return this._aq4672;
      }
      
      public function set _xe10297(param1:_wk9007) : void
      {
         this._aq4672 = param1;
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
            switch(this._aq4672)
            {
               case _wk9007.BOTTOM:
               case _wk9007.TOP:
               case _wk9007.CENTER:
                  this._content.x = -0.5 * this._content.width;
                  break;
               case _wk9007.BOTTOM_LEFT:
               case _wk9007.LEFT:
               case _wk9007.TOP_LEFT:
                  this._content.x = 0;
                  break;
               case _wk9007.BOTTOM_RIGHT:
               case _wk9007.RIGHT:
               case _wk9007.TOP_RIGHT:
                  this._content.x = this._content.width;
            }
            switch(this._aq4672)
            {
               case _wk9007.TOP:
               case _wk9007.TOP_LEFT:
               case _wk9007.TOP_RIGHT:
                  this._content.y = 0;
                  return;
               case _wk9007.LEFT:
               case _wk9007.CENTER:
               case _wk9007.RIGHT:
                  this._content.y = -0.5 * this._content.height;
                  return;
               case _wk9007.BOTTOM_RIGHT:
               case _wk9007.BOTTOM:
               case _wk9007.BOTTOM_LEFT:
                  this._content.y = -this._content.height;
                  return;
            }
         }
      }
      
      protected function _lb15297(param1:Event) : void
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

