package src.modules.multiplayerGames.fichas
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas.FichasController;
   
   public class FichasView extends FichasController
   {
      
      protected static const textString:String = "mcBoton";
      
      protected static const textString1:String = "mcMoneda";
      
      protected static const textString2:String = "tfText";
      
      protected var items:Array;
      
      protected var items1:Array;
      
      public function FichasView(param1:MovieClip, param2:FichasUtils, param3:Array = null, param4:Array = null)
      {
         super(param1,param2);
         this._vm3094(param2.items,param2.items1,param3);
         this._mp5613(param2.count,param2.count1);
         this._up513(param4);
      }
      
      private function _vm3094(param1:Array, param2:Array, param3:Array) : void
      {
         var count2:int = 0;
         this.items = new Array();
         while(count2 < param1.length)
         {
            if(_cw11838[textString + count2] != null)
            {
               var count1:CommoncomponentsView = new CommoncomponentsView(_cw11838[textString + count2],param2[count2],param1[count2]);
               this.items.push(null);
               if(param3 != null && param3[count2] == false)
               {
                  null._dy867 = false;
                  null.mouseEnabled = true;
               }
               null.addEventListener(MouseEvent.ROLL_OVER,this._ao12297,false,0,true);
               null.addEventListener(MouseEvent.ROLL_OUT,this._ao12297,false,0,true);
            }
            count2++;
         }
      }
      
      private function _mp5613(param1:int, param2:int) : void
      {
         if(param1 > 0)
         {
            if(_cw11838[textString1] != null)
            {
               UtilsUtils._xl9503(TextField(_cw11838[textString1][textString2]),param1.toString());
            }
         }
         if(param2 > 0)
         {
            if(_cw11838[textString1] != null)
            {
               UtilsUtils._xl9503(TextField(_cw11838[textString1][textString2]),param2.toString());
            }
         }
      }
      
      private function _up513(param1:Array) : void
      {
         var count:UIPanel = null;
         var count3:int = 0;
         var count1:String = null;
         this.items1 = new Array();
         count3 = 0;
         for each(count1 in param1)
         {
            if(count3 >= this.items.length)
            {
               break;
            }
            this.items1[count3] = null;
            if(count1 != "")
            {
               count = new UIPanel();
               count.text = count1;
               count._xe10297 = UITextField.LEFT;
               count.textColor = 16769248;
               count.backgroundColor = 16071997;
               count._ui11624 = 100;
               count.x = this.items[count3].x + this.items[count3].width - 20;
               count.y = this.items[count3].y + this.items[count3].height * 0.5;
               count._sl14850();
               count.visible = false;
               this._ie7655().addChild(count);
               this.items1[count3] = count;
            }
            count3++;
         }
      }
      
      public function _xk3471() : void
      {
         var count2:int = 0;
         while(count2 < this.items.length)
         {
            CommoncomponentsView(this.items[count2]).authenticateUser2();
            count2++;
         }
      }
      
      public function _tb3023() : void
      {
         var count2:int = 0;
         while(count2 < this.items.length)
         {
            CommoncomponentsView(this.items[count2]).show();
            count2++;
         }
      }
      
      override public function destroy() : void
      {
         var count2:int = 0;
         super.destroy();
         while(count2 < this.items.length)
         {
            if(this.items[count2] != null)
            {
               CommoncomponentsView(this.items[count2]).destroy();
               this.items[count2] = null;
            }
            count2++;
         }
         count2 = 0;
         while(count2 < this.items1.length)
         {
            if(this.items1[count2] != null)
            {
               this.items1[count2].destroy();
               this.items1[count2] = null;
            }
            count2++;
         }
      }
      
      protected function _ao12297(param1:MouseEvent) : void
      {
         var count:int = int(this.items.indexOf(param1.target));
         if(count >= 0 && count < this.items1.length && this.items1[count] != null)
         {
            if(param1.type == MouseEvent.ROLL_OVER)
            {
               this.items1[count].visible = true;
            }
            else if(param1.type == MouseEvent.ROLL_OUT)
            {
               this.items1[count].visible = false;
            }
         }
      }
   }
}

