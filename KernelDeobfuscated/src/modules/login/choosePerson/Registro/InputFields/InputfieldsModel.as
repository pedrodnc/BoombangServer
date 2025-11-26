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
         _ws13498(TextLocalizer.textString2,TextLocalizer.count2);
         this._sx9076 = new ControlingtextosUtils(getTextField(),121);
         this._ul12329 = new ChangenicknameView(param1);
         this._ul12329.addEventListener(ChangenicknameView._yg5388,this.setName);
         param1.addChild(this._ul12329);
      }
      
      override protected function destroy() : void
      {
         this._ul12329.destroy();
         _ny1164(RegistroModel._qg11910);
         _uy13942(RegistroModel._aq14051);
         _yf12156(RegistroView.textString2);
      }
      
      public function _ay3155(param1:Array) : void
      {
         var count:Array = null;
         var count3:String = null;
         var count1:Number = NaN;
         if(param1 != null)
         {
            count = [];
            count3 = getString();
            count1 = 0;
            while(count1 < param1.length)
            {
               if(ControlingtextosUtils._nr8915(getTextField(),param1[count1],92))
               {
                  count.push(param1[count1]);
               }
               count1++;
            }
            _xl9503(count3);
         }
         if(count.length > 0)
         {
            this._ul12329.create("",count,4,false);
         }
      }
      
      override protected function _ru3727() : void
      {
         var count2:String = null;
         _ny1164(RegistroModel._mw7630);
         _yf12156(RegistroView.ERROR);
         while(!ControlingtextosUtils._nr8915(getTextField(),getString(),92))
         {
            count2 = getString();
            _xl9503(count2.slice(0,-1));
         }
         if(getString().length <= 0)
         {
            _yf12156(RegistroView.textString2);
            return;
         }
         _yf12156(RegistroView.textString4);
         _ny1164(RegistroModel._qg11910);
         _uy13942(RegistroModel._aq14051);
         if(_pj7103 == null)
         {
            return;
         }
         if(UtilsUtils._bg5268(getString()) != getString())
         {
            this._vl2734();
            _pj7103(Chooseperson.count4);
         }
         else
         {
            _pj7103(Chooseperson.count7,getString());
         }
      }
      
      public function _vl2734() : void
      {
         _ny1164(RegistroModel._mw7630);
         _uy13942(RegistroModel._qg11910);
         _yf12156(RegistroView.ERROR);
         isEnabled = false;
      }
      
      public function start() : void
      {
         _yf12156(RegistroView.textString3);
         _ny1164(RegistroModel._qg11910);
         _uy13942(RegistroModel._aq14051);
         _pj7103(Chooseperson.START);
         isEnabled = true;
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

