package src.person.pociones
{
   import flash.display.*;
   import src.person.*;
   
   public class _jm11796 extends _td11801
   {
      
      public var _gp10783:MovieClip;
      
      public var _fx8310:MovieClip;
      
      public function _jm11796()
      {
         super();
      }
      
      override public function destroy(param1:Boolean = false) : void
      {
         if(this._gp10783 != null)
         {
            this._gp10783.gotoAndStop(1);
            this._gp10783 = null;
         }
         super.destroy(param1);
      }
      
      override protected function _hp9614() : void
      {
         _fk15228 = _ym6664.getFrascoById(_to12492);
         _ap13346 = _ym6664.getAnimationById(_gr5098);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         this._fx8310 = _xr3315._ku11706(_py12359,"down_idle");
         this._gp10783 = _ap13346.getChildByName("mcFrog") as MovieClip;
         this._gp10783.visible = false;
         _sk8948.addChild(this._gp10783);
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _ap13346.avatar1.addChild(this._fx8310);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
      }
      
      override protected function _ui5649() : void
      {
         _ap13346 = _ym6664.getQuitAnimationById(_gr5098);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _sk8948.addChild(_ap13346);
      }
      
      override protected function _pm8497() : void
      {
         super._pm8497();
         _py12359._bo414 = false;
         _py12359._mr3266 = false;
         _py12359._lc2476 = true;
         _py12359._wf5053 = false;
         _py12359._vl6015 = true;
         _py12359._le185 = false;
         _py12359._bj11164 = false;
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
         this._gp10783.visible = true;
         this._gp10783.play();
      }
      
      override protected function _ys2213() : void
      {
         _dq696.visible = false;
         this._gp10783.visible = true;
         this._gp10783.gotoAndPlay(2);
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
         _py12359._bo414 = false;
         _py12359._mr3266 = false;
         _py12359._lc2476 = true;
         _py12359._wf5053 = false;
         _py12359._vl6015 = true;
         _py12359._le185 = false;
         _py12359._bj11164 = false;
      }
      
      override protected function _mb610() : void
      {
         this._gp10783.gotoAndStop(1);
         if(_sk8948.contains(this._gp10783))
         {
            _sk8948.removeChild(this._gp10783);
         }
         this._gp10783 = null;
         super._mb610();
      }
      
      override protected function _vf2910() : void
      {
         _on2519._yf7634(_da7167);
         _ap13346.gotoAndStop(1);
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
         _dq696.visible = true;
         super._vf2910();
      }
   }
}

