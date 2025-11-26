package src.modules.chooseIsla
{
   import flash.display.*;
   import flash.events.*;
   import src.modules.bpad.*;
   import src.utils.commonComponents.*;
   
   public class _uo16117
   {
      
      private static const _ed11144:String = "mcBotonReport";
      
      public var _ul12231:MovieClip;
      
      private var _bx8167:_qw14876;
      
      public function _uo16117(param1:MovieClip, param2:_qw14876)
      {
         super();
         this._ul12231 = MovieClip(param1[_ed11144]);
         this._bx8167 = param2;
         this._xj6046();
      }
      
      public function destroy() : void
      {
         this._ms13572();
         this._ul12231 = null;
         this._bx8167 = null;
      }
      
      public function _xj6046() : void
      {
         this._ul12231.addEventListener(MouseEvent.CLICK,this._tm13881);
         this._ul12231.addEventListener(MouseEvent.ROLL_OUT,this._in11061);
         this._ul12231.addEventListener(MouseEvent.ROLL_OVER,this._on4798);
      }
      
      public function _ms13572() : void
      {
         this._ul12231.removeEventListener(MouseEvent.CLICK,this._tm13881);
         this._ul12231.removeEventListener(MouseEvent.ROLL_OUT,this._in11061);
         this._ul12231.removeEventListener(MouseEvent.ROLL_OVER,this._on4798);
      }
      
      public function _db5584() : void
      {
         if(this._ul12231.visible == false)
         {
            this._ul12231.visible = true;
         }
      }
      
      public function _hu12389() : void
      {
         if(this._ul12231.visible == true)
         {
            this._ul12231.visible = false;
         }
      }
      
      private function _on4798(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            MovieClip(param1.currentTarget).gotoAndStop(_ax13262._jo8252);
         }
      }
      
      private function _in11061(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            MovieClip(param1.currentTarget).gotoAndStop(_ax13262._vk6252);
         }
      }
      
      private function _tm13881(param1:MouseEvent) : void
      {
         if(this._bx8167._hp11587 != null)
         {
            _id1792._np546._bs5131(this._bx8167._hp11587);
         }
      }
   }
}

