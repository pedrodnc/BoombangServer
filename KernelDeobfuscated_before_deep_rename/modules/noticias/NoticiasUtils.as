package src.modules.noticias
{
   import flash.display.MovieClip;
   import flash.external.*;
   import flash.utils.*;
   import src.modules.antitimos.fichas.*;
   import src.modules.noticias.templates.*;
   import src.multiuser.*;
   import src.utils.fichas.*;
   
   public class NoticiasUtils extends MovieClip
   {
      
      private static var _go12237:Dictionary;
      
      public static const _ue3469:String = "getMovieClip";
      
      public static const _ot13045:String = "_mcFichaSelec";
      
      public static const _ij9064:String = "_mcFichaNoticia_";
      
      private static const _qt12822:String = "mcNewNews";
      
      private static const _rp4029:String = "mostrarNews";
      
      private static const _jw13689:String = "ocultarNews";
      
      public static const _cy15219:int = -1;
      
      public static const _sk13535:int = 1;
      
      public static const _bx11784:int = 2;
      
      public static const _ef594:int = 3;
      
      public static const _uh11048:int = 1;
      
      public static const _ey11541:int = 2;
      
      public static const _dm4874:int = 3;
      
      private static const _aq10052:int = 690;
      
      private static const _jj6521:int = 8;
      
      private static const _vf12207:int = 1;
      
      private static const _kl15432:int = 4;
      
      private static var _bw14481:Boolean = false;
      
      public static const _gm2463:int = 0;
      
      public static const _bk7816:int = 1;
      
      public static const _jg7871:int = 2;
      
      public static const _cf6818:int = 3;
      
      private static const _jn6400:int = 1000;
      
      private static const _mx15645:int = 1000 * 60 * 30;
      
      private var _kd3760:MovieClip;
      
      private var _re3848:int = -1;
      
      private var _sl11877:NoticiasView;
      
      private var _ye10777:TemplatesView;
      
      private var _xb2002:NoticiasController;
      
      private var _mw12019:MovieClip;
      
      private var _ey200:Boolean;
      
      private var _mb398:FichasController;
      
      private var _qh1795:Function;
      
      private var _dp15087:int;
      
      private var _sv5325:int;
      
      private var _ut11943:uint = 0;
      
      private var _vp13389:uint = 1;
      
      private var _gc8670:uint = 0;
      
      private var _ci11103:int;
      
      private var _ff7865:int;
      
      public function NoticiasUtils(param1:MovieClip)
      {
         super();
         if(param1 != null)
         {
            this._kd3760 = param1;
         }
         if(_go12237 == null)
         {
            _go12237 = new Dictionary();
         }
         this._xb2002 = new NoticiasController();
         this._xb2002.addEventListener(NoticiasEvents._mc6789,this._ne9169,false,0,true);
         this._xb2002.addEventListener(NoticiasEvents._wi8818,this._po4108,false,0,true);
         this._xb2002.addEventListener(NoticiasEvents._dw9271,this._qm731,false,0,true);
         this._ci11103 = getTimer();
         this._ff7865 = getTimer();
      }
      
      public function get status() : int
      {
         return this._re3848;
      }
      
      public function destroy() : void
      {
         this._fl8245();
         this._xb2002.removeEventListener(NoticiasEvents._mc6789,this._ne9169);
         this._xb2002.removeEventListener(NoticiasEvents._wi8818,this._po4108);
         this._xb2002.removeEventListener(NoticiasEvents._dw9271,this._qm731);
         this._xb2002.destroy();
         this._xb2002 = null;
      }
      
      public function _fl8245() : Boolean
      {
         if(this._mb398 != null)
         {
            this._mb398.destroy();
            this._mb398 = null;
            return true;
         }
         return false;
      }
      
      public function _db5584(param1:int, param2:int) : Boolean
      {
         if(!this._lx15673)
         {
            return false;
         }
         this._ey200 = true;
         this._dp15087 = param1;
         this._sv5325 = param2;
         this._fl8245();
         this._ut11943 = 0;
         this._xo11249(_ef594);
         return true;
      }
      
      public function _hu12389() : Boolean
      {
         if(this._mw12019 != null)
         {
            this._mw12019[_qt12822].gotoAndStop(_jw13689);
         }
         if(this._fl8245())
         {
            if(this._qh1795 != null)
            {
               this._qh1795();
            }
            return true;
         }
         return false;
      }
      
      public function _sq6775(param1:MovieClip) : void
      {
         this._mw12019 = param1;
         this._ey200 = false;
         this._xa7741(_ey11541,0);
      }
      
      private function _jn2708() : void
      {
         var _loc1_:MovieClip = this._kd3760[_ue3469](_ot13045);
         var _loc2_:FichasUtils = new FichasUtils(null,[""]);
         this._mb398 = new FichasView(_loc1_,_loc2_,null,null,this._hu12389);
         if(this._sl11877 != null)
         {
            this._sl11877._mn15453(_loc1_);
            if(this._ut11943 == 0)
            {
               this._sl11877._bd12836();
            }
            this._mb398._db5584(_aq10052,_jj6521);
         }
      }
      
      private function _dj8488() : void
      {
         var _loc1_:MovieClip = this._kd3760[_ue3469](_ij9064 + this._ye10777._qy4653);
         var _loc2_:FichasUtils = new FichasUtils(null,[""]);
         this._mb398 = new FichasView(_loc1_,_loc2_,null,null,this._hu12389);
         if(this._ye10777 != null)
         {
            this._ye10777._xo7981(_loc1_);
            this._mb398._db5584(_aq10052,_jj6521);
         }
      }
      
      private function _xa7741(param1:int, param2:int) : void
      {
         if(_go12237[param2] != null && (_go12237[param2] as NoticiasView)._kg8871 == param1 && this._ff7865 != this._ci11103 && getTimer() < this._ff7865 + _mx15645)
         {
            this._bk922(_go12237[param2]);
         }
         else
         {
            if(getTimer() > this._ff7865 + _mx15645)
            {
               _go12237 = new Dictionary();
            }
            this._xb2002._bp16095(param1,param2);
         }
      }
      
      private function _bk922(param1:NoticiasView, param2:Boolean = false) : void
      {
         if(this._sl11877 != null)
         {
            this._sl11877._cj7282();
            this._sl11877 = null;
         }
         this._sl11877 = param1;
         if(this._mw12019 != null && param2 || Boolean(_bw14481))
         {
            this._mw12019[_qt12822].gotoAndPlay(_rp4029);
            _bw14481 = true;
         }
         else
         {
            this._mw12019[_qt12822].gotoAndStop(_jw13689);
         }
         if(this._ey200)
         {
            _bw14481 = false;
            this._xo11249(_sk13535);
         }
      }
      
      private function _ne9169(param1:NoticiasEvents) : void
      {
         var _loc7_:int = 0;
         param1.stopImmediatePropagation();
         var _loc2_:Array = param1._lv9976;
         var _loc3_:int = int(_loc2_.shift());
         var _loc4_:Boolean = Boolean(int(_loc2_.shift()));
         var _loc5_:uint = uint(_loc2_.shift());
         var _loc6_:Array = new Array(_loc5_);
         while(_loc7_ < _loc5_)
         {
            _loc6_[_loc7_] = SocketManager._go4983(_loc2_.shift());
            _loc7_++;
         }
         var _loc8_:NoticiasView = new NoticiasView(_loc3_,_loc5_,_loc6_,this._ik5069,this._ce12242,this._sr8330);
         _go12237[this._ut11943] = _loc8_;
         this._bk922(_go12237[this._ut11943],_loc4_);
      }
      
      private function _ce12242() : void
      {
         ++this._ut11943;
         this._xa7741(_ey11541,this._ut11943);
      }
      
      private function _sr8330() : void
      {
         if(this._ut11943 > 0)
         {
            --this._ut11943;
         }
         else
         {
            this._ut11943 = 0;
         }
         this._xa7741(_ey11541,this._ut11943);
      }
      
      private function _ik5069(param1:int, param2:int) : void
      {
         ExternalInterface.call("openBlog");
      }
      
      private function _po4108(param1:NoticiasEvents) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:Array = param1._lv9976;
         var _loc3_:Templates = new Templates();
         _loc3_._kg8871 = int(_loc2_.shift());
         _loc3_._tq12374 = int(_loc2_.shift());
         _loc3_._sj3261 = String(_loc2_.shift());
         _loc3_.texto = String(_loc2_.shift());
         _loc3_._ak10786 = String(_loc2_.shift());
         _loc3_._qy4653 = int(_loc2_.shift());
         var _loc4_:String = _loc2_.shift();
         if(_loc4_ != null && _loc4_.length > 0)
         {
            _loc3_._xt2092 = SocketManager._go4983(_loc4_);
         }
         if(this._ye10777 != null)
         {
            this._ye10777.destroy();
            this._ye10777 = null;
         }
         _loc3_._vw8300 = this._vv9267;
         this._ye10777 = Templates._kw11300(_loc3_);
         this._xo11249(_bx11784);
      }
      
      private function _vv9267() : void
      {
         if(!this._lx15673)
         {
            return;
         }
         this._xo11249(_ef594);
      }
      
      private function _qm731(param1:NoticiasEvents) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:Array = param1._lv9976;
         if(_loc2_.length <= 0)
         {
            return;
         }
         switch(int(_loc2_.shift()))
         {
            case _cf6818:
               return;
            case _bk7816:
               if(this._sl11877 != null && this._ut11943 > 0)
               {
                  --this._ut11943;
                  this._sl11877._ue12701();
               }
               return;
            case _gm2463:
               return;
            case _jg7871:
               return;
            default:
               return;
         }
      }
      
      public function _xo11249(param1:int) : void
      {
         this._fl8245();
         this._re3848 = param1;
         switch(param1)
         {
            case _cy15219:
               this._ut11943 = 0;
               return;
            case _sk13535:
               this._jn2708();
               return;
            case _bx11784:
               this._dj8488();
               return;
            case _ef594:
               this._xa7741(_ey11541,this._ut11943);
               return;
            default:
               return;
         }
      }
      
      private function get _lx15673() : Boolean
      {
         if(getTimer() > this._ci11103 + _jn6400)
         {
            this._ci11103 = getTimer();
            return true;
         }
         return false;
      }
   }
}

