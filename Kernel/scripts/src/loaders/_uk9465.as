package src.loaders
{
   import flash.display.MovieClip;
   
   public class _uk9465
   {
      
      private static const _ue3469:String = "getMovieClip";
      
      private static const _dr13834:String = "mcNormalLoading";
      
      private static const _pe13540:String = "mcConnectingLoading";
      
      private static const _cv3238:String = "mcNovedad1Loading";
      
      private static const _oe12530:String = "mcNovedad2Loading";
      
      private static const _xr3814:String = "mcNovedad3Loading";
      
      private static const _td5741:String = "mcNovedad4Loading";
      
      private static const _qn5898:String = "mcNovedad5Loading";
      
      private static const _ke15099:String = "mcNovedad6Loading";
      
      private static const _qr11694:String = "mcSanValentinLoading";
      
      private static const _yn10379:String = "mcPortalLoading";
      
      private static const _dg9384:String = "mcBarraLoading";
      
      private static const _ew14940:String = "mcBarraLoadingGaviota";
      
      private static const _qc12100:String = "mcBarraLoadingPez";
      
      private static const _fs4326:String = "mcPersonLoading";
      
      public static const _jb10279:int = 1;
      
      public static const _sn14671:int = 2;
      
      public static const _kr15339:int = 3;
      
      public static const _bs7751:int = 4;
      
      public static const _pk6883:int = 5;
      
      public static const _vs2452:int = 6;
      
      public static const _rm10798:int = 7;
      
      public static const _uy5624:int = 8;
      
      public static const _wy7779:int = 9;
      
      public static const _dd4789:int = 10;
      
      public static const _ud4331:int = 11;
      
      public static const _loadernl:int = 12;
      
      private var _cn1979:MovieClip;
      
      private var _pj9483:_br8483;
      
      private var _lx6566:_jr15810;
      
      private var visible:Boolean;
      
      private var _fs14584:int;
      
      private var _vw13338:String;
      
      private var _ts7118:int;
      
      private var _pf8675:int;
      
      private var _us6084:MovieClip;
      
      public function _uk9465(param1:MovieClip)
      {
         super();
         this._cn1979 = param1;
         this._bl5830 = _jb10279;
         this.visible = false;
         this._pf8675 = 0;
         this._fn7388 = 0;
      }
      
      public function _sr16022(param1:_br8483) : void
      {
         this._pj9483 = param1;
      }
      
      public function set _bl5830(param1:int) : void
      {
         this._fs14584 = param1;
         if(param1 == _jb10279)
         {
            switch(this._pf8675 % 3)
            {
               case 0:
                  this._fs14584 = _kr15339;
                  return;
               case 1:
                  this._fs14584 = _bs7751;
                  return;
               case 2:
                  this._fs14584 = _pk6883;
                  return;
               case 3:
                  this._fs14584 = _kr15339;
                  return;
               case 4:
                  this._fs14584 = _bs7751;
                  return;
               case 5:
                  this._fs14584 = _vs2452;
                  return;
            }
         }
      }
      
      public function _un6017(param1:int, param2:int) : void
      {
         if(this._lx6566 != null)
         {
            this._lx6566._un6017(param1,param2);
         }
      }
      
      public function set texto(param1:String) : void
      {
         this._vw13338 = param1;
         if(this._lx6566 != null)
         {
            this._lx6566._ue3985(param1);
         }
      }
      
      public function _hg4479() : void
      {
         if(this._lx6566 != null)
         {
            this._lx6566.destroy();
            this._lx6566 = null;
         }
      }
      
      public function show() : void
      {
         if(!this.visible)
         {
            this.visible = true;
            this._hg4479();
            switch(this._fs14584)
            {
               case _jb10279:
                  this._lx6566 = new _ap6277(this._cn1979[_ue3469](_qc12100));
                  this._lx6566.show();
                  break;
               case _sn14671:
                  this._lx6566 = new _rm11998(this._cn1979[_ue3469](_pe13540));
                  this._lx6566.show();
                  break;
               case _kr15339:
                  this._lx6566 = new _ap6277(this._cn1979[_ue3469](_ew14940));
                  this._lx6566.show();
                  break;
               case _bs7751:
                  this._lx6566 = new _ap6277(this._cn1979[_ue3469](_dg9384));
                  this._lx6566.show();
                  break;
               case _pk6883:
                  this._lx6566 = new _ap6277(this._cn1979[_ue3469](_qc12100));
                  this._lx6566.show();
                  break;
               case _vs2452:
                  this._lx6566 = new _rm11998(this._cn1979[_ue3469](_td5741));
                  this._lx6566._jc618(this._pj9483._pi359);
                  this._lx6566.show();
                  break;
               case _uy5624:
                  this._lx6566 = new _rm11998(this._cn1979[_ue3469](_qn5898));
                  this._lx6566._jc618(this._pj9483._qy16083);
                  this._lx6566.show();
                  break;
               case _wy7779:
                  this._lx6566 = new _rm11998(this._cn1979[_ue3469](_ke15099));
                  this._lx6566._jc618(this._pj9483._vs457);
                  this._lx6566.show();
                  break;
               case _dd4789:
                  this._lx6566 = new _rm11998(this._cn1979[_ue3469](_dr13834));
                  this._lx6566.show();
                  break;
               case _rm10798:
                  this._lx6566 = new _ur15702(this._cn1979[_ue3469](_yn10379));
                  this._lx6566.show();
                  break;
               case _ud4331:
                  this._lx6566 = new _eh1137(this._us6084);
                  this._lx6566.show();
            }
            ++this._pf8675;
         }
      }
      
      public function hide() : void
      {
         if(this.visible)
         {
            this.visible = false;
            if(this._lx6566 != null)
            {
               this._lx6566.destroy();
            }
         }
         this._bl5830 = _jb10279;
      }
      
      public function set _fn7388(param1:int) : void
      {
         this._ts7118 = param1;
         if(this._lx6566 != null)
         {
            this._lx6566._aj8898(param1);
         }
      }
      
      public function _wp11718(param1:MovieClip) : void
      {
         this._us6084 = param1;
      }
   }
}

