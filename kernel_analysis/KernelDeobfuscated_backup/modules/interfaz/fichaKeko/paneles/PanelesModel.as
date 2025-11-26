package src.modules.interfaz.fichaKeko.paneles
{
   import flash.display.MovieClip;
   import src.allData.*;
   import src.modules.interfaz._xt81056;
   import src.modules.interfaz.fichaKeko._kc6395;
   import src.modules.interfaz.fichaKeko.booble._aw14744;
   import src.modules.interfaz.fichaKeko.interacciones.*;
   import src.person.*;
   
   public class _yy2794 extends _pa7905
   {
      
      private static const _pm11907:String = "mcEmoticon";
      
      public static const _kc13660:int = 8;
      
      public static const _ky12016:int = 0;
      
      public static const _ms12376:int = 1;
      
      public static const _sm7414:int = 2;
      
      public static const _rv15822:int = 3;
      
      public static const _fy4507:int = 4;
      
      public static const _ui14003:int = 5;
      
      public static const _eh2655:int = 6;
      
      public static const _oe11814:int = 7;
      
      private var _gw3116:Array;
      
      private var _fr6840:_ta2443;
      
      private var _dv14621:_xt81056;
      
      public function _yy2794(param1:MovieClip, param2:MovieClip, param3:_ta2443, param4:_xt81056, param5:_aw14744)
      {
         var _loc6_:_ag8921 = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         super(param1,param2,param5);
         this._fr6840 = param3;
         this._dv14621 = param4;
         this._gw3116 = new Array();
         while(_loc8_ < _kc13660)
         {
            _loc7_ = new Object();
            _loc7_.id = _loc8_;
            if(_loc8_ == _fy4507)
            {
               _loc6_ = new _xr4395(param3._md8722,param2[_pm11907 + _loc8_],this._yf249,null,null,_loc7_);
            }
            else
            {
               _loc6_ = new _ag8921(param3._md8722,param2[_pm11907 + _loc8_],this._yf249,null,null,_loc7_);
            }
            this._gw3116.push(_loc6_);
            _loc8_++;
         }
         this._ha80();
      }
      
      override public function _db5584(param1:_kc6395) : void
      {
         super._db5584(param1);
         this._ha80();
      }
      
      override public function _hu12389() : void
      {
         super._hu12389();
      }
      
      override public function destroy() : void
      {
         var _loc1_:_ag8921 = null;
         super.destroy();
         for each(_loc1_ in this._gw3116)
         {
            _loc1_.destroy();
            _loc1_ = null;
         }
         this._gw3116.length = 0;
      }
      
      private function _yf249(param1:_ag8921, param2:Object) : void
      {
         if(!this._fr6840._yi6398())
         {
            return;
         }
         var _loc3_:Array = [_ga7956._ft11477,_ga7956._pq3567,_ga7956._hh6084,_ga7956._we2906,_ga7956._gd13066,_ga7956._lx10506,_ga7956._li10585,_ga7956._lo13715];
         this._dv14621._gs5811(this._fr6840._md8722._jr9311,_loc3_[param2.id]);
      }
      
      public function _kc1802() : void
      {
         var _loc1_:_ag8921 = null;
         for each(_loc1_ in this._gw3116)
         {
            _loc1_._kc1802(this._fr6840._md8722);
         }
      }
      
      override public function _ha80() : void
      {
         var _loc1_:_ag8921 = null;
         for each(_loc1_ in this._gw3116)
         {
            _loc1_.setState(_hv12530.getInstance()._bo414);
         }
      }
   }
}

