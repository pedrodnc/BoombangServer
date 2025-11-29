package src.modules.login.choosePerson.Registro.InputFields
{
   import flash.display.MovieClip;
   import src.allData.texts.*;
   import src.modules.login.choosePerson.*;
   import src.modules.login.choosePerson.Registro.*;
   import src.utils.*;
   
   public class _bs8723 extends _vf2001
   {
      
      private static const _ck9850:uint = 8;
      
      private var _name:_oc1722;
      
      public function _bs8723(param1:MovieClip, param2:Boolean = false, param3:Function = null, param4:_oc1722 = null)
      {
         super(param1,param2,param3);
         this._name = param4;
         _ws13498(_ei10851._di3970,_ei10851._ik13685);
      }
      
      override protected function _vh750() : void
      {
         _uy13942(_ol5641._aq14051);
         _ny1164(_ol5641._qg11910);
         _yf12156(_vf2001._ra14588);
      }
      
      override protected function _ru3727() : void
      {
         _ny1164(_ol5641._mw7630);
         _yf12156(_vf2001.ERROR);
         if(_xm12217().length <= 0)
         {
            _yf12156(_vf2001._ra14588);
            return;
         }
         if(!_ii147._uj937(_xm12217()) || this._name._xm12217() == _xm12217() || getTextField().length < _ei10851._ut5697)
         {
            _yf12156(_vf2001.ERROR);
            _ny1164(_ol5641._mw7630);
            _uy13942(_ol5641._qg11910);
            _pj7103(_hh7911._lo12741);
            _cy431 = false;
         }
         else
         {
            _yf12156(_vf2001._sw10226);
            _uy13942(_ol5641._aq14051);
            _ny1164(_ol5641._qg11910);
            _pj7103(_hh7911.START);
            _cy431 = true;
         }
      }
   }
}

