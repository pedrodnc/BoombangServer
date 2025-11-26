package src.tv.boombang.application.user.gui.windows.changeNickName
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.utils.*;
   
   public class ChangenicknameView extends MovieClip
   {
      
      private static const _vr4231:int = 10;
      
      private static const _ph9226:int = 6;
      
      private var _ul12329:MovieClip;
      
      private var _xo6614:MovieClip;
      
      private var _le15729:TextFormat;
      
      private var _te12467:Array;
      
      public function ChangenicknameView(param1:MovieClip)
      {
         this._te12467 = [];
         super();
         this._xo6614 = param1;
         this._le15729 = new TextFormat();
         this._le15729.font = "VAGRoundedBlack";
         this._le15729.size = 11;
         this._le15729.color = 17774;
      }
      
      public function create(param1:String = "", param2:Array = null, param3:int = 6, param4:Boolean = true) : void
      {
         var _loc5_:MovieClip = null;
         var _loc6_:MovieClip = null;
         var _loc7_:TextField = null;
         _loc5_ = new MovieClip();
         var _loc8_:TextField = this._qx2504(param1);
         _loc5_.addChild(_loc8_);
         if(param2 != null && param2.length > 0)
         {
            if(param4)
            {
               _loc7_ = this._qx2504("windows.nickName.nameTry");
               _loc5_.addChild(_loc7_);
               _loc7_.y = _loc7_.height + 2;
            }
            _loc6_ = this._qc618(param2,param3);
            if(param4)
            {
               _loc6_.y = _loc7_.y + _loc7_.height;
            }
            else
            {
               _loc6_.y = 0;
            }
            _loc5_.addChild(_loc6_);
         }
         this._ul12329 = new MovieClip();
         var _loc9_:MovieClip = StringUtils.createBox(_loc5_.width + _vr4231,_loc5_.height + _vr4231,16776960,20) as MovieClip;
         StringUtils._ay2315(_loc9_,UITextField.RIGHT,10,10,16776960,0,0,-5);
         _loc9_.x = -_vr4231 / 2;
         _loc9_.y = -_vr4231 / 2;
         this._ul12329.addChild(_loc9_);
         this._ul12329.x = -this._ul12329.width - 5;
         this._ul12329.y = -this._ul12329.height / 2 + 16;
         this._ul12329.addChild(_loc5_);
         this._xo6614.addChild(this._ul12329);
      }
      
      private function _qx2504(param1:String = "") : TextField
      {
         var _loc2_:TextField = new TextField();
         _loc2_.width = 100;
         _loc2_.multiline = true;
         _loc2_.selectable = false;
         _loc2_.autoSize = TextFieldAutoSize.LEFT;
         _loc2_.defaultTextFormat = this._le15729;
         _loc2_.setTextFormat(this._le15729);
         UtilsUtils._bj8346(_loc2_,param1);
         return _loc2_;
      }
      
      private function _qc618(param1:Array = null, param2:int = 6) : MovieClip
      {
         var _loc3_:MovieClip = null;
         var _loc4_:TextField = null;
         var _loc5_:Sprite = null;
         var _loc6_:MovieClip = new MovieClip();
         if(param2 > param1.length)
         {
            param2 = int(param1.length);
         }
         var _loc7_:Number = 0;
         while(_loc7_ < param2)
         {
            _loc4_ = new TextField();
            _loc4_.selectable = false;
            _loc4_.defaultTextFormat = this._le15729;
            _loc4_.setTextFormat(this._le15729);
            UtilsUtils._xl9503(_loc4_,param1[_loc7_]);
            _loc4_.autoSize = TextFieldAutoSize.LEFT;
            _loc3_ = new MovieClip();
            _loc3_.addChild(_loc4_);
            _loc6_.addChild(_loc3_);
            _loc3_.y = 16 * _loc7_;
            _loc5_ = StringUtils.createBox(_loc3_.width,14);
            _loc5_.alpha = 0;
            _loc3_.addChild(_loc5_);
            _loc3_.name = param1[_loc7_];
            _loc3_.txt = _loc4_;
            _loc3_.addEventListener(MouseEvent.CLICK,this._mi5129,false,0,true);
            _loc3_.addEventListener(MouseEvent.ROLL_OVER,this._jk14015,false,0,true);
            _loc3_.addEventListener(MouseEvent.ROLL_OUT,this._mg9793,false,0,true);
            _loc3_.useHandCursor = true;
            _loc3_.buttonMode = true;
            this._te12467.push(_loc4_);
            _loc7_++;
         }
         return _loc6_;
      }
      
      private function _jk14015(param1:MouseEvent) : void
      {
         param1.currentTarget.txt.textColor = 34002;
      }
      
      private function _mg9793(param1:MouseEvent) : void
      {
         param1.currentTarget.txt.textColor = 17774;
      }
      
      private function _mi5129(param1:MouseEvent) : void
      {
         dispatchEvent(new ChangenicknameView(ChangenicknameView._yg5388,param1.currentTarget.name));
         this.destroy();
      }
      
      public function destroy() : void
      {
         var _loc1_:Number = 0;
         while(_loc1_ < this._te12467.length)
         {
            this._te12467[_loc1_].removeEventListener(MouseEvent.CLICK,this._mi5129);
            this._te12467[_loc1_].removeEventListener(MouseEvent.ROLL_OVER,this._jk14015);
            this._te12467[_loc1_].removeEventListener(MouseEvent.ROLL_OUT,this._mg9793);
            this._te12467[_loc1_] = null;
            _loc1_++;
         }
         this._te12467 = [];
         if(this._ul12329 != null)
         {
            this._xo6614.removeChild(this._ul12329);
            this._ul12329 = null;
         }
      }
   }
}

