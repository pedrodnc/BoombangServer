package src.utils.commonComponents
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.utils.*;
   
   public class CommoncomponentsController extends EventDispatcher
   {
      
      protected var _pe16126:MovieClip;
      
      public var _ec6387:Function;
      
      public var _ct5529:Function;
      
      public var _ix10516:Function;
      
      public var _sk9662:Function;
      
      public var _qk12405:Number = 0.4;
      
      public function CommoncomponentsController(param1:MovieClip, param2:Function, param3:Function = null, param4:Function = null, param5:Function = null)
      {
         super();
         this._nc8386(param1);
         this._ec6387 = param2;
         this._ct5529 = param3;
         this._ix10516 = param4;
         this._sk9662 = param5;
         this._pe16126.mouseChildren = false;
         if(param2 != null)
         {
            this._pe16126.buttonMode = true;
         }
         this._pe16126.tabChildren = false;
         this._pe16126.tabEnabled = false;
         this._nc2422();
         this._iv1460();
         this._dy867 = true;
      }
      
      public function set alpha(param1:Number) : void
      {
         this._pe16126.alpha = param1;
      }
      
      public function get width() : Number
      {
         return this._pe16126.width;
      }
      
      public function get height() : Number
      {
         return this._pe16126.height;
      }
      
      public function get x() : Number
      {
         return this._pe16126.x;
      }
      
      public function get y() : Number
      {
         return this._pe16126.y;
      }
      
      protected function _nc8386(param1:MovieClip) : void
      {
         this._pe16126 = param1;
      }
      
      public function destroy() : void
      {
         this._al10937();
         this._ec6387 = null;
         this._ct5529 = null;
         this._ix10516 = null;
         this._sk9662 = null;
         this._pe16126 = null;
      }
      
      protected function _nc2422() : void
      {
         this._pe16126.addEventListener(MouseEvent.ROLL_OUT,this._xx13833,false,0,true);
         this._pe16126.addEventListener(MouseEvent.ROLL_OVER,this._xx13833,false,0,true);
         this._pe16126.addEventListener(MouseEvent.DOUBLE_CLICK,this._xx13833,false,0,true);
         this._pe16126.addEventListener(MouseEvent.MOUSE_DOWN,this._xx13833,false,0,true);
      }
      
      protected function _al10937() : void
      {
         if(this._pe16126.hasEventListener(MouseEvent.ROLL_OUT))
         {
            this._pe16126.removeEventListener(MouseEvent.ROLL_OUT,this._xx13833);
         }
         if(this._pe16126.hasEventListener(MouseEvent.ROLL_OVER))
         {
            this._pe16126.removeEventListener(MouseEvent.ROLL_OVER,this._xx13833);
         }
         if(this._pe16126.hasEventListener(MouseEvent.MOUSE_DOWN))
         {
            this._pe16126.removeEventListener(MouseEvent.MOUSE_DOWN,this._xx13833);
         }
         if(this._pe16126.hasEventListener(MouseEvent.DOUBLE_CLICK))
         {
            this._pe16126.removeEventListener(MouseEvent.DOUBLE_CLICK,this._xx13833);
         }
      }
      
      protected function _xx13833(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case MouseEvent.ROLL_OUT:
               if(this._dy867)
               {
                  this._iv1460();
               }
               this._mf3038(this._ix10516);
               break;
            case MouseEvent.ROLL_OVER:
               if(this._dy867)
               {
                  this._ch1514();
               }
               this._mf3038(this._ct5529);
               break;
            case MouseEvent.MOUSE_DOWN:
               if(this._dy867)
               {
                  this._mf3038(this._ec6387);
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               if(this._dy867)
               {
                  this._mf3038(this._sk9662);
               }
         }
         dispatchEvent(param1.clone());
         param1.stopImmediatePropagation();
      }
      
      public function _hu12389() : void
      {
         if(this._pe16126.visible)
         {
            this._pe16126.visible = false;
         }
      }
      
      public function _db5584() : void
      {
         if(!this._pe16126.visible)
         {
            this._pe16126.visible = true;
         }
      }
      
      public function _ch1514() : void
      {
         StringUtils._nw2053(this._pe16126,CommoncomponentsView._jo8252);
      }
      
      public function _iv1460() : void
      {
         StringUtils._nw2053(this._pe16126,CommoncomponentsView._vk6252);
      }
      
      protected function _mf3038(param1:Function) : void
      {
         if(param1 != null)
         {
            param1();
         }
      }
      
      public function get _dy867() : Boolean
      {
         return this._pe16126.enabled;
      }
      
      public function set _dy867(param1:Boolean) : void
      {
         this._pe16126.alpha = param1 ? 1 : this._qk12405;
         this._pe16126.mouseEnabled = param1;
         this._pe16126.enabled = param1;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this._pe16126.mouseEnabled = param1;
      }
   }
}

