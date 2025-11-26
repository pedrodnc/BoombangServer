package src.modules.login.choosePerson.Registro.InputFields
{
   import flash.display.MovieClip;
   import src.allData.texts.*;
   import src.modules.login.choosePerson.*;
   import src.modules.login.choosePerson.Registro.*;
   import src.utils.*;
   
   public class _ac2777 extends _vf2001
   {
      
      private static const _qh5463:int = 13;
      
      private static const _uh6073:int = 1;
      
      private static const _jv4203:int = 60;
      
      private var _mn12091:_oo3116;
      
      private var _xq16003:Array;
      
      public function _ac2777(param1:MovieClip, param2:Boolean = false, param3:Function = null, param4:_oo3116 = null, param5:Array = null)
      {
         super(param1,param2,param3);
         this._mn12091 = param4;
         this._xq16003 = param5;
         _ws13498(_ei10851._cv15830,_ei10851._ne10653);
      }
      
      override protected function _vh750() : void
      {
         _ny1164(_ol5641._qg11910);
         _uy13942(_ol5641._aq14051);
         _yf12156(_vf2001._ra14588);
      }
      
      override protected function _ru3727() : void
      {
         _cy431 = false;
         _ny1164(_ol5641._mw7630);
         _yf12156(_vf2001.ERROR);
         if(this._xq16003 == null || this._xq16003.length < 2)
         {
            return;
         }
         if(_xm12217().length <= 0)
         {
            _yf12156(_vf2001._ra14588);
            return;
         }
         var _loc1_:int = int(_xm12217());
         if(_loc1_ < _uh6073 || _loc1_ > _jv4203)
         {
            _yf12156(_vf2001.ERROR);
            _pj7103(_hh7911._mc2927);
            _ny1164(_ol5641._mw7630);
            _uy13942(_ol5641._qg11910);
            return;
         }
         _yf12156(_vf2001._sw10226);
         if(_loc1_ <= _qh5463)
         {
            _yq8362._xl9503(this._xq16003[0],this._mn12091._hq13265);
            _yq8362._xl9503(this._xq16003[1],this._mn12091._km793);
            _pj7103(_hh7911._xb15106);
            _ny1164(_ol5641._mw7630);
            _uy13942(_ol5641._qg11910);
         }
         else
         {
            _ny1164(_ol5641._qg11910);
            _uy13942(_ol5641._aq14051);
            _yq8362._xl9503(this._xq16003[0],this._mn12091._bm2876);
            _yq8362._xl9503(this._xq16003[1],this._mn12091._jv4074);
            _pj7103(_hh7911.START);
         }
         _cy431 = true;
      }
   }
}

