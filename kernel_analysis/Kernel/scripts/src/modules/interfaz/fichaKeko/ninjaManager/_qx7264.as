package src.modules.interfaz.fichaKeko.ninjaManager
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.external.*;
   import src.allData.*;
   import src.modules.interfaz._xt81056;
   import src.person.*;
   import src.utils.*;
   
   public class _qx7264 extends EventDispatcher
   {
      
      private var _dg4724:_hv12530;
      
      private var _jy4188:_ta2443;
      
      private var _cy15918:_xt81056;
      
      private var _dt16173:_ss13356;
      
      private var _mh10687:int;
      
      private var _sg13948:Boolean;
      
      public function _qx7264(param1:int, param2:_ta2443, param3:MovieClip, param4:_xt81056)
      {
         var _loc5_:Boolean = false;
         super();
         this._jy4188 = param2;
         this._cy15918 = param4;
         this._mh10687 = param1;
         this._dg4724 = _hv12530.getInstance();
         this._sg13948 = this._dg4724._lq6358.indexOf(this._mh10687) != -1;
         if(this._dg4724._jn11596 == this._mh10687)
         {
            _loc5_ = true;
         }
         this._dt16173 = new _ss13356(param3,this._ae3231,this._sg13948,_loc5_,this._sm5059,this._hu8327);
         if(this._sg13948)
         {
            this._dt16173._dy867 = this._dg4724._le185;
         }
         else
         {
            this._dt16173.alpha = 0.2;
         }
      }
      
      public function get _yx13309() : int
      {
         return this._mh10687;
      }
      
      public function destroy() : void
      {
         if(this._dt16173 != null)
         {
            this._dt16173.destroy();
            this._dt16173 = null;
         }
      }
      
      private function _hu8327() : void
      {
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OUT));
      }
      
      private function _sm5059() : void
      {
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OVER));
      }
      
      public function _su15800() : void
      {
         if(this._dg4724._jn11596 == this._mh10687)
         {
            if(this._dt16173 != null)
            {
               this._dt16173.selected = true;
            }
         }
         else if(this._dt16173 != null && (this._dg4724._jn11596 != _ga7956._wn2739 && this._dg4724._jn11596 != _ga7956._ao5667))
         {
            this._dt16173.selected = false;
         }
      }
      
      public function _iv3666() : void
      {
         this._sg13948 = this._dg4724._lq6358.indexOf(this._mh10687) != -1;
         if(this._sg13948)
         {
            this._dt16173._db5584();
            this._dt16173._dy867 = _hv12530.getInstance()._le185;
         }
      }
      
      private function _ae3231() : void
      {
         if(this._mh10687 == _ga7956._mk4881)
         {
            if(ExternalInterface.available)
            {
               ExternalInterface.call("toggleBlackBeltPanel");
            }
            return;
         }
         if(this._mh10687 == _ga7956._idNinjaBlanco)
         {
            if(ExternalInterface.available)
            {
               ExternalInterface.call("toggleWhiteBeltPanel");
            }
            return;
         }
         if(!this._sg13948)
         {
            return;
         }
         if(this._jy4188._su11409())
         {
            return;
         }
         if(this._dt16173._av12265())
         {
            return;
         }
         if(_do3233._jx14255(_do3233._vs16058,3000))
         {
            if(this._dt16173.selected)
            {
               this._cy15918._it5566();
            }
            else
            {
               this._cy15918._an1638(this._mh10687);
            }
         }
      }
   }
}

