package src.tv.boombang.application.global.gui.windows
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.library.steps.*;
   import src.utils.*;
   
   public class _ja3764 extends _pd14567
   {
      
      public static const TOP_LEFT:String = "TopLeft";
      
      public static const TOP:String = "Top";
      
      public static const TOP_RIGHT:String = "TopRight";
      
      public static const RIGHT:String = "Right";
      
      public static const BOTTOM_RIGHT:String = "BottomRight";
      
      public static const BOTTOM:String = "Bottom";
      
      public static const BOTTOM_LEFT:String = "BottomLeft";
      
      public static const LEFT:String = "Left";
      
      public static const _pk4244:String = "anchorCustom";
      
      protected var _xo6614:MovieClip;
      
      protected var _vr11636:MovieClip;
      
      protected var _mc2836:Number;
      
      protected var _uu15722:Number;
      
      protected var _dk14399:int;
      
      protected var _xi14836:int;
      
      protected var _gg10835:int;
      
      protected var _bi11559:int;
      
      protected var _aq4672:String;
      
      protected var toolTip:Sprite;
      
      private var _ig5144:_qy9375;
      
      protected var _qi5262:Array;
      
      public function _ja3764(param1:MovieClip, param2:String)
      {
         this._qi5262 = new Array();
         super(param2);
         this._xo6614 = param1;
         this._vr11636 = this._xo6614["back"];
         addChild(this._xo6614);
         this._xe10297 = _pk4244;
         if(this._xo6614["closeBtn"])
         {
            this._ig5144 = new _qy9375(this._xo6614["closeBtn"]);
            this._ig5144.addEventListener(MouseEvent.CLICK,this._qn6887,false,0,true);
         }
         this.addEventListener(Event.ADDED_TO_STAGE,this._lb15297,false,0,true);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._ig5144)
         {
            this._ig5144.removeEventListener(MouseEvent.CLICK,this._qn6887);
            this._ig5144 = null;
         }
         this.removeEventListener(Event.ADDED_TO_STAGE,this._lb15297);
      }
      
      protected function _lb15297(param1:Event) : void
      {
         this.initialize();
      }
      
      private function initialize() : void
      {
         var _loc1_:InteractiveObject = null;
         var _loc2_:Boolean = false;
         this._qi5262.sortOn(["y","x"],[Array.NUMERIC,Array.NUMERIC]);
         var _loc3_:int = 1;
         for each(_loc1_ in this._qi5262)
         {
            _loc1_.tabIndex = _loc3_++;
            if(_loc1_ is _gn3649 && !_loc2_ && Boolean(stage))
            {
               stage.focus = (_loc1_ as _gn3649).textField;
               _loc2_ = true;
            }
         }
      }
      
      public function get _ou4931() : Boolean
      {
         var _loc1_:_cm4000 = null;
         for each(_loc1_ in this._qi5262)
         {
            if(_loc1_._ou4931)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get _xe10297() : String
      {
         return this._aq4672;
      }
      
      public function set _xe10297(param1:String) : void
      {
         this._aq4672 = param1;
         var _loc2_:int = this.width + this.getBounds(parent).left;
         var _loc3_:int = this.height + this.getBounds(parent).top;
         switch(param1)
         {
            case BOTTOM:
               this._nm10347 = _loc2_ * 0.5;
               this._wj8542 = _loc3_;
               return;
            case BOTTOM_LEFT:
               this._nm10347 = 0;
               this._wj8542 = _loc3_;
               return;
            case BOTTOM_RIGHT:
               this._nm10347 = _loc2_;
               this._wj8542 = _loc3_;
               return;
            case LEFT:
               this._nm10347 = 0;
               this._wj8542 = _loc3_ * 0.5;
               return;
            case RIGHT:
               this._nm10347 = _loc2_;
               this._wj8542 = _loc3_ * 0.5;
               return;
            case TOP:
               this._nm10347 = _loc2_ * 0.5;
               this._wj8542 = 0;
               return;
            case TOP_LEFT:
               this._nm10347 = 0;
               this._wj8542 = 0;
               return;
            case TOP_RIGHT:
               this._nm10347 = _loc2_;
               this._wj8542 = 0;
         }
      }
      
      public function set _nm10347(param1:int) : void
      {
         this._dk14399 = param1;
         this.x = this._gg10835;
      }
      
      public function get _nm10347() : int
      {
         return this._dk14399;
      }
      
      public function set _wj8542(param1:int) : void
      {
         this._xi14836 = param1;
         this.y = this._bi11559;
      }
      
      public function get _wj8542() : int
      {
         return this._xi14836;
      }
      
      override public function set x(param1:Number) : void
      {
         this._gg10835 = param1;
         super.x = this._gg10835 - this._dk14399;
      }
      
      override public function set y(param1:Number) : void
      {
         this._bi11559 = param1;
         super.y = this._bi11559 - this._xi14836;
      }
      
      public function _ay2315(param1:String = null, param2:Number = 24, param3:Number = 37, param4:Number = 17774, param5:Number = 0, param6:Number = 0, param7:Number = 0) : void
      {
         if(param1 == null)
         {
            param1 = BOTTOM;
         }
         this.toolTip = new Sprite();
         this.toolTip.graphics.beginFill(param4);
         this.toolTip.graphics.moveTo(0,0);
         this.toolTip.graphics.lineTo(param2,0);
         this.toolTip.graphics.lineTo(param2 / 2 + param5,param3);
         this.toolTip.graphics.lineTo(0,0);
         this._xo6614.addChildAt(this.toolTip,0);
         switch(param1)
         {
            case BOTTOM:
               this.toolTip.x = this._xo6614["back"].width / 2 - param2 / 2 + param6;
               this.toolTip.y = this._xo6614["back"].height + param7;
               break;
            case RIGHT:
               this.toolTip.rotation = -90;
               this.toolTip.y = this._xo6614["back"].height / 2 + param2 / 2 + param7;
               this.toolTip.x = this._xo6614["back"].width + param6;
               break;
            case BOTTOM_LEFT:
               this.toolTip.rotation = 45;
               this.toolTip.y = this._xo6614["back"].height - this.toolTip.height / 2 + param7;
               this.toolTip.x = param6;
               break;
            case LEFT:
               this.toolTip.rotation = 90;
               this.toolTip.y = this._xo6614["back"].height / 2 - param2 / 2 + param7;
               this.toolTip.x = param6;
               break;
            case BOTTOM_RIGHT:
               this.toolTip.rotation = -45;
               this.toolTip.y = this._xo6614["back"].height + param7;
               this.toolTip.x = this._xo6614["back"].width - this.toolTip.width / 2 + param6;
               break;
            case TOP:
               this.toolTip.rotation = 180;
               this.toolTip.x = this._xo6614["back"].width / 2 + param2 / 2 + param6;
               this.toolTip.y = param7;
               break;
            case TOP_LEFT:
               this.toolTip.rotation = 135;
               this.toolTip.y = param7;
               this.toolTip.x = this.toolTip.width / 2 + param6;
               break;
            case TOP_RIGHT:
               this.toolTip.rotation = -135;
               this.toolTip.y = this.toolTip.height / 2 + param7;
               this.toolTip.x = this._xo6614["back"].width + param6;
         }
         this._xe10297 = this._xe10297;
      }
      
      public function set backgroundColor(param1:uint) : void
      {
         _xv14798._ts14032(this._vr11636,param1);
      }
      
      public function set _xl9813(param1:uint) : void
      {
         _xv14798._ts14032(this._xo6614["title"]["back"],param1);
      }
      
      public function set _ty11227(param1:uint) : void
      {
         this._xo6614["title"]["txt"]["textColor"] = param1;
      }
      
      public function _oi4498(param1:Number = 0, param2:Number = 0) : void
      {
         if(param1 > 0)
         {
            this._xo6614["back"].width = this._mc2836 = param1;
         }
         else
         {
            this._mc2836 = this._xo6614["back"].width;
         }
         if(this._xo6614["title"])
         {
            this._xo6614["title"]["back"].width = this._xo6614["title"]["txt"].width = this._mc2836 - this._xo6614["title"].x * 2;
         }
         this._ig5144.x = this._xo6614["back"].x + this._xo6614["back"].width - this._ig5144.width / 2 - 10;
         if(param2 > 0)
         {
            this._xo6614["back"].height = this._uu15722 = param2;
         }
         this._xe10297 = this._xe10297;
      }
      
      public function set title(param1:String) : void
      {
         if(this._xo6614["title"])
         {
            _yq8362._xl9503(this._xo6614["title"]["txt"],param1);
         }
      }
      
      protected function _qn6887(param1:MouseEvent) : void
      {
         _nk11935(_pm4313._by10560);
      }
   }
}

