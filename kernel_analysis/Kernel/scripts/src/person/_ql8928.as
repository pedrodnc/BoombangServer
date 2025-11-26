package src.person
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.events._xb9814;
   import src.modules.interfaz._je14031;
   import src.person.pociones.*;
   
   public class _ql8928
   {
      
      private var _ig3441:_ta2443;
      
      private var _tv3848:MovieClip;
      
      private var _cb14550:MovieClip;
      
      private var _sk8948:MovieClip;
      
      private var _bx3898:MovieClip;
      
      private var _su4934:MovieClip;
      
      private var _gf968:_td11801;
      
      private var _en3767:int;
      
      private var _py12359:_um8624;
      
      private var _gm13290:_ga7956;
      
      private var _fp3694:int;
      
      private var _js7773:_je14031;
      
      private var _et2976:Function;
      
      private var _im4627:_fl12537;
      
      public function _ql8928(param1:_ta2443, param2:MovieClip, param3:MovieClip, param4:MovieClip, param5:MovieClip, param6:MovieClip, param7:_um8624, param8:_ga7956, param9:Function)
      {
         super();
         this._ig3441 = param1;
         this._tv3848 = param2;
         this._cb14550 = param3;
         this._sk8948 = param4;
         this._bx3898 = param5;
         this._su4934 = param6;
         this._py12359 = param7;
         this._gm13290 = param8;
         this._et2976 = param9;
         this._im4627 = new _fl12537(this);
      }
      
      public function _hs4850(param1:_je14031) : void
      {
         this._js7773 = param1;
      }
      
      public function destroy(param1:Boolean = false) : void
      {
         if(this._gf968 != null)
         {
            this.removeListeners();
            this._gf968.destroy(param1);
            this._gf968 = null;
         }
         while(this._sk8948.numChildren > 0)
         {
            this._sk8948.removeChildAt(0);
         }
         while(this._su4934.numChildren > 0)
         {
            this._su4934.removeChildAt(0);
         }
         while(this._bx3898.numChildren > 0)
         {
            this._bx3898.removeChildAt(0);
         }
         this._tv3848.alpha = 1;
         this._tv3848.scaleX = 1;
         this._tv3848.scaleY = 1;
         var _loc2_:ColorTransform = new ColorTransform();
         _loc2_.redMultiplier = 1;
         _loc2_.greenMultiplier = 1;
         _loc2_.blueMultiplier = 1;
         this._tv3848.transform.colorTransform = _loc2_;
         this._tv3848.visible = true;
         this._cb14550.visible = true;
         this._py12359._ta15622 = -1;
      }
      
      public function get _xx15230() : int
      {
         if(this._gf968 != null)
         {
            return this._gf968._tx2113;
         }
         return -1;
      }
      
      public function get _ep13455() : int
      {
         return this._en3767;
      }
      
      public function _qm1808() : void
      {
         var _loc1_:int = 0;
         if(this._xx15230 == _td11801._eh1023 || this._xx15230 == _td11801._ng9645)
         {
            if(this._ig3441.state != _ta2443._yj3530 && this._ig3441.state != _ta2443._dt3039)
            {
               _loc1_ = this._ep13455;
               this.destroy();
               this._im4627._cc16081();
               this._ql9411(_loc1_,_loc1_,[],_td11801._eq4750);
            }
         }
         if(this._xx15230 == _td11801._cc5175)
         {
            if(this._ig3441.state != _ta2443._yj3530 && this._ig3441.state != _ta2443._dt3039)
            {
               this.destroy(true);
            }
         }
      }
      
      public function _go3196(param1:int) : Boolean
      {
         switch(param1)
         {
            case _td11801._ey7598:
            case _td11801._xf2480:
            case _td11801._tq12301:
            case _td11801._gc11914:
            case _td11801._fr11009:
            case _td11801._ju1187:
            case _td11801._uy161:
            case _td11801._qy9715:
            case _td11801._sh13884:
            case _td11801._fh4819:
               return true;
            default:
               return false;
         }
      }
      
      public function _qa969(param1:int) : Boolean
      {
         switch(param1)
         {
            case _td11801._iq6367:
            case _td11801._sp655:
            case _td11801._me11526:
            case _td11801._vo9545:
            case _td11801._di14258:
            case _td11801._jg2825:
            case _td11801._qc9339:
            case _td11801._xl2462:
               return true;
            default:
               return false;
         }
      }
      
      public function _ql9411(param1:int, param2:int, param3:Array, param4:int = 1) : void
      {
         var _loc5_:_us2761 = null;
         if(param4 == _td11801._eh1023 && this._qa969(param1))
         {
            param4 = int(_td11801._ng9645);
         }
         var _loc6_:_us2761 = new _us2761(param1,param2,param3,param4,this._qa969(param1));
         if(!this._go3196(param1))
         {
            this.destroy();
            this._im4627._rl3966();
         }
         else
         {
            _loc5_ = this._im4627._ag15710;
            if(_loc5_ != null && this._go3196(_loc5_._bh15168))
            {
               this._im4627._lh10470(_loc5_);
            }
            this.destroy();
         }
         this._im4627._nm8041(_loc6_);
         this._gs4440();
      }
      
      private function _gs4440() : void
      {
         var _loc1_:_us2761 = null;
         var _loc3_:int = 0;
         this._py12359._ta15622 = -1;
         var _loc2_:Array = this._im4627.stack;
         while(_loc3_ < _loc2_.length)
         {
            _loc1_ = this._im4627._cj6604(_loc3_);
            this._os12895(_loc1_._bh15168,_loc1_._xt8208,_loc1_.args,_loc1_._tx2113);
            _loc1_._tx2113 = _td11801._eq4750;
            _loc3_++;
         }
         if(this._gf968 != null)
         {
            this.addListeners();
         }
      }
      
      private function _os12895(param1:int, param2:int, param3:Array, param4:int = 1) : void
      {
         this._en3767 = param1;
         this._gf968 = _td11801._ok7277(this._en3767);
         if(this._gf968 == null)
         {
            return;
         }
         this._gf968._nc15336(this._py12359,this._gm13290,this._js7773,this._et2976,this._tv3848,this._cb14550,this._sk8948,this._bx3898,this._su4934,param3,this._im4627);
         this._gf968._fk1405(param4,param2);
         this._py12359._ta15622 = this._en3767;
      }
      
      public function _al12408(param1:int) : void
      {
         this._im4627._gb5302(param1);
         if(this._gf968 != null)
         {
            this._gf968._fk1405(_td11801._cc5175,this._en3767);
         }
         else
         {
            this._os12895(param1,param1,[],_td11801._cc5175);
         }
      }
      
      private function _vp10374(param1:_td11801) : void
      {
         this.destroy();
         this._gs4440();
      }
      
      private function _fa14023(param1:_xb9814) : void
      {
         switch(this._gf968._tx2113)
         {
            case _td11801._cc5175:
               this._vp10374(param1.target as _td11801);
               return;
            default:
               return;
         }
      }
      
      private function addListeners() : void
      {
         this._gf968.addEventListener(_td11801._id5353,this._fa14023);
      }
      
      private function removeListeners() : void
      {
         this._gf968.removeEventListener(_td11801._id5353,this._fa14023);
      }
   }
}

