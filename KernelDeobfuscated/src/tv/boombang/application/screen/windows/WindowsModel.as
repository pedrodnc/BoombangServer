package src.tv.boombang.application.screen.windows
{
   import flash.display.*;
   import flash.text.*;
   import src.person.*;
   import src.tv.boombang.core.datatypes.screen.ScreenModel;
   import src.tv.boombang.library.steps.Steps;
   import src.utils.*;
   
   public class WindowsModel extends Steps
   {
      
      protected static const count:Number = 1;
      
      protected static const count1:Number = count * 2;
      
      protected static const count2:Number = 1;
      
      protected static const count3:int = 3;
      
      protected var _xo6614:MovieClip;
      
      protected var _vq16076:uint;
      
      protected var _li10244:uint;
      
      protected var _gd13300:ScreenModel;
      
      protected var items:Array;
      
      protected var items1:Array;
      
      protected var count4:int = 0;
      
      public function WindowsModel(param1:MovieClip, param2:String, param3:ScreenModel)
      {
         super(param2);
         this._xo6614 = param1;
         this._gd13300 = param3;
         addChild(param1);
         this._dw3887();
         this._ae11881(330,265,count2,count);
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
      
      private function _ae11881(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this._vq16076 = int(param1 / (param3 * 2 + param4));
         this._li10244 = int(param2 / (param3 * 2 + param4));
      }
      
      private function _dw3887() : void
      {
         var count2:PersonAnimation = null;
         var count:int = 0;
         var count3:MovieClip = null;
         var count1:MovieClip = null;
         this.items = [];
         this.items1 = [];
         if(Boolean(this._gd13300) && Boolean(this._gd13300._oh12066))
         {
            count = 0;
            while(count < this._gd13300._oh12066.length)
            {
               ++this.count4;
               count2 = new PersonAnimation();
               count2.count1 = this._gd13300._oh12066[count]._wa13225;
               count2.colors = this._gd13300._oh12066[count].colours;
               count3 = PersonController._ku11706(count2,"down_idle");
               count1 = new MovieClip();
               count1.addChild(count3);
               count3.scaleX = count3.scaleY = 1.1;
               count3.x = count3.width / 2;
               count3.y = count3.height;
               this.items.push(count1);
               if(count < count3)
               {
                  var count2:MovieClip = PersonController._ku11706(count2,"down_idle");
                  var count7:MovieClip = new MovieClip();
                  count7.addChild(null);
                  null.scaleX = null.scaleY = 0.6;
                  null.x = null.width / 2;
                  null.y = null.height;
                  this.items1.push(null);
               }
               count++;
            }
         }
      }
      
      protected function _ex11343(param1:String, param2:int, param3:String = "left") : TextField
      {
         var count1:TextFormat = new TextFormat();
         count1.font = "Score Board";
         count1.size = param2;
         count1.align = param3;
         count1.color = 2236962;
         var count2:TextField = new TextField();
         count2.backgroundColor = 11184810;
         count2.text = param1;
         count2.setTextFormat(count1);
         UtilsUtils._xl9503(count2,param1);
         count2.selectable = false;
         count2.autoSize = TextFieldAutoSize.LEFT;
         return count2;
      }
   }
}

