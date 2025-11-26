package src.loaders
{
   import flash.display.MovieClip;
   import src.*;
   import src.config.*;
   
   public class _jr15810
   {
      
      protected static const _aw12659:String = "mcLogoTv";
      
      protected static const _if5827:String = "mcLogoMx";
      
      protected static const _it854:String = "mcLogoCl";
      
      protected var _eh11850:MovieClip;
      
      protected var visible:Boolean = false;
      
      protected var _fn7388:int;
      
      public function _jr15810(param1:MovieClip)
      {
         super();
         this._eh11850 = param1;
      }
      
      public function show() : void
      {
         if(!this.visible)
         {
            this.visible = true;
            _xw1367.getInstance()._uc3178(this._eh11850,_xw1367._wj14746);
            this._eh11850.x = _cc7688._wc13865 / 2;
            this._eh11850.y = _cc7688._kl10731 / 2;
         }
      }
      
      public function hide() : void
      {
         if(this.visible)
         {
            this.visible = false;
            _xw1367.getInstance()._na10792(this._eh11850,_xw1367._wj14746);
         }
      }
      
      public function destroy() : void
      {
         this.hide();
      }
      
      public function _un6017(param1:int, param2:int) : void
      {
      }
      
      public function _ue3985(param1:String) : void
      {
      }
      
      public function _aj8898(param1:int) : void
      {
         this._fn7388 = param1;
      }
      
      public function _jc618(param1:String) : void
      {
      }
      
      protected function _mk15381() : void
      {
         if(this._eh11850[_aw12659] != null)
         {
            this._eh11850[_aw12659].visible = false;
         }
         if(this._eh11850[_if5827] != null)
         {
            this._eh11850[_if5827].visible = false;
         }
         if(this._eh11850[_it854] != null)
         {
            this._eh11850[_it854].visible = false;
         }
         switch(_cc7688._qs3725)
         {
            case _cc7688._gl650:
            case _cc7688._gk8815:
               if(this._eh11850[_aw12659] != null)
               {
                  this._eh11850[_aw12659].visible = true;
               }
               return;
            case _cc7688._mi124:
               if(this._eh11850[_if5827] != null)
               {
                  this._eh11850[_if5827].visible = false;
               }
               return;
            case _cc7688._uo6813:
               if(this._eh11850[_it854] != null)
               {
                  this._eh11850[_it854].visible = false;
               }
               return;
            default:
               return;
         }
      }
   }
}

