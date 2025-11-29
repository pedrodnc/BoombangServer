package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import src.utils.*;
   
   public class _qy9375 extends _cm4000
   {
      
      public static const _ep8467:String = "_up";
      
      public static const DOWN_STATE:String = "_down";
      
      public static const OVER_STATE:String = "_over";
      
      public static const _wu6647:String = "_disable";
      
      public static var _qd3237:String = "_selected";
      
      public static const _am11413:Number = 0.2;
      
      private static const _xv13803:Array = [DOWN_STATE,OVER_STATE,_ep8467];
      
      protected var _id:Number;
      
      protected var _data:Object;
      
      protected var _ug8797:ColorTransform;
      
      protected var _lf14786:ColorTransform;
      
      protected var _sd13687:MovieClip;
      
      public function _qy9375(param1:MovieClip, param2:String = null)
      {
         super(param1);
         if(param2 == null)
         {
            param2 = DOWN_STATE;
         }
         _qd3237 = param2;
         this._hl16009();
         this.brightness = _am11413;
         this.initialize();
      }
      
      public function set brightness(param1:Number) : void
      {
         if(_xo6614["back"])
         {
            if(_xo6614["back"]["content"])
            {
               if(_xo6614["back"]["content"]["fill"])
               {
                  this._sd13687 = _xo6614["back"]["content"]["fill"] as MovieClip;
                  this._ug8797 = this._sd13687.transform.colorTransform;
                  this._lf14786 = this._sd13687.transform.colorTransform;
                  this._lf14786.redMultiplier += param1;
                  this._lf14786.greenMultiplier += param1;
                  this._lf14786.blueMultiplier += param1;
               }
            }
         }
         if(_xo6614["singleBack"])
         {
            this._sd13687 = _xo6614["singleBack"] as MovieClip;
            this._ug8797 = this._sd13687.transform.colorTransform;
            this._lf14786 = this._sd13687.transform.colorTransform;
            this._lf14786.redMultiplier += param1;
            this._lf14786.greenMultiplier += param1;
            this._lf14786.blueMultiplier += param1;
         }
      }
      
      private function _hl16009() : void
      {
         var _loc1_:int = 0;
         var _loc2_:FrameLabel = null;
         var _loc3_:Array = _xo6614.currentLabels;
         var _loc4_:Array = _xv13803.concat();
         for each(_loc2_ in _loc3_)
         {
            _loc1_ = int(_loc4_.indexOf(_loc2_.name));
            if(_loc1_ > -1)
            {
               _loc4_.splice(_loc1_,1);
            }
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         this._data = param1;
      }
      
      override public function get enabled() : Boolean
      {
         return _xo6614.enabled && _xo6614.mouseEnabled && _xo6614.mouseChildren;
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         _xo6614.mouseEnabled = param1;
         _xo6614.enabled = param1;
         _xo6614.useHandCursor = param1;
         if(!param1)
         {
            _xo6614.alpha = 0.5;
            _xv14798._nw2053(_xo6614,_ep8467);
         }
         else
         {
            _xo6614.alpha = 1;
            _xv14798._nw2053(_xo6614,_wu6647);
         }
      }
      
      public function get selected() : Boolean
      {
         return !_xo6614.enabled && _xo6614.currentLabel == _qd3237;
      }
      
      public function set selected(param1:Boolean) : void
      {
         _xo6614.enabled = !param1;
         _xo6614.mouseEnabled = !param1;
         if(param1)
         {
            _xv14798._nw2053(_xo6614,_qd3237);
         }
         else
         {
            _xv14798._nw2053(_xo6614,_ep8467);
         }
      }
      
      protected function initialize() : void
      {
         mouseEnabled = false;
         _xv14798._nw2053(_xo6614,_ep8467);
         _xo6614.mouseChildren = false;
         _xo6614.buttonMode = true;
         _xo6614.useHandCursor = true;
         this.addListeners();
         visible = true;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.removeListeners();
         _xo6614 = null;
         this._data = null;
      }
      
      public function addListeners() : void
      {
         _xo6614.addEventListener(MouseEvent.CLICK,this._ai4478,false,0,true);
         _xo6614.addEventListener(MouseEvent.DOUBLE_CLICK,this._ai4478,false,0,true);
         _xo6614.addEventListener(MouseEvent.MOUSE_DOWN,this._ai4478,false,0,true);
         _xo6614.addEventListener(MouseEvent.MOUSE_MOVE,this._ai4478,false,0,true);
         _xo6614.addEventListener(MouseEvent.MOUSE_OUT,this._qu5290,false,0,true);
         _xo6614.addEventListener(MouseEvent.MOUSE_OVER,this._rt5195,false,0,true);
         _xo6614.addEventListener(MouseEvent.MOUSE_UP,this._ai4478,false,0,true);
         _xo6614.addEventListener(MouseEvent.MOUSE_WHEEL,this._ai4478,false,0,true);
         _xo6614.addEventListener(MouseEvent.ROLL_OUT,this._qu5290,false,0,true);
         _xo6614.addEventListener(MouseEvent.ROLL_OVER,this._rt5195,false,0,true);
      }
      
      public function removeListeners() : void
      {
         _xo6614.removeEventListener(MouseEvent.CLICK,this._ai4478);
         _xo6614.removeEventListener(MouseEvent.DOUBLE_CLICK,this._ai4478);
         _xo6614.removeEventListener(MouseEvent.MOUSE_DOWN,this._ai4478);
         _xo6614.removeEventListener(MouseEvent.MOUSE_MOVE,this._ai4478);
         _xo6614.removeEventListener(MouseEvent.MOUSE_OUT,this._qu5290);
         _xo6614.removeEventListener(MouseEvent.MOUSE_OVER,this._rt5195);
         _xo6614.removeEventListener(MouseEvent.MOUSE_UP,this._ai4478);
         _xo6614.removeEventListener(MouseEvent.MOUSE_WHEEL,this._ai4478);
         _xo6614.removeEventListener(MouseEvent.ROLL_OUT,this._qu5290);
         _xo6614.removeEventListener(MouseEvent.ROLL_OVER,this._rt5195);
      }
      
      protected function _ai4478(param1:MouseEvent) : void
      {
         param1.stopPropagation();
         if(!this.selected || param1.type == MouseEvent.MOUSE_DOWN)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      override public function set useHandCursor(param1:Boolean) : void
      {
         super.useHandCursor = param1;
         if(this._xo6614)
         {
            _xo6614.useHandCursor = param1;
         }
      }
      
      public function set _vr14785(param1:uint) : void
      {
         if(this._sd13687)
         {
            _xv14798._ts14032(this._sd13687,param1);
         }
         this.brightness = _am11413;
      }
      
      protected function _rt5195(param1:MouseEvent) : void
      {
         this._ai4478(param1);
         if(!this.selected)
         {
            if(_xo6614.currentLabels.indexOf(OVER_STATE) != -1)
            {
               _xo6614.gotoAndStop(OVER_STATE);
            }
            if(this._sd13687)
            {
               this._sd13687.transform.colorTransform = this._lf14786;
            }
         }
      }
      
      protected function _qu5290(param1:MouseEvent) : void
      {
         this._ai4478(param1);
         if(!this.selected)
         {
            if(_xo6614.currentLabels.indexOf(_ep8467) != -1)
            {
               _xo6614.gotoAndStop(_ep8467);
            }
            if(this._sd13687)
            {
               this._sd13687.transform.colorTransform = this._ug8797;
            }
         }
      }
   }
}

