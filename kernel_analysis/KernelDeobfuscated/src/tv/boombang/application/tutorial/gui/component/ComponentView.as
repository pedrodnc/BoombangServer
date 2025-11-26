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
      
      public static const textString:String = "NoArrow";
      
      protected var _xo6614:MovieClip;
      
      protected var count:int;
      
      protected var count1:int;
      
      protected var _hf3990:MovieClip;
      
      protected var count2:int;
      
      protected var count3:int;
      
      protected var textString1:String;
      
      public function ComponentView(param1:MovieClip)
      {
         this._xo6614 = param1;
         this._hf3990 = this._xo6614["arrow"];
         addChild(this._xo6614);
         super();
      }
      
      override public function set x(param1:Number) : void
      {
         this.count = param1;
         super.x = this.count - this.count2;
      }
      
      override public function set y(param1:Number) : void
      {
         this.count1 = param1;
         super.y = this.count1 - this.count3;
      }
      
      public function set _nm10347(param1:int) : void
      {
         this.count2 = param1;
         this.x = this.count;
      }
      
      public function get _nm10347() : int
      {
         return this.count2;
      }
      
      public function set _wj8542(param1:int) : void
      {
         this.count3 = param1;
         this.y = this.count1;
      }
      
      public function get _wj8542() : int
      {
         return this.count3;
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
         var count:Number = Number(this._hf3990.width);
         var count3:Number = Number(this._hf3990.height);
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
            case textString:
               this._hf3990.x = this._xo6614["descriptionTxt"].width / 2;
               this._hf3990.y = this._xo6614["descriptionTxt"].height + 30;
               param1 = ComponentView.BOTTOM;
               this._hf3990.visible = false;
         }
         this._xe10297 = param1;
      }
      
      public function get _xe10297() : String
      {
         return this.textString1;
      }
      
      public function set _xe10297(param1:String) : void
      {
         this.textString1 = param1;
         var count:int = this.width;
         var count3:int = this.height;
         switch(param1)
         {
            case BOTTOM:
               this._nm10347 = count * 0.5;
               this._wj8542 = count3;
               return;
            case BOTTOM_LEFT:
               this._nm10347 = 0;
               this._wj8542 = count3;
               return;
            case BOTTOM_RIGHT:
               this._nm10347 = count;
               this._wj8542 = count3;
               return;
            case LEFT:
               this._nm10347 = 0;
               this._wj8542 = count3 * 0.5;
               return;
            case RIGHT:
               this._nm10347 = count;
               this._wj8542 = count3 * 0.5;
               return;
            case TOP:
               this._nm10347 = count * 0.5;
               this._wj8542 = 0;
               return;
            case TOP_LEFT:
               this._nm10347 = 0;
               this._wj8542 = 0;
               return;
            case TOP_RIGHT:
               this._nm10347 = count;
               this._wj8542 = 0;
         }
      }
   }
}

