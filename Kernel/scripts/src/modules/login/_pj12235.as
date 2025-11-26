package src.modules.login
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.utils.*;
   
   public class _pj12235
   {
      
      private static const _ck688:String = "tfTitle";
      
      private static const _dt16115:String = "tfDescription";
      
      private static const _uj7376:String = "mcBackGround";
      
      private static const _my12543:int = 16777215;
      
      private static const _jg9045:int = 890865;
      
      private static const _fy13399:int = 15209;
      
      private static const _rb3998:int = 15724;
      
      private static const _ba2284:int = 890865;
      
      private static const _dr15098:int = 16777215;
      
      private var _dp3079:MovieClip;
      
      private var _ln9715:Function;
      
      private var title:String;
      
      private var description:String;
      
      public function _pj12235(param1:MovieClip, param2:String, param3:String, param4:Function)
      {
         super();
         this._dp3079 = param1;
         this._ln9715 = param4;
         this.title = param2;
         this.description = param3;
         _yq8362._xl9503(param1[_ck688],param2);
         _yq8362._xl9503(param1[_dt16115],param3);
         param1.mouseChildren = false;
         this._nc2422();
         this._dp3079.buttonMode = true;
      }
      
      public function destroy() : void
      {
         this._al10937();
         this._dp3079 = null;
         this._ln9715 = null;
         this.title = null;
         this.description = null;
      }
      
      private function _nc2422() : void
      {
         this._dp3079.addEventListener(MouseEvent.ROLL_OUT,this._xx13833);
         this._dp3079.addEventListener(MouseEvent.ROLL_OVER,this._xx13833);
         this._dp3079.addEventListener(MouseEvent.MOUSE_DOWN,this._xx13833);
      }
      
      private function _al10937() : void
      {
         this._dp3079.removeEventListener(MouseEvent.ROLL_OUT,this._xx13833);
         this._dp3079.removeEventListener(MouseEvent.ROLL_OVER,this._xx13833);
         this._dp3079.removeEventListener(MouseEvent.MOUSE_DOWN,this._xx13833);
      }
      
      private function _xx13833(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case MouseEvent.ROLL_OUT:
               _yq8362._np7275(this._dp3079[_ck688],_my12543);
               _yq8362._np7275(this._dp3079[_dt16115],_jg9045);
               _xv14798._ts14032(this._dp3079[_uj7376],_fy13399);
               return;
            case MouseEvent.ROLL_OVER:
               _yq8362._np7275(this._dp3079[_ck688],_rb3998);
               _yq8362._np7275(this._dp3079[_dt16115],_ba2284);
               _xv14798._ts14032(this._dp3079[_uj7376],_dr15098);
               return;
            case MouseEvent.MOUSE_DOWN:
               if(this._ln9715 != null)
               {
                  this._ln9715();
               }
               return;
            default:
               return;
         }
      }
   }
}

