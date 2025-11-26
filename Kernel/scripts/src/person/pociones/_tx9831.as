package src.person.pociones
{
   import flash.display.*;
   import src.person.*;
   
   public class _tx9831 extends _td11801
   {
      
      private var _kq408:MovieClip;
      
      private var _dp7856:MovieClip;
      
      public function _tx9831()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _fk15228 = _ym6664.getFrascoById(_to12492);
         _ap13346 = _ym6664.getAnimationById(_cm1087);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         this._kq408 = _ap13346.getChildByName("mcNube") as MovieClip;
         this._dp7856 = _ap13346.getChildByName("mcAura") as MovieClip;
         _ap13346.gotoAndStop(1);
         this._kq408.gotoAndStop(1);
         this._dp7856.gotoAndStop(1);
         _ap13346.avatar.addChild(_ij6149);
      }
      
      override protected function _ui5649() : void
      {
         _ap13346 = _ym6664.getQuitAnimationById(_cm1087);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.avatar.addChild(_ij6149);
         _ap13346.stop();
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
      }
      
      override protected function _lp2409() : void
      {
         _sk8948.addChild(_ap13346);
         _su4934.addChild(this._dp7856);
         _bx3898.addChild(this._kq408);
         _ap13346.gotoAndPlay(1);
         this._dp7856.gotoAndPlay(1);
         this._kq408.gotoAndPlay(1);
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
         _su4934.addChild(this._dp7856);
         _bx3898.addChild(this._kq408);
         this._dp7856.gotoAndPlay(1);
         this._kq408.gotoAndPlay(1);
         _dq696.visible = true;
      }
      
      override protected function _vf2910() : void
      {
         _on2519._yf7634(_da7167);
         _ap13346.stop();
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
         _dq696.visible = true;
         super._vf2910();
      }
   }
}

