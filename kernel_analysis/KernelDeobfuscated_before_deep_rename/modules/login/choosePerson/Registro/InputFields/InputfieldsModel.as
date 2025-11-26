package src.modules.login.choosePerson.Registro.InputFields
{
   import flash.display.MovieClip;
   import src.allData.texts.*;
   import src.modules.login.choosePerson.*;
   import src.modules.login.choosePerson.Registro.*;
   import src.tv.boombang.application.user.gui.windows.changeNickName.*;
   import src.utils.*;
   import src.utils.controlIngTextos.*;
   
   public class InputfieldsModel extends RegistroView
   {
      
      private var _sx9076:ControlingtextosUtils;
      
      private var _ul12329:ChangenicknameView;
      
      public function InputfieldsModel(param1:MovieClip, param2:Boolean = false, param3:Function = null)
      {
         super(param1,param2,param3);
         _ws13498(TextLocalizer._qe9613,TextLocalizer._cb8664);
         this._sx9076 = new ControlingtextosUtils(getTextField(),121);
         this._ul12329 = new ChangenicknameView(param1);
         this._ul12329.addEventListener(ChangenicknameView._yg5388,this.setName);
         param1.addChild(this._ul12329);
      }
      
      override protected function _vh750() : void
      {
         this._ul12329.destroy();
         _ny1164(RegistroModel._qg11910);
         _uy13942(RegistroModel._aq14051);
         _yf12156(RegistroView._ra14588);
      }
      
      public function _ay3155(param1:Array) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(param1 != null)
         {
            _loc2_ = [];
            _loc3_ = _xm12217();
            _loc4_ = 0;
            while(_loc4_ < param1.length)
            {
               if(ControlingtextosUtils._nr8915(getTextField(),param1[_loc4_],92))
               {
                  _loc2_.push(param1[_loc4_]);
               }
               _loc4_++;
            }
            _xl9503(_loc3_);
         }
         if(_loc2_.length > 0)
         {
            this._ul12329.create("",_loc2_,4,false);
         }
      }
      
      override protected function _ru3727() : void
      {
         var _loc1_:String = null;
         _ny1164(RegistroModel._mw7630);
         _yf12156(RegistroView.ERROR);
         while(!ControlingtextosUtils._nr8915(getTextField(),_xm12217(),92))
         {
            _loc1_ = _xm12217();
            _xl9503(_loc1_.slice(0,-1));
         }
         if(_xm12217().length <= 0)
         {
            _yf12156(RegistroView._ra14588);
            return;
         }
         _yf12156(RegistroView._hv1902);
         _ny1164(RegistroModel._qg11910);
         _uy13942(RegistroModel._aq14051);
         if(_pj7103 == null)
         {
            return;
         }
         if(UtilsUtils._bg5268(_xm12217()) != _xm12217())
         {
            this._vl2734();
            _pj7103(Chooseperson._bq15038);
         }
         else
         {
            _pj7103(Chooseperson._cq353,_xm12217());
         }
      }
      
      public function _vl2734() : void
      {
         _ny1164(RegistroModel._mw7630);
         _uy13942(RegistroModel._qg11910);
         _yf12156(RegistroView.ERROR);
         _cy431 = false;
      }
      
      public function _bx723() : void
      {
         _yf12156(RegistroView._sw10226);
         _ny1164(RegistroModel._qg11910);
         _uy13942(RegistroModel._aq14051);
         _pj7103(Chooseperson.START);
         _cy431 = true;
      }
      
      public function setName(param1:ChangenicknameView) : void
      {
         _xl9503(param1.name);
         this._ru3727();
      }
      
      override public function destroy() : void
      {
         this._ul12329.removeEventListener(ChangenicknameView._yg5388,this.setName);
         this._ul12329 = null;
         this._sx9076.destroy();
         super.destroy();
      }
   }
}

