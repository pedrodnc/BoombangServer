package src.modules.chooseScene.panelMariquita
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.*;
   import src.utils.*;
   
   public class _ty11551
   {
      
      private static const _sy10352:String = "tfTexto";
      
      private static const _rj8907:String = "mcFondoDialogoBicho";
      
      public static const _oa13936:String = "azul";
      
      public static const _ib4009:String = "celeste";
      
      public static const _lc3365:String = "rosa";
      
      private static const _qh11016:Number = 274;
      
      private static const _cj11822:Number = 241;
      
      private var _yc13690:MovieClip;
      
      private var _cl12799:int;
      
      public function _ty11551(param1:MovieClip)
      {
         super();
         this._yc13690 = param1;
         this._yc13690.visible = false;
         this._cl12799 = _xw1367._wa4051;
      }
      
      public function destroy() : void
      {
         this._hu12389();
      }
      
      public function _db5584(param1:String, param2:String) : Boolean
      {
         if(this._yc13690.visible == false)
         {
            this._yc13690.x = _qh11016;
            this._yc13690.y = _cj11822;
            this._yc13690.visible = true;
            this._yc13690[_rj8907].gotoAndStop(param2);
            _yq8362._bj8346(TextField(this._yc13690[_sy10352]),param1);
            return true;
         }
         this._yc13690[_rj8907].gotoAndStop(param2);
         _yq8362._bj8346(TextField(this._yc13690[_sy10352]),param1);
         return false;
      }
      
      public function _hu12389() : Boolean
      {
         if(this._yc13690.visible == true)
         {
            this._yc13690.visible = false;
            return true;
         }
         return false;
      }
   }
}

