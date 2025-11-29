package src.tv.boombang.application.user.gui.windows.changeNickName
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.utils.*;
   
   public class ChangenicknameView extends MovieClip
   {
      
      private static const count:int = 10;
      
      private static const count1:int = 6;
      
      private var _ul12329:MovieClip;
      
      private var _xo6614:MovieClip;
      
      private var _le15729:TextFormat;
      
      private var items:Array;
      
      public function ChangenicknameView(param1:MovieClip)
      {
         this.items = [];
         super();
         this._xo6614 = param1;
         this._le15729 = new TextFormat();
         this._le15729.font = "VAGRoundedBlack";
         this._le15729.size = 11;
         this._le15729.color = 17774;
      }
      
      public function create(param1:String = "", param2:Array = null, param3:int = 6, param4:Boolean = true) : void
      {
         var count2:MovieClip = null;
         var count7:MovieClip = null;
         var items:TextField = null;
         count2 = new MovieClip();
         var count8:TextField = this._qx2504(param1);
         count2.addChild(count8);
         if(param2 != null && param2.length > 0)
         {
            if(param4)
            {
               items = this._qx2504("windows.nickName.nameTry");
               count2.addChild(items);
               items.y = items.height + 2;
            }
            count7 = this._qc618(param2,param3);
            if(param4)
            {
               count7.y = items.y + items.height;
            }
            else
            {
               count7.y = 0;
            }
            count2.addChild(count7);
         }
         this._ul12329 = new MovieClip();
         var count6:MovieClip = StringUtils.createBox(count2.width + count,count2.height + count,16776960,20) as MovieClip;
         StringUtils._ay2315(count6,UITextField.RIGHT,10,10,16776960,0,0,-5);
         count6.x = -count / 2;
         count6.y = -count / 2;
         this._ul12329.addChild(count6);
         this._ul12329.x = -this._ul12329.width - 5;
         this._ul12329.y = -this._ul12329.height / 2 + 16;
         this._ul12329.addChild(count2);
         this._xo6614.addChild(this._ul12329);
      }
      
      private function _qx2504(param1:String = "") : TextField
      {
         var count:TextField = new TextField();
         count.width = 100;
         count.multiline = true;
         count.selectable = false;
         count.autoSize = TextFieldAutoSize.LEFT;
         count.defaultTextFormat = this._le15729;
         count.setTextFormat(this._le15729);
         UtilsUtils._bj8346(count,param1);
         return count;
      }
      
      private function _qc618(param1:Array = null, param2:int = 6) : MovieClip
      {
         var count3:MovieClip = null;
         var count1:TextField = null;
         var count2:Sprite = null;
         var count7:MovieClip = new MovieClip();
         if(param2 > param1.length)
         {
            param2 = int(param1.length);
         }
         var items:Number = 0;
         while(items < param2)
         {
            count1 = new TextField();
            count1.selectable = false;
            count1.defaultTextFormat = this._le15729;
            count1.setTextFormat(this._le15729);
            UtilsUtils._xl9503(count1,param1[items]);
            count1.autoSize = TextFieldAutoSize.LEFT;
            count3 = new MovieClip();
            count3.addChild(count1);
            count7.addChild(count3);
            count3.y = 16 * items;
            count2 = StringUtils.createBox(count3.width,14);
            count2.alpha = 0;
            count3.addChild(count2);
            count3.name = param1[items];
            count3.txt = count1;
            count3.addEventListener(MouseEvent.CLICK,this.destroy,false,0,true);
            count3.addEventListener(MouseEvent.ROLL_OVER,this._jk14015,false,0,true);
            count3.addEventListener(MouseEvent.ROLL_OUT,this._mg9793,false,0,true);
            count3.useHandCursor = true;
            count3.buttonMode = true;
            this.items.push(count1);
            items++;
         }
         return count7;
      }
      
      private function _jk14015(param1:MouseEvent) : void
      {
         param1.currentTarget.txt.textColor = 34002;
      }
      
      private function _mg9793(param1:MouseEvent) : void
      {
         param1.currentTarget.txt.textColor = 17774;
      }
      
      private function destroy(param1:MouseEvent) : void
      {
         dispatchEvent(new ChangenicknameView(ChangenicknameView._yg5388,param1.currentTarget.name));
         this.destroy();
      }
      
      public function destroy() : void
      {
         var count2:Number = 0;
         while(count2 < this.items.length)
         {
            this.items[count2].removeEventListener(MouseEvent.CLICK,this.destroy);
            this.items[count2].removeEventListener(MouseEvent.ROLL_OVER,this._jk14015);
            this.items[count2].removeEventListener(MouseEvent.ROLL_OUT,this._mg9793);
            this.items[count2] = null;
            count2++;
         }
         this.items = [];
         if(this._ul12329 != null)
         {
            this._xo6614.removeChild(this._ul12329);
            this._ul12329 = null;
         }
      }
   }
}

