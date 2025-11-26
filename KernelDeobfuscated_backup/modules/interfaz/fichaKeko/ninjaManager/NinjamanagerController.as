package src.modules.interfaz.fichaKeko.ninjaManager
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.allData.*;
   import src.modules.interfaz._xt81056;
   import src.person._ta2443;
   import src.utils.*;
   
   public class _kk8961 extends EventDispatcher
   {
      
      private var _dg4724:_hv12530;
      
      private var _jy4188:_ta2443;
      
      private var _cy15918:_xt81056;
      
      private var _dt16173:_ss13356;
      
      private var _km11956:int;
      
      private var _hk11335:Boolean;
      
      public function _kk8961(param1:int, param2:_ta2443, param3:MovieClip, param4:_xt81056)
      {
         var _loc5_:Boolean = false;
         super();
         this._jy4188 = param2;
         this._cy15918 = param4;
         this._km11956 = param1;
         this._dg4724 = _hv12530.getInstance();
         this._hk11335 = this._dg4724._wl10859(this._km11956);
         if(this._dg4724._cj5718 == this._km11956)
         {
            _loc5_ = true;
         }
         this._dt16173 = new _ss13356(param3,this._ae3231,this._hk11335,_loc5_,this._sm5059,this._hu8327);
      }
      
      public function get _cj5718() : int
      {
         return this._km11956;
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
         if(this._dt16173 != null)
         {
            if(this._dg4724._cj5718 == this._km11956)
            {
               this._dt16173.selected = true;
            }
            else
            {
               this._dt16173.selected = false;
            }
         }
      }
      
      public function _iv3666() : void
      {
         this._hk11335 = this._dg4724._wl10859(this._km11956);
         if(this._hk11335)
         {
            this._dt16173._db5584();
            this._dt16173._dy867 = true;
         }
      }
      
      private function _ae3231() : void
      {
         if(!this._hk11335)
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
               this._cy15918._pk10269();
               this._dt16173.selected = false;
            }
            else
            {
               this._cy15918._um15681(this._km11956);
               this._dt16173.selected = true;
            }
         }
      }
   }
}

