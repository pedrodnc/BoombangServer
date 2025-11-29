package src.person.pociones
{
   import flash.display.*;
   import src.person.*;
   import src.utils.*;
   
   public class _rq3184 extends _td11801
   {
      
      public static const _aq5287:String = "frame_ouch";
      
      public function _rq3184()
      {
         super();
      }
      
      override protected function _bx10099() : void
      {
         try
         {
            _on2519._yf7634(_aq5287);
            _xv14798._ff5056(_ap13346.mcLetter);
         }
         catch(e:Error)
         {
         }
         super._bx10099();
      }
      
      override protected function _hp9614() : void
      {
         _fk15228 = _ym6664.getFrascoById(_ui15823);
         _ap13346 = _ym6664.getAnimationById(_yn14849);
         _ij6149 = _xr3315._ku11706(_py12359,"down_ouch");
         _xv14798._dp2863(_ap13346.mcLetter,this._gg8112);
         _ap13346.gotoAndStop(1);
         _sk8948.addChild(_ap13346);
         _on2519 = new _cj12538(_fk15228);
         _on2519._ah6327(_da7167,_pl13205);
         _on2519._ah6327(_aq5287,this._wi12003);
      }
      
      override protected function _ui5649() : void
      {
      }
      
      private function _gg8112() : void
      {
         var _loc1_:MovieClip = MovieClip(_ap13346.getChildByName("mcLetter"));
         _loc1_.mcLetter.txtLetter.text = _bw7551[0];
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
         _py12359._bo414 = true;
         _py12359._mr3266 = true;
         _py12359._lc2476 = true;
         _py12359._wf5053 = true;
         _py12359._vl6015 = true;
         _py12359._le185 = true;
         _py12359._bj11164 = true;
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
         _ap13346.gotoAndStop(1);
         _dq696.visible = true;
         super._pm8497();
      }
      
      override protected function _mb610() : void
      {
         _py12359._bo414 = true;
         _py12359._mr3266 = true;
         _py12359._lc2476 = true;
         _py12359._wf5053 = true;
         _py12359._vl6015 = true;
         _py12359._le185 = true;
         _py12359._bj11164 = true;
         _vf2910();
      }
   }
}

