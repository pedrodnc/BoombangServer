package src.tv.boombang.application.tutorial.gui.component
{
   import flash.display.MovieClip;
   import src.utils.*;
   
   public class ComponentView extends MovieClip
   {
      
      public static const TOP_LEFT:String = "TopLeft";
      
      public static const TOP:String = "Top";
      
      public static const TOP_RIGHT:String = "TopRight";
      
      public static const RIGHT:String = "Right";
      
      public static const BOTTOM_RIGHT:String = "BottomRight";
      
      public static const BOTTOM:String = "Bottom";
      
      public static const BOTTOM_LEFT:String = "BottomLeft";
      
      public static const LEFT:String = "Left";
      
      public static const _at16136:String = "NoArrow";
      
      protected var _xo6614:MovieClip;
      
      protected var _gg10835:int;
      
      protected var _bi11559:int;
      
      protected var _hf3990:MovieClip;
      
      protected var _dk14399:int;
      
      protected var _xi14836:int;
      
      protected var _aq4672:String;
      
      public function ComponentView(param1:MovieClip)
      {
         this._xo6614 = param1;
         this._hf3990 = this._xo6614["arrow"];
         addChild(this._xo6614);
         super();
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
      
      public function set title(param1:String) : void
      {
         if(this._xo6614["descriptionTxt"])
         {
            UtilsUtils._xl9503(this._xo6614["descriptionTxt"]["txt"],param1);
         }
      }
      
      public function _rj922(param1:String = null) : void
      {
         if(param1 == null)
         {
            param1 = BOTTOM;
         }
         var _loc2_:Number = Number(this._hf3990.width);
         var _loc3_:Number = Number(this._hf3990.height);
         this._hf3990.visible = true;
         switch(param1)
         {
            case BOTTOM:
               this._hf3990.x = this._xo6614["descriptionTxt"].width / 2;
               this._hf3990.y = this._xo6614["descriptionTxt"].height + 30;
               break;
            case RIGHT:
               this._hf3990.rotation = -90;
               this._hf3990.y = this._xo6614["descriptionTxt"].height / 2;
               this._hf3990.x = this._xo6614["descriptionTxt"].width + 30;
               break;
            case BOTTOM_LEFT:
               this._hf3990.rotation = 45;
               this._hf3990.y = this._xo6614["descriptionTxt"].height + 30;
               this._hf3990.x = -30;
               break;
            case LEFT:
               this._hf3990.rotation = 90;
               this._hf3990.y = this._xo6614["descriptionTxt"].height / 2;
               this._hf3990.x = -30;
               break;
            case BOTTOM_RIGHT:
               this._hf3990.rotation = -45;
               this._hf3990.y = this._xo6614["descriptionTxt"].height + 30;
               this._hf3990.x = this._xo6614["descriptionTxt"].width + 30;
               break;
            case TOP:
               this._hf3990.rotation = 180;
               this._hf3990.x = this._xo6614["descriptionTxt"].width / 2;
               this._hf3990.y = -30;
               break;
            case TOP_LEFT:
               this._hf3990.rotation = 135;
               this._hf3990.y = -30;
               this._hf3990.x = -30;
               break;
            case TOP_RIGHT:
               this._hf3990.rotation = -135;
               this._hf3990.y = -30;
               this._hf3990.x = this._xo6614["descriptionTxt"].width + 30;
               break;
            case _at16136:
               this._hf3990.x = this._xo6614["descriptionTxt"].width / 2;
               this._hf3990.y = this._xo6614["descriptionTxt"].height + 30;
               param1 = ComponentView.BOTTOM;
               this._hf3990.visible = false;
         }
         this._xe10297 = param1;
      }
      
      public function get _xe10297() : String
      {
         return this._aq4672;
      }
      
      public function set _xe10297(param1:String) : void
      {
         this._aq4672 = param1;
         var _loc2_:int = this.width;
         var _loc3_:int = this.height;
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
   }
}

