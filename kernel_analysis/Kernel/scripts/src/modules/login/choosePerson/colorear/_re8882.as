package src.modules.login.choosePerson.colorear
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.allData.color._pn12847;
   import src.utils.*;
   
   public class _re8882
   {
      
      protected static const _rx9492:String = "ready";
      
      protected static const _xb11893:String = "btnNext";
      
      protected static const _dh7542:String = "over";
      
      protected static const _to5494:String = "out";
      
      protected static const _bn5205:String = "colorTrans";
      
      protected static const _ln13779:Array = [0,"E","L","R","Y","I","C","N","G","B","M","J"];
      
      protected static var _id11649:Boolean = true;
      
      protected static var _hb7320:Boolean = true;
      
      protected static var _qg1527:Boolean = true;
      
      protected var _vw16159:MovieClip;
      
      protected var _py15642:MovieClip;
      
      protected var _pl6821:int;
      
      protected var _te12275:int;
      
      protected var _bx5761:Function;
      
      protected var _gi11319:Function;
      
      protected var _vm8323:Array;
      
      public function _re8882(param1:MovieClip, param2:MovieClip, param3:int, param4:Function, param5:Function)
      {
         super();
         this._vw16159 = param1;
         this._py15642 = param2;
         this._pl6821 = param3;
         this._bx5761 = param4;
         this._gi11319 = param5;
         this._te12275 = -1;
         _xv14798._dp2863(this._vw16159,this._pt3959);
      }
      
      public function destroy() : void
      {
         _xv14798._ff5056(this._vw16159);
         this._cp7902();
      }
      
      protected function _pt3959() : void
      {
         switch(this._vw16159.currentLabel)
         {
            case _rx9492:
               this._bf682();
               this.addListeners();
               return;
            default:
               return;
         }
      }
      
      protected function _bf682() : void
      {
      }
      
      protected function addListeners() : void
      {
         this._vw16159.addEventListener(MouseEvent.ROLL_OVER,this._hc15271,_id11649);
         this._vw16159.addEventListener(MouseEvent.ROLL_OUT,this._br1975,_hb7320);
         this._vw16159.addEventListener(MouseEvent.MOUSE_DOWN,this._cc10359,_qg1527);
      }
      
      protected function _cp7902() : void
      {
         this._vw16159.removeEventListener(MouseEvent.ROLL_OVER,this._hc15271,_id11649);
         this._vw16159.removeEventListener(MouseEvent.ROLL_OUT,this._br1975,_hb7320);
         this._vw16159.removeEventListener(MouseEvent.MOUSE_DOWN,this._cc10359,_qg1527);
      }
      
      protected function _hc15271(param1:MouseEvent) : void
      {
      }
      
      protected function _br1975(param1:MouseEvent) : void
      {
      }
      
      protected function _cc10359(param1:MouseEvent) : void
      {
      }
      
      protected function _nb4420(param1:MouseEvent) : void
      {
      }
      
      public function updateColor(param1:_pn12847) : void
      {
      }
   }
}

