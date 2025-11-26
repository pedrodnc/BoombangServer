package src.modules.interfaz.mochila
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas.FichasUtils;
   import src.utils.fichas.FichasController;
   
   public class MochilaView extends FichasController
   {
      
      public static var textString:String = "mcSendPotion";
      
      public static var textString1:String = "txtTexto";
      
      private var _bl7804:TextField;
      
      private var _wn6834:CommoncomponentsController;
      
      private var _qr1106:Function;
      
      private var _qt2171:MochilaModel;
      
      public function MochilaView(param1:Function, param2:MovieClip, param3:FichasUtils, param4:MochilaModel, param5:Function = null)
      {
         super(param2,param3,param5,false);
         this._wn6834 = new CommoncomponentsController(param2[textString],this._mw1874);
         this._qr1106 = param1;
         this._qt2171 = param4;
         this._bl7804 = TextField(param2[textString1]);
         this._bl7804.multiline = false;
         this._bl7804.maxChars = 19;
         this._bl7804.text = "";
         this._bl7804.addEventListener(MouseEvent.MOUSE_DOWN,this.stop);
      }
      
      override public function show(param1:int, param2:int) : Boolean
      {
         super.show(param1,param2);
         _cw11838.stage.focus = this._bl7804;
         return true;
      }
      
      private function _mw1874() : void
      {
         var count2:String = UtilsUtils._bg5268(this._bl7804.text);
         this._qr1106.apply(this,[count2]);
         this._bl7804.text = "";
      }
      
      private function stop(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._wn6834 != null)
         {
            this._wn6834.destroy();
            this._wn6834 = null;
         }
         if(this._bl7804 != null)
         {
            this._bl7804.removeEventListener(MouseEvent.MOUSE_DOWN,this.stop);
         }
      }
   }
}

