package src.modules.interfaz.fichaKeko.paneles
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.modules.interfaz._xt81056;
   import src.modules.interfaz.fichaKeko._kc6395;
   import src.modules.interfaz.fichaKeko._ls2671;
   import src.modules.interfaz.fichaKeko.booble._aw14744;
   import src.modules.interfaz.fichaKeko.fichaStatics.*;
   import src.modules.interfaz.fichaKeko.ninjaManager.*;
   import src.person.*;
   import src.utils.*;
   
   public class _yc11491 extends _pa7905
   {
      
      private static const _ta337:String = "mcSwapPage";
      
      private const _to14983:String = "mcIconoGorroToro";
      
      private const _hw5135:String = "mcIconoGorroCaca";
      
      private const _lx9233:String = "mcIconoGorroRana";
      
      private const _jr1533:String = "mcIconoGorroPanda";
      
      private const _jr1534:String = "mcIconoGorroCustom1";
      
      private const _jr1535:String = "mcIconoGorroCustom2";
      
      private const _jr1536:String = "mcIconoGorroCustom3";
      
      private const _jr1537:String = "mcIconoGorroCustom4";
      
      private const _jr1538:String = "mcIconoGorroCustom5";
      
      private const _jr1539:String = "mcIconoGorroCustom6";
      
      private const _tn4378:String = "mcIconoGorroConejo";
      
      private const _sm5226:String = "tfTituloComplementos";
      
      private var _jy4188:_ta2443;
      
      private var _cy15918:_xt81056;
      
      private var _ab7564:_ls2671;
      
      private var _xw5076:TextField;
      
      private var _wd9324:Array;
      
      private var _sr8386:_pn15182;
      
      public function _yc11491(param1:MovieClip, param2:MovieClip, param3:_ta2443, param4:_xt81056, param5:_aw14744, param6:_ls2671, param7:Function)
      {
         var _loc8_:int = 0;
         super(param1,param2,param5);
         var _loc9_:_ga7956 = _ga7956.getInstance();
         this._jy4188 = param3;
         this._cy15918 = param4;
         this._ab7564 = param6;
         this._wd9324 = new Array();
         this._sr8386 = new _pn15182(param2[_ta337],param7);
         _loc8_ = 0;
         while(_loc8_ < _loc9_._oq16154())
         {
            if(param2[_loc9_._oc7008(_loc8_)] != null)
            {
               this._wd9324.push(new _kk8961(_loc8_,this._jy4188,param2[_loc9_._oc7008(_loc8_)],this._cy15918));
            }
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < this._wd9324.length)
         {
            this._wd9324[_loc8_].addEventListener(MouseEvent.MOUSE_OVER,this._se5412,false,0,true);
            this._wd9324[_loc8_].addEventListener(MouseEvent.MOUSE_OUT,this._rr8320,false,0,true);
            _loc8_++;
         }
         this._xw5076 = TextField(param2.getChildByName(this._sm5226));
         if(this._xw5076 != null)
         {
            _yq8362._xl9503(this._xw5076,param6._ly6133);
         }
      }
      
      override public function _db5584(param1:_kc6395) : void
      {
         super._db5584(param1);
         this._sr8386._dn10392(param1);
      }
      
      override public function _hu12389() : void
      {
         super._hu12389();
      }
      
      override public function destroy() : void
      {
         var _loc1_:int = 0;
         if(this._sr8386 != null)
         {
            this._sr8386.destroy();
            this._sr8386 = null;
         }
         super.destroy();
         while(_loc1_ < this._wd9324.length)
         {
            this._wd9324[_loc1_].removeEventListener(MouseEvent.MOUSE_OVER,this._se5412);
            this._wd9324[_loc1_].removeEventListener(MouseEvent.MOUSE_OUT,this._rr8320);
            _loc1_++;
         }
      }
      
      public function _ov12579() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._wd9324.length)
         {
            this._wd9324[_loc1_]._su15800();
            _loc1_++;
         }
      }
      
      public function _iv3666() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._wd9324.length)
         {
            this._wd9324[_loc1_]._iv3666();
            _loc1_++;
         }
      }
      
      private function _se5412(param1:MouseEvent) : void
      {
         var _loc3_:_kk8961 = param1.target as _kk8961;
         if(_loc3_)
         {
            var _loc2_:String = "complement.help." + _loc3_._cj5718;
            _vc4824._qg5125(null);
         }
      }
      
      private function _rr8320(param1:Event) : void
      {
         _vc4824._tj8775();
      }
   }
}

