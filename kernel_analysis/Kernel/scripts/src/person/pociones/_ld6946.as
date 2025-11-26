package src.person.pociones
{
   import flash.display.*;
   import flash.geom.*;
   import src.allData.*;
   import src.person.*;
   
   public class _ld6946 extends _td11801
   {
      
      private var _kq408:MovieClip;
      
      public function _ld6946()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _fk15228 = _ym6664.getFrascoById(_to12492);
         _ap13346 = _ym6664.getAnimationById(_et12848);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         this._kq408 = _ap13346.getChildByName("mcNube") as MovieClip;
         _ap13346.gotoAndStop(1);
         this._kq408.gotoAndStop(1);
         _ap13346.avatar.addChild(_ij6149);
      }
      
      override protected function _ui5649() : void
      {
         _ap13346 = _ym6664.getQuitAnimationById(_et12848);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.avatar.addChild(_ij6149);
         _ap13346.stop();
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
      }
      
      override protected function _lp2409() : void
      {
         _sk8948.addChild(_ap13346);
         _bx3898.addChild(this._kq408);
         _ap13346.gotoAndPlay(1);
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
         var _loc1_:ColorTransform = new ColorTransform();
         _loc1_.redMultiplier = 0.5;
         _loc1_.greenMultiplier = 0.5;
         _loc1_.blueMultiplier = 0.5;
         _dq696.transform.colorTransform = _loc1_;
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
         if(_py12359.id == _hv12530.getInstance().id)
         {
            _js7773._dc14886._hv107();
            _js7773._dc14886._ch6820();
            _js7773._dc14886._ha10019();
         }
         this._kq408.gotoAndStop(this._kq408.totalFrames);
         _bx3898.addChild(this._kq408);
         var _loc1_:ColorTransform = new ColorTransform();
         _loc1_.redMultiplier = 0.5;
         _loc1_.greenMultiplier = 0.5;
         _loc1_.blueMultiplier = 0.5;
         _dq696.transform.colorTransform = _loc1_;
         _dq696.visible = true;
      }
      
      override protected function _mb610() : void
      {
         this._kq408.visible = false;
         super._mb610();
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

