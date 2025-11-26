package src.modules.login.choosePerson.Registro.InputFields
{
   import flash.display.MovieClip;
   import src.modules.login.choosePerson.*;
   import src.modules.login.choosePerson.Registro.*;
   import src.tv.boombang.commons.utils.*;
   
   public class _pj1121
   {
      
      private static const _cp5803:uint = 6;
      
      private var _mc:MovieClip;
      
      private var _wr8681:MovieClip;
      
      private var _ld7910:_vf2001;
      
      private var _qy7036:_vf2001;
      
      private var _pj7103:Function;
      
      private var _vq3553:Boolean = false;
      
      public function _pj1121(param1:MovieClip, param2:MovieClip, param3:Function = null)
      {
         super();
         this._mc = param1;
         this._wr8681 = param2;
         this._pj7103 = param3;
         this._ld7910 = new _vf2001(this._mc,false,this._ae3661,this._fj9108);
         this._ld7910._ny1164(_ol5641._qg11910);
         this._qy7036 = new _vf2001(this._wr8681,false,this._vd1098,this._hu10153);
         this._qy7036._ny1164(_ol5641._qg11910);
      }
      
      private function _fj9108() : void
      {
         this._jr4980(this._ld7910);
      }
      
      private function _hu10153() : void
      {
         this._jr4980(this._qy7036);
      }
      
      private function _ae3661() : void
      {
         this._fi10780(this._ld7910);
      }
      
      private function _vd1098() : void
      {
         this._fi10780(this._qy7036);
      }
      
      private function _fi10780(param1:_vf2001) : void
      {
         param1._ny1164(_ol5641._mw7630);
         param1._yf12156(_vf2001.ERROR);
         var _loc2_:String = param1._xm12217();
         if(_loc2_.length <= 0)
         {
            param1._yf12156(_vf2001._ra14588);
            return;
         }
         if(_kw5987._pv10123(_loc2_))
         {
            this._gy13002(param1);
            this._ac2441();
         }
         else
         {
            this._ib9390(param1);
            if(this._pj7103 != null)
            {
               this._pj7103(_hh7911._pl15757);
            }
         }
      }
      
      private function _ac2441() : void
      {
         if(Boolean(_kw5987._pv10123(this._ld7910._xm12217())) && Boolean(_kw5987._pv10123(this._qy7036._xm12217())))
         {
            if(this._ld7910._xm12217() == this._qy7036._xm12217())
            {
               this._gy13002(this._ld7910);
               this._gy13002(this._qy7036);
               this._pj7103(_hh7911.START);
               this._vq3553 = true;
            }
            else
            {
               this._ib9390(this._qy7036);
               this._vq3553 = false;
               if(this._pj7103 != null)
               {
                  this._pj7103(_hh7911._jd15567);
               }
            }
         }
      }
      
      public function _yj11716() : String
      {
         return this._ld7910._xm12217();
      }
      
      public function _lo12223() : Boolean
      {
         return this._vq3553;
      }
      
      private function _ib9390(param1:_vf2001) : void
      {
         param1._yf12156(_vf2001.ERROR);
         param1._ny1164(_ol5641._mw7630);
         param1._uy13942(_ol5641._qg11910);
      }
      
      private function _gy13002(param1:_vf2001) : void
      {
         param1._yf12156(_vf2001._sw10226);
         param1._ny1164(_ol5641._qg11910);
         param1._uy13942(_ol5641._aq14051);
      }
      
      private function _jr4980(param1:_vf2001) : void
      {
         param1._yf12156(_vf2001._ra14588);
         param1._ny1164(_ol5641._qg11910);
         param1._uy13942(_ol5641._aq14051);
      }
      
      public function destroy() : void
      {
         if(this._ld7910 != null)
         {
            this._ld7910.destroy();
            this._ld7910 = null;
         }
         if(this._qy7036 != null)
         {
            this._qy7036.destroy();
            this._qy7036 = null;
         }
         this._mc = null;
         this._wr8681 = null;
      }
   }
}

