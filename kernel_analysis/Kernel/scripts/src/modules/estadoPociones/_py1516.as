package src.modules.estadoPociones
{
   import src.allData._hv12530;
   import src.multiuser.*;
   import src.org.osflash.thunderbolt.*;
   import src.person._ta2443;
   import src.person._tl4091;
   
   public class _py1516
   {
      
      public static const _wl13480:int = 1;
      
      private var _cm3301:_qu6971;
      
      private var _kq8715:_tl4091;
      
      private var _eh1510:int;
      
      private var _jy4188:_hv12530;
      
      private var _ln6006:_ta2443;
      
      private var _oh5423:int;
      
      private var _to12492:int;
      
      private var _vo9810:int;
      
      private var _bw7551:Array;
      
      private var _ax13263:Boolean;
      
      public function _py1516()
      {
         super();
         this._cm3301 = new _qu6971();
         this._cm3301.addEventListener(_uw14209._pd13336,this._cm9878);
         this._ax13263 = false;
      }
      
      public function destroy() : void
      {
         this._cm3301.removeEventListener(_uw14209._pd13336,this._cm9878);
      }
      
      public function _kf5607(param1:_tl4091) : void
      {
         this._kq8715 = param1;
      }
      
      private function _cm9878(param1:_uw14209) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Array = param1._lv9976;
         _loc3_.shift();
         _loc2_ = uint(String(_loc3_.shift()).charCodeAt(0));
         this._oh5423 = _loc3_.shift();
         this._to12492 = _loc3_.shift();
         this._vo9810 = _loc3_.shift();
         this._bw7551 = new Array();
         var _loc4_:int = int(_loc3_.length);
         if(_loc4_ > 0)
         {
            this._bw7551 = _jl5367._go4983(_loc3_.shift());
         }
         this._ln6006 = this._kq8715._xc6184(this._oh5423);
         if(this._ln6006 == null)
         {
            return;
         }
         switch(_loc2_)
         {
            case _qu6971._lh15101:
               this._ln6006._os12895(this._vo9810,this._to12492,this._bw7551);
               _mr16168.info("***************** PONER POCIMA=" + this._vo9810);
               return;
            case _qu6971._rl7898:
               _mr16168.info("***************** QUITAR POCIMA=" + this._vo9810);
               this._ln6006._al12408(this._vo9810);
               return;
            default:
               return;
         }
      }
   }
}

