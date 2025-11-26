package src.modules.login.choosePerson.Registro.InputFields
{
   import flash.display.MovieClip;
   import src.modules.login.choosePerson.*;
   import src.modules.login.choosePerson.Registro.*;
   import src.tv.boombang.commons.utils.*;
   
   public class InputfieldsUtils
   {
      
      private static const _cp5803:uint = 6;
      
      private var _mc:MovieClip;
      
      private var _wr8681:MovieClip;
      
      private var _ld7910:RegistroView;
      
      private var _qy7036:RegistroView;
      
      private var _pj7103:Function;
      
      private var isEnabled:Boolean = false;
      
      public function InputfieldsUtils(param1:MovieClip, param2:MovieClip, param3:Function = null)
      {
         super();
         this._mc = param1;
         this._wr8681 = param2;
         this._pj7103 = param3;
         this._ld7910 = new RegistroView(this._mc,false,this._ae3661,this._fj9108);
         this._ld7910._ny1164(RegistroModel._qg11910);
         this._qy7036 = new RegistroView(this._wr8681,false,this._vd1098,this._hu10153);
         this._qy7036._ny1164(RegistroModel._qg11910);
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
      
      private function _fi10780(param1:RegistroView) : void
      {
         param1._ny1164(RegistroModel._mw7630);
         param1._yf12156(RegistroView.ERROR);
         var count:String = param1.getString();
         if(count.length <= 0)
         {
            param1._yf12156(RegistroView.textString2);
            return;
         }
         if(UtilsModel._pv10123(count))
         {
            this._gy13002(param1);
            this.start();
         }
         else
         {
            this._ib9390(param1);
            if(this._pj7103 != null)
            {
               this._pj7103(Chooseperson.count11);
            }
         }
      }
      
      private function start() : void
      {
         if(Boolean(UtilsModel._pv10123(this._ld7910.getString())) && Boolean(UtilsModel._pv10123(this._qy7036.getString())))
         {
            if(this._ld7910.getString() == this._qy7036.getString())
            {
               this._gy13002(this._ld7910);
               this._gy13002(this._qy7036);
               this._pj7103(Chooseperson.START);
               this.isEnabled = true;
            }
            else
            {
               this._ib9390(this._qy7036);
               this.isEnabled = false;
               if(this._pj7103 != null)
               {
                  this._pj7103(Chooseperson.count9);
               }
            }
         }
      }
      
      public function getString() : String
      {
         return this._ld7910.getString();
      }
      
      public function _lo12223() : Boolean
      {
         return this.isEnabled;
      }
      
      private function _ib9390(param1:RegistroView) : void
      {
         param1._yf12156(RegistroView.ERROR);
         param1._ny1164(RegistroModel._mw7630);
         param1._uy13942(RegistroModel._qg11910);
      }
      
      private function _gy13002(param1:RegistroView) : void
      {
         param1._yf12156(RegistroView.textString3);
         param1._ny1164(RegistroModel._qg11910);
         param1._uy13942(RegistroModel._aq14051);
      }
      
      private function _jr4980(param1:RegistroView) : void
      {
         param1._yf12156(RegistroView.textString2);
         param1._ny1164(RegistroModel._qg11910);
         param1._uy13942(RegistroModel._aq14051);
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

