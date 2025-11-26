package src.person.pociones
{
   import src.allData.*;
   import src.person.*;
   import src.utils.*;
   
   public class _om6007 extends _td11801
   {
      
      public static const _aq5287:String = "frame_ouch";
      
      public function _om6007()
      {
         super();
      }
      
      override protected function _bx10099() : void
      {
         try
         {
            _on2519._yf7634(_aq5287);
         }
         catch(e:Error)
         {
         }
         super._bx10099();
      }
      
      override protected function _hp9614() : void
      {
         _fk15228 = _ym6664.getFrascoById(_ui15823);
         _ap13346 = _ym6664.getAnimationById(_em7263);
         _ij6149 = _xr3315._ku11706(_py12359,"down_ouch");
         _ap13346.gotoAndStop(1);
         _sk8948.addChild(_ap13346);
         _on2519 = new _cj12538(_fk15228);
         _on2519._ah6327(_aq5287,this._wi12003);
         _on2519._ah6327(_da7167,_pl13205);
      }
      
      override protected function _ui5649() : void
      {
         _ap13346 = _ym6664.getQuitAnimationById(_em7263);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.avatar.addChild(_ij6149);
         _ap13346.stop();
         _xv14798.cleanChildsMovieclip(_sk8948);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
      }
      
      override protected function _fj12172() : void
      {
         _sk8948.addChild(_fk15228);
         _fk15228.gotoAndPlay(_ar6424);
      }
      
      private function _wi12003() : void
      {
         _ap13346.avatar.addChild(_ij6149);
         _ij6149.play();
         _dq696.visible = false;
         _on2519._yf7634(_aq5287);
      }
      
      override protected function _pm8497() : void
      {
         _py12359._bo414 = false;
         _py12359._mr3266 = false;
         _py12359._lc2476 = true;
         _py12359._wf5053 = false;
         _py12359._vl6015 = false;
         _py12359._le185 = false;
         _py12359._bj11164 = false;
         super._pm8497();
      }
      
      override protected function _ys2213() : void
      {
         if(_py12359.id == _hv12530.getInstance().id)
         {
            _js7773._dc14886._hv107();
            _js7773._dc14886._ch6820();
            _js7773._dc14886._ha10019();
         }
         _py12359._bo414 = false;
         _py12359._mr3266 = false;
         _py12359._lc2476 = true;
         _py12359._wf5053 = false;
         _py12359._vl6015 = false;
         _py12359._le185 = false;
         _py12359._bj11164 = false;
         _dq696.visible = false;
         _ap13346.gotoAndStop(_da7167);
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

