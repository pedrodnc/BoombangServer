package src.modules.chooseScene.panelMariquita
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.*;
   import src.utils.*;
   
   public class PanelmariquitaView
   {
      
      private static const textString1:String = "tfTexto";
      
      private static const textString1:String = "mcFondoDialogoBicho";
      
      public static const textString2:String = "azul";
      
      public static const textString3:String = "celeste";
      
      public static const textString4:String = "rosa";
      
      private static const count6:Number = 274;
      
      private static const count7:Number = 241;
      
      private var _yc13690:MovieClip;
      
      private var count:int;
      
      public function PanelmariquitaView(param1:MovieClip)
      {
         super();
         this._yc13690 = param1;
         this._yc13690.visible = false;
         this.count = _xw1367.count5;
      }
      
      public function destroy() : void
      {
         this.authenticateUser2();
      }
      
      public function show(param1:String, param2:String) : Boolean
      {
         if(this._yc13690.visible == false)
         {
            this._yc13690.x = count6;
            this._yc13690.y = count7;
            this._yc13690.visible = true;
            this._yc13690[textString1].gotoAndStop(param2);
            UtilsUtils._bj8346(TextField(this._yc13690[textString1]),param1);
            return true;
         }
         this._yc13690[textString1].gotoAndStop(param2);
         UtilsUtils._bj8346(TextField(this._yc13690[textString1]),param1);
         return false;
      }
      
      public function authenticateUser2() : Boolean
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

