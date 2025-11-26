package src.tv.boombang.application.global.gui.components
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import src.utils.*;
   
   public class _va5249 extends _qy9375
   {
      
      private static const _wx1655:int = 10;
      
      private var _xt7154:MovieClip;
      
      private var _vr11636:MovieClip;
      
      private var _hk5176:MovieClip;
      
      private var _yw5585:MovieClip;
      
      private var _yf3562:TextField;
      
      private var _selected:Boolean;
      
      public function _va5249(param1:MovieClip, param2:String = "", param3:String = null)
      {
         if(param3 == null)
         {
            param3 = _qy9375.DOWN_STATE;
         }
         super(param1,param3);
         if(_xo6614["back"])
         {
            this._vr11636 = _xo6614["back"];
         }
         else if(param1["singleBack"])
         {
            this._vr11636 = _xo6614["singleBack"];
         }
         if(_xo6614["reflection"])
         {
            this._xt7154 = _xo6614["reflection"];
         }
         if(_xo6614["textContainer"])
         {
            this._hk5176 = _xo6614["textContainer"];
            if(this._hk5176["content"])
            {
               this._yw5585 = this._hk5176["content"];
               this._yf3562 = this._yw5585["txt"];
            }
            else if(this._hk5176["txt"])
            {
               this._yf3562 = this._hk5176["txt"];
            }
         }
         _hs13172 = _xo6614;
         this.text = param2;
      }
      
      public function set text(param1:String) : void
      {
         _yq8362._xl9503(this._yf3562,param1);
         this._im767();
      }
      
      public function set textColor(param1:uint) : void
      {
         _yq8362._np7275(this._yf3562,param1);
      }
      
      public function _im767(param1:Number = 10, param2:Number = 0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this._vr11636)
         {
            if(this._vr11636["content"])
            {
               this._yf3562.width = this._yf3562.textWidth + param1 / 2;
               if(param2 != 0)
               {
                  this._yf3562.height = this._yf3562.textHeight + param2 / 2;
               }
               if(this._vr11636["content"]["fill"])
               {
                  _loc3_ = this._vr11636["content"]["fill"].width - this._vr11636["content"]["reflection"].width;
                  if(param2 != 0)
                  {
                     _loc4_ = this._vr11636["content"]["fill"].height - this._vr11636["content"]["reflection"].height;
                  }
                  this._vr11636["content"]["fill"].width = this._hk5176.width + param1 * 2;
                  if(param2 != 0)
                  {
                     this._vr11636["content"]["fill"].height = this._hk5176.height + param2 * 2;
                  }
               }
               if(this._vr11636["content"]["reflection"])
               {
                  this._vr11636["content"]["reflection"].width = this._vr11636["content"]["fill"].width - _loc3_;
                  this._vr11636["content"]["reflection"].x = _loc3_ / 2;
                  if(param2 != 0)
                  {
                     this._vr11636["content"]["reflection"].height = this._vr11636["content"]["fill"].height / 2 - 3;
                     this._vr11636["content"]["reflection"].y = 3;
                  }
               }
               this._hk5176.x = Math.round((this._vr11636.width - this._hk5176.width) / 2);
               if(param2 != 0)
               {
                  this._hk5176.y = Math.round((this._vr11636.height - this._hk5176.height) / 2);
               }
            }
         }
      }
      
      override public function get selected() : Boolean
      {
         return this._selected;
      }
      
      override public function set selected(param1:Boolean) : void
      {
         this._selected = param1;
         _xo6614.buttonMode = !this._selected;
         if(this._selected)
         {
            _xo6614.gotoAndStop(_qd3237);
         }
         else
         {
            _xo6614.gotoAndStop(_ep8467);
         }
      }
   }
}

