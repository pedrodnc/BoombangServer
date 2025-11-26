package src.modules.interfaz.mochila
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.mochila.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class MochilaModel
   {
      
      private static const _an5928:String = "mcBarraSet";
      
      private static const _jf5276:String = "mcIconoSel";
      
      private static const _gu10471:String = "mcClose";
      
      private static const _ri15395:String = "mcFichaBaseFiltro";
      
      private static const _tq1325:String = "tfText";
      
      private static const _xw15570:String = "tfTituloSet";
      
      private static const _sl6078:int = 100;
      
      private static const _ed5265:String = "rollout";
      
      private static const _sg6807:String = "rollover";
      
      private static const _qr7848:String = "press";
      
      private var _ut4648:MovieClip;
      
      private var _ki1682:MochilaModel;
      
      private var _im12039:MochilaModel;
      
      private var _st10960:int;
      
      private var _rr3911:CommoncomponentsController;
      
      private var _af7534:Array;
      
      public function MochilaModel(param1:MochilaModel, param2:MochilaModel, param3:MovieClip)
      {
         super();
         this._ut4648 = param3;
         this._ki1682 = param1;
         this._im12039 = param2;
         this._af7534 = new Array();
         this._ma13571();
         this._rr3911 = new CommoncomponentsController(param3[_gu10471],this._hu12389);
         UtilsUtils._xl9503(param3[_xw15570],param2._jt11415);
         param3.visible = false;
      }
      
      public static function _iw12439(param1:int) : int
      {
         switch(param1)
         {
            case MochilaModel._mg8184:
               return 0;
            case MochilaModel._ep13336:
               return 1;
            case MochilaModel._vk8921:
            case MochilaModel._kw11590:
            case MochilaModel._rs12407:
            case MochilaModel._oc15894:
            case MochilaModel._ku8543:
            case MochilaModel._ro3505:
            case MochilaModel._ku7782:
               return param1;
            case MochilaModel._jt7417:
            case MochilaModel._qr14554:
            case MochilaModel._yi1411:
            case MochilaModel._do3198:
            case MochilaModel._vf11580:
               return param1 - 1;
            default:
               return param1 + 1;
         }
      }
      
      public static function _qw8665(param1:int) : int
      {
         switch(param1)
         {
            case 0:
               return MochilaModel._mg8184;
            case 1:
               return MochilaModel._ep13336;
            case MochilaModel._vk8921:
            case MochilaModel._kw11590:
            case MochilaModel._rs12407:
            case MochilaModel._oc15894:
            case MochilaModel._ku8543:
            case MochilaModel._ro3505:
               return param1;
            case MochilaModel._ku7782:
            case MochilaModel._jt7417:
            case MochilaModel._qr14554:
            case MochilaModel._yi1411:
            case MochilaModel._do3198:
            case MochilaModel._vf11580:
               return param1 + 1;
            default:
               return param1 - 1;
         }
      }
      
      public function _ma13571() : void
      {
         this._st10960 = 0;
      }
      
      public function _db5584() : void
      {
         if(this._ut4648.visible == false)
         {
            this._ut4648.visible = true;
            this._xm7394();
            this._ej3288();
            this._he10985();
         }
         else
         {
            this._hu12389();
         }
      }
      
      public function _hu12389() : void
      {
         if(this._ut4648.visible == true)
         {
            this._ut4648.visible = false;
            this._fn8838();
            this._ts4259();
         }
      }
      
      public function destroy() : void
      {
         this._hu12389();
         if(this._rr3911 != null)
         {
            this._rr3911.destroy();
            this._rr3911 = null;
         }
      }
      
      public function get _lx15907() : MovieClip
      {
         return this._ut4648;
      }
      
      private function _ej3288() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:CommoncomponentsView = null;
         var _loc3_:int = 0;
         this._af7534 = new Array();
         while(_loc3_ < _sl6078)
         {
            _loc1_ = MovieClip(this._ut4648[_an5928 + _loc3_]);
            _loc2_ = new CommoncomponentsView(_loc1_,this._rw5376,this._im12039._hs11452[_loc3_],_loc3_);
            _loc2_._ct5529 = this._ew4224;
            _loc2_._ix10516 = this._ib13309;
            this._af7534.push(_loc2_);
            _loc3_++;
         }
      }
      
      private function _ts4259() : void
      {
         var _loc1_:CommoncomponentsView = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._af7534.length)
         {
            _loc1_ = this._af7534[_loc2_];
            if(_loc1_ != null)
            {
               _loc1_.destroy();
               _loc1_ = null;
            }
            _loc2_++;
         }
         this._af7534.length = 0;
      }
      
      private function _or5636(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function _rw5376(param1:CommoncomponentsView) : void
      {
         var _loc2_:int = param1.id;
         if(_loc2_ != this._st10960)
         {
            this._st10960 = _loc2_;
            this._he10985();
            MovieClip(this._ut4648[_jf5276]).gotoAndStop(this._st10960 + 1);
            this._ki1682._is11991(_qw8665(_loc2_),-1);
            this._ki1682._eu383();
         }
      }
      
      private function _ew4224(param1:CommoncomponentsView) : void
      {
         var _loc2_:int = param1.id;
         if(_loc2_ != this._st10960)
         {
            MovieClip(this._ut4648[_jf5276]).gotoAndStop(_loc2_ + 1);
         }
      }
      
      private function _ib13309(param1:CommoncomponentsView) : void
      {
         var _loc2_:int = param1.id;
         if(_loc2_ != this._st10960)
         {
            MovieClip(this._ut4648[_jf5276]).gotoAndStop(this._st10960 + 1);
         }
      }
      
      private function _he10985() : void
      {
         var _loc1_:CommoncomponentsView = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._af7534.length)
         {
            _loc1_ = CommoncomponentsView(this._af7534[_loc2_]);
            if(_loc1_ != null)
            {
               _loc1_.selected = false;
            }
            _loc2_++;
         }
         _loc1_ = CommoncomponentsView(this._af7534[this._st10960]);
         if(_loc1_ != null)
         {
            _loc1_.selected = true;
         }
      }
      
      public function _ca9900() : void
      {
         this._st10960 = 0;
         this._he10985();
         MovieClip(this._ut4648[_jf5276]).gotoAndStop(this._st10960 + 1);
      }
      
      public function _tl9140() : void
      {
         this._st10960 = -1;
         this._he10985();
         MovieClip(this._ut4648[_jf5276]).gotoAndStop(this._st10960 + 1);
      }
      
      private function _xm7394() : void
      {
         MovieClip(this._ut4648[_ri15395]).addEventListener(MouseEvent.MOUSE_DOWN,this._or5636);
      }
      
      private function _fn8838() : void
      {
         MovieClip(this._ut4648[_ri15395]).removeEventListener(MouseEvent.MOUSE_DOWN,this._or5636);
      }
   }
}

