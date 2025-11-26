package src.modules.login.choosePerson.colorear
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.color.ColorModel;
   import src.modules.login.choosePerson.*;
   import src.person.*;
   
   public class ColorearModel extends ColorearModel
   {
      
      private static const count:int = 8;
      
      private static const textString:String = "pez";
      
      private static const textString1:String = "aletas";
      
      private static const textString2:String = "cuerpo";
      
      private static const textString3:String = "cabeza";
      
      private static const count1:int = 0;
      
      private static const count2:int = 1;
      
      private static const count3:int = 2;
      
      private static const items:Array = [[],[7736642,5443951,9060213],[16777215,12101792,14207175],[6736896,5346347,26163],[13599382,10884167,12668274],[8042183,219765,294819],[13997593,8666903,13391878],[0,7162675,16763904],[15453306,16750848,15522485]];
      
      private static const items1:Array = [0,2,2,2,2,0,0,4,1,1,2,2];
      
      public function ColorearModel(param1:MovieClip, param2:MovieClip, param3:int, param4:Function, param5:Function)
      {
         super(param1,param2,param3,param4,param5);
         _vm8323 = [];
         _vm8323[0] = param2[_ln13779[param3] + _bn5205 + items1[param3]].color;
      }
      
      override protected function _bf682() : void
      {
         _bx5761(ChoosepersonController.textString3);
      }
      
      override public function updateColor(param1:ColorModel) : void
      {
         _vm8323[0] = _py15642[_ln13779[count] + _bn5205 + items1[count]].color = param1.color;
      }
      
      override protected function _hc15271(param1:MouseEvent) : void
      {
         var count:int = int(String(param1.currentTarget.name).charAt(3));
         switch(param1.target.name)
         {
            case textString3:
               _py15642[_ln13779[count] + _bn5205 + items1[count]].color = items[count][count3];
               var count3:Boolean = true;
               break;
            case textString1:
               _py15642[_ln13779[count] + _bn5205 + items1[count]].color = items[count][count1];
               count3 = true;
               break;
            case textString2:
               _py15642[_ln13779[count] + _bn5205 + items1[count]].color = items[count][count2];
               count3 = true;
         }
         if(count == PersonModel._cs8341 && false)
         {
            if(_py15642[_ln13779[count] + _bn5205 + "2"].color == 16777215)
            {
               _py15642[_ln13779[count] + _bn5205 + "7"].color = 16777215;
            }
            else
            {
               _py15642[_ln13779[count] + _bn5205 + "7"].color = 0;
            }
         }
         if(count == _te12275)
         {
            return;
         }
         _te12275 = count;
         MovieClip(param1.currentTarget).gotoAndPlay(_dh7542);
      }
      
      override protected function _br1975(param1:MouseEvent) : void
      {
         _py15642[_ln13779[count] + _bn5205 + items1[count]].color = _vm8323[0];
         var count:int = int(String(param1.currentTarget.name).charAt(3));
         MovieClip(param1.currentTarget).gotoAndPlay(_to5494);
         _te12275 = -1;
      }
      
      override protected function _cc10359(param1:MouseEvent) : void
      {
         _vm8323[0] = _py15642[_ln13779[count] + _bn5205 + items1[count]].color;
         _gi11319();
      }
      
      override protected function addListeners() : void
      {
         var count2:int = 0;
         while(count2 < count)
         {
            MovieClip(_vw16159[textString + (count2 + 1)]).addEventListener(MouseEvent.ROLL_OVER,this._hc15271,true);
            MovieClip(_vw16159[textString + (count2 + 1)]).addEventListener(MouseEvent.ROLL_OUT,this._br1975);
            MovieClip(_vw16159[textString + (count2 + 1)]).addEventListener(MouseEvent.MOUSE_DOWN,this._cc10359,true);
            count2++;
         }
      }
      
      override protected function move() : void
      {
         var count2:MovieClip = null;
         var count:int = 0;
         while(count < count)
         {
            count2 = MovieClip(_vw16159[textString + (count + 1)]);
            if(count2 != null)
            {
               count2.removeEventListener(MouseEvent.ROLL_OVER,this._hc15271,true);
               count2.removeEventListener(MouseEvent.ROLL_OUT,this._br1975);
               count2.removeEventListener(MouseEvent.MOUSE_DOWN,this._cc10359,true);
            }
            count++;
         }
      }
   }
}

