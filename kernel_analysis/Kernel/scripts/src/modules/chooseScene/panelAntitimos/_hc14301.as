package src.modules.chooseScene.panelAntitimos
{
   import flash.display.MovieClip;
   import src.modules.antitimos._aq7621;
   import src.modules.antitimos.fichas.*;
   import src.modules.chooseScene._nw11343;
   import src.modules.chooseScene.panelMariquita._ty11551;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.core.communications.*;
   import src.utils.fichas.*;
   
   public class _hc14301
   {
      
      public static const _ue3469:String = "getMovieClip";
      
      public static const _cp12317:String = "mcFichaInicio_";
      
      public static const _cy1333:String = "mcFichaFinalizado_";
      
      public static const _ug11873:String = "mcFichaFinalizadoIncorrecto_";
      
      public static const _cy15219:int = -1;
      
      public static const _wj8144:int = 1;
      
      public static const _ox547:int = 4;
      
      public static const _qm2540:int = 7;
      
      private static const _vn2045:int = 75;
      
      private static const _rb5286:int = 261;
      
      private static const _rt13765:int = 755;
      
      private static const _or148:int = 4;
      
      private static const _vg6260:String = "tfMail";
      
      private var _rq14600:MovieClip;
      
      private var _re3848:int = -1;
      
      private var _gy10361:_nw11343;
      
      private var _pg10414:_ty11551;
      
      private var _km5026:Function;
      
      private var _qh1795:Function;
      
      private var _mb398:_wq1414;
      
      private var _dp15087:int;
      
      private var _sv5325:int;
      
      public function _hc14301(param1:MovieClip, param2:_nw11343, param3:_ty11551, param4:_aq7621, param5:Function)
      {
         super();
         this._rq14600 = param1;
         this._qh1795 = param5;
         this._gy10361 = param2;
         this._pg10414 = param3;
         this._xo11249(_cy15219);
      }
      
      public function get status() : int
      {
         return this._re3848;
      }
      
      public function destroy() : void
      {
         _kr10933._mw12849(_te13472._ai13635,this._sk542);
         this._hu12389();
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
      
      public function _hu12389() : Boolean
      {
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
      
      public function _db5584(param1:int, param2:int, param3:Object) : Boolean
      {
         this._dp15087 = param1;
         this._sv5325 = param2;
         this._fl8245();
         _kr10933._xo2736(_te13472._ai13635,this._sk542);
         this._xo11249(_wj8144);
         this._km5026 = param3._km5026;
         return true;
      }
      
      protected function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = int(param1._qp16092(1));
         if(_loc3_ == _te13472._fk9902)
         {
            _loc2_ = int(param1.items[0]);
            if(_loc2_ == _kr10933._ad11893)
            {
               this._xo11249(_ox547);
            }
            else
            {
               this._xo11249(_qm2540);
            }
         }
      }
      
      private function _ns6583() : void
      {
         var _loc1_:MovieClip = this._rq14600[_ue3469](_cp12317);
         var _loc2_:_ox15379 = new _ox15379("",[this._gy10361._qv5840]);
         this._mb398 = new _wd4266(_loc1_,_loc2_,this._pg10414,this._gy10361,this._se15530,this._gy10361._qv5840,null,"");
         this._mb398._db5584(_vn2045,_rb5286);
      }
      
      private function _se15530() : void
      {
         _ld5065._uu10358();
      }
      
      private function _mj5915() : void
      {
         var _loc1_:MovieClip = this._rq14600[_ue3469](_cy1333);
         var _loc2_:_ox15379 = new _ox15379("",[this._gy10361._ep12449]);
         this._mb398 = new _wd4266(_loc1_,_loc2_,this._pg10414,this._gy10361,null,"",null,"");
         this._mb398._db5584(_rt13765,_or148);
         this._pg10414._hu12389();
      }
      
      private function _eq1328() : void
      {
         var _loc1_:MovieClip = this._rq14600[_ue3469](_ug11873);
         var _loc2_:_ox15379 = new _ox15379("",[this._gy10361._ro687]);
         this._mb398 = new _wd4266(_loc1_,_loc2_,this._pg10414,this._gy10361,null,"",null,"");
         this._mb398._db5584(_rt13765,_or148);
         this._pg10414._hu12389();
      }
      
      public function _xo11249(param1:int) : void
      {
         this._fl8245();
         this._re3848 = param1;
         switch(param1)
         {
            case _cy15219:
               this._pg10414._hu12389();
               return;
            case _wj8144:
               this._ns6583();
               return;
            case _ox547:
               this._mj5915();
               return;
            case _qm2540:
               this._eq1328();
               return;
            default:
               return;
         }
      }
   }
}

