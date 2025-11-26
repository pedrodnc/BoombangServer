package src.modules.interfaz.fichaKeko.booble
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import flash.ui.*;
   import src.allData.*;
   import src.allData.texts.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.controlIngTextos.*;
   
   public class BoobleModel extends Booble
   {
      
      private static const textString:String = "mcBoobleEditar";
      
      private static const textString1:String = "mcBoobleOk";
      
      private static const textString2:String = "tfFrase";
      
      private var isEnabled:Boolean;
      
      private var _ee4557:BoobleView;
      
      private var _qy7633:BoobleView;
      
      private var _wl10980:TextField;
      
      private var _lk1815:CommoncomponentsController;
      
      private var _iu9201:ControlingtextosUtils;
      
      public function BoobleModel(param1:MovieClip, param2:MovieClip, param3:Booble)
      {
         super(param1,param2,param3);
         this.isEnabled = false;
         this._ee4557 = new BoobleView(param2[textString],this._fj13758,String(param3._im12039._ue3031).toLocaleUpperCase() + "!",param3._ts642);
         this._qy7633 = new BoobleView(param2[textString1],this._fw4775,String(param3._im12039.OK).toLocaleUpperCase(),param3._ts642);
         this._ee4557.authenticateUser2();
         this._qy7633.authenticateUser2();
         this._lk1815 = new CommoncomponentsController(_gn3462,null,this._sq10053,this._jv7745);
         colorTransform.color = 16777215;
         _gn3462.transform.colorTransform = colorTransform;
         colorTransform.color = param3._ts642._mx10235;
         _yj14476.transform.colorTransform = colorTransform;
         this._wl10980 = TextField(param2.getChildByName(textString2));
         this._gw14702();
      }
      
      private function _sq10053() : void
      {
         if(!_kf7619.isEnabled)
         {
            return;
         }
         if(this.isEnabled)
         {
            return;
         }
         this._ee4557.show();
      }
      
      private function _jv7745() : void
      {
         if(!_kf7619.isEnabled)
         {
            return;
         }
         if(this.isEnabled)
         {
            return;
         }
         if(!this._ee4557._iq12946())
         {
            this._ee4557.authenticateUser2();
         }
      }
      
      override protected function _eg5588() : void
      {
         super._eg5588();
      }
      
      private function _fj13758() : void
      {
         this.isEnabled = true;
         this._ee4557.authenticateUser2();
         this._qy7633.show();
         UtilsUtils._xl9503(this._wl10980,"");
         this._wl10980.type = TextFieldType.INPUT;
         this._wl10980.restrict = TextLocalizer._motto;
         this._wl10980.maxChars = TextLocalizer.count15;
         this._wl10980.stage.focus = this._wl10980;
         this._wl10980.mouseEnabled = true;
         this._wl10980.addEventListener(KeyboardEvent.KEY_DOWN,this._tm14216);
         this._iu9201 = new ControlingtextosUtils(this._wl10980,40);
      }
      
      private function _tm14216(param1:KeyboardEvent) : void
      {
         if(param1.charCode != Keyboard.ENTER)
         {
            return;
         }
         param1.preventDefault();
         this._bc10423();
      }
      
      private function _fw4775() : void
      {
         this._bc10423();
      }
      
      public function _bc10423() : void
      {
         if(!this.isEnabled)
         {
            return;
         }
         this.isEnabled = false;
         this._ee4557.authenticateUser2();
         this._qy7633.authenticateUser2();
         var count2:String = this._wl10980.text;
         if(count2 != "")
         {
            count2 = UtilsUtils._bg5268(count2);
            UserSession.getInstance().textString1 = count2;
            _kf7619._dv14621.handleSocket10(count2);
         }
         this._gw14702();
         this._wl10980.removeEventListener(KeyboardEvent.KEY_DOWN,this._tm14216);
         if(this._iu9201 != null)
         {
            this._iu9201.destroy();
            this._iu9201 = null;
         }
      }
      
      public function _gw14702() : void
      {
         this._wl10980.textColor = _kf7619._ts642._rf5817;
         this._wl10980.mouseEnabled = false;
         this._wl10980.type = TextFieldType.DYNAMIC;
         UtilsUtils._xl9503(this._wl10980,_kf7619._lp13903.textString1);
      }
      
      override public function destroy() : void
      {
         this._bc10423();
         super.destroy();
         if(this._ee4557 != null)
         {
            this._ee4557.destroy();
            this._ee4557 = null;
         }
         if(this._qy7633 != null)
         {
            this._qy7633.destroy();
            this._qy7633 = null;
         }
         if(this._iu9201 != null)
         {
            this._iu9201.destroy();
            this._iu9201 = null;
         }
         if(this._lk1815 != null)
         {
            this._lk1815.destroy();
            this._lk1815 = null;
         }
         if(this._wl10980 != null)
         {
            this._wl10980.removeEventListener(KeyboardEvent.KEY_DOWN,this._tm14216);
         }
      }
   }
}

