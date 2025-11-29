package src.modules.chooseIsla
{
   import flash.display.*;
   import flash.events.*;
   import src.modules.bpad.*;
   import src.utils.commonComponents.*;
   
   public class ChooseislaView
   {
      
      private static const textString:String = "mcBotonReport";
      
      public var _ul12231:MovieClip;
      
      private var _bx8167:ChooseislaController;
      
      public function ChooseislaView(param1:MovieClip, param2:ChooseislaController)
      {
         super();
         this._ul12231 = MovieClip(param1[textString]);
         this._bx8167 = param2;
         this.onClick();
      }
      
      public function destroy() : void
      {
         this.onClick1();
         this._ul12231 = null;
         this._bx8167 = null;
      }
      
      public function onClick() : void
      {
         this._ul12231.addEventListener(MouseEvent.CLICK,this._tm13881);
         this._ul12231.addEventListener(MouseEvent.ROLL_OUT,this.stop1);
         this._ul12231.addEventListener(MouseEvent.ROLL_OVER,this.stop);
      }
      
      public function onClick1() : void
      {
         this._ul12231.removeEventListener(MouseEvent.CLICK,this._tm13881);
         this._ul12231.removeEventListener(MouseEvent.ROLL_OUT,this.stop1);
         this._ul12231.removeEventListener(MouseEvent.ROLL_OVER,this.stop);
      }
      
      public function show() : void
      {
         if(this._ul12231.visible == false)
         {
            this._ul12231.visible = true;
         }
      }
      
      public function authenticateUser2() : void
      {
         if(this._ul12231.visible == true)
         {
            this._ul12231.visible = false;
         }
      }
      
      private function stop(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            MovieClip(param1.currentTarget).gotoAndStop(CommoncomponentsView._jo8252);
         }
      }
      
      private function stop1(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            MovieClip(param1.currentTarget).gotoAndStop(CommoncomponentsView._vk6252);
         }
      }
      
      private function _tm13881(param1:MouseEvent) : void
      {
         if(this._bx8167._hp11587 != null)
         {
            BPadController._np546._bs5131(this._bx8167._hp11587);
         }
      }
   }
}

