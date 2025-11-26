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
   
   public class _tt13525 extends _gu2082
   {
      
      private static const _he13338:String = "mcBoobleEditar";
      
      private static const _lb6998:String = "mcBoobleOk";
      
      private static const _mb15032:String = "tfFrase";
      
      private var _mx6062:Boolean;
      
      private var _ee4557:_dc3082;
      
      private var _qy7633:_dc3082;
      
      private var _wl10980:TextField;
      
      private var _lk1815:_kg183;
      
      private var _iu9201:_wu11052;
      
      public function _tt13525(param1:MovieClip, param2:MovieClip, param3:_rn3949)
      {
         super(param1,param2,param3);
         this._mx6062 = false;
         this._ee4557 = new _dc3082(param2[_he13338],this._fj13758,String(param3._im12039._ue3031).toLocaleUpperCase() + "!",param3._ts642);
         this._qy7633 = new _dc3082(param2[_lb6998],this._fw4775,String(param3._im12039.OK).toLocaleUpperCase(),param3._ts642);
         this._ee4557._hu12389();
         this._qy7633._hu12389();
         this._lk1815 = new _kg183(_gn3462,null,this._sq10053,this._jv7745);
         colorTransform.color = 16777215;
         _gn3462.transform.colorTransform = colorTransform;
         colorTransform.color = param3._ts642._mx10235;
         _yj14476.transform.colorTransform = colorTransform;
         this._wl10980 = TextField(param2.getChildByName(_mb15032));
         this._gw14702();
      }
      
      private function _sq10053() : void
      {
         if(!_kf7619._qo15312)
         {
            return;
         }
         if(this._mx6062)
         {
            return;
         }
         this._ee4557._db5584();
      }
      
      private function _jv7745() : void
      {
         if(!_kf7619._qo15312)
         {
            return;
         }
         if(this._mx6062)
         {
            return;
         }
         if(!this._ee4557._iq12946())
         {
            this._ee4557._hu12389();
         }
      }
      
      override protected function _eg5588() : void
      {
         super._eg5588();
      }
      
      private function _fj13758() : void
      {
         this._mx6062 = true;
         this._ee4557._hu12389();
         this._qy7633._db5584();
         _yq8362._xl9503(this._wl10980,"");
         this._wl10980.type = TextFieldType.INPUT;
         this._wl10980.restrict = _ei10851._motto;
         this._wl10980.maxChars = _ei10851._cf1878;
         this._wl10980.stage.focus = this._wl10980;
         this._wl10980.mouseEnabled = true;
         this._wl10980.addEventListener(KeyboardEvent.KEY_DOWN,this._tm14216);
         this._iu9201 = new _wu11052(this._wl10980,40);
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
         if(!this._mx6062)
         {
            return;
         }
         this._mx6062 = false;
         this._ee4557._hu12389();
         this._qy7633._hu12389();
         var _loc1_:String = this._wl10980.text;
         if(_loc1_ != "")
         {
            _loc1_ = _cr6121._bg5268(_loc1_);
            _hv12530.getInstance()._lk2235 = _loc1_;
            _kf7619._dv14621._jr7004(_loc1_);
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
         _yq8362._xl9503(this._wl10980,_kf7619._lp13903._lk2235);
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

