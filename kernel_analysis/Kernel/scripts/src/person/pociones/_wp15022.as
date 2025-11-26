package src.person.pociones
{
   import flash.display.*;
   import src.allData.*;
   import src.person.*;
   
   public class _wp15022 extends _td11801
   {
      
      private var _uf4564:MovieClip;
      
      public function _wp15022()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _ap13346 = _ym6664.getAnimationById(_sp655);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         this._uf4564 = _ap13346.getChildByName("mcHalo") as MovieClip;
         _ap13346.gotoAndStop(1);
         _ap13346.avatar.addChild(_ij6149);
      }
      
      override protected function _ui5649() : void
      {
      }
      
      override protected function _lp2409() : void
      {
         _sk8948.addChild(_ap13346);
         _bx3898.addChild(this._uf4564);
         _dq696.visible = false;
         super._lp2409();
      }
      
      override protected function _pm8497() : void
      {
         _py12359._bo414 = true;
         _py12359._mr3266 = true;
         _py12359._lc2476 = true;
         _py12359._wf5053 = true;
         _py12359._vl6015 = true;
         _py12359._le185 = false;
         _py12359._bj11164 = true;
         _dq696.visible = true;
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
         this._uf4564.gotoAndPlay(1);
         this._uf4564.alpha = 1;
         super._pm8497();
      }
      
      override protected function _ys2213() : void
      {
         _py12359._bo414 = true;
         _py12359._mr3266 = true;
         _py12359._lc2476 = true;
         _py12359._wf5053 = true;
         _py12359._vl6015 = true;
         _py12359._le185 = false;
         _py12359._bj11164 = true;
         if(_py12359.id == _hv12530.getInstance().id)
         {
            _js7773._dc14886._hv107();
            _js7773._dc14886._ch6820();
            _js7773._dc14886._ha10019();
         }
         this._uf4564.alpha = 1;
         this._uf4564.gotoAndPlay(1);
         _bx3898.addChild(this._uf4564);
         _ap13346.stop();
         _ap13346.visible = false;
         super._ys2213();
      }
      
      override protected function _mb610() : void
      {
         this._uf4564.visible = false;
      }
      
      override protected function _vf2910() : void
      {
         super._vf2910();
      }
   }
}

