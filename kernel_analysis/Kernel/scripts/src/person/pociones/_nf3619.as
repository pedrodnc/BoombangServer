package src.person.pociones
{
   import flash.display.*;
   import src.person.*;
   import src.utils.*;
   
   public class _nf3619 extends _td11801
   {
      
      private var _uy13515:MovieClip;
      
      public function _nf3619()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _ap13346 = _ym6664.getAnimationById(_gn4816);
         _ij6149 = _xr3315._ku11706(_py12359,"down_ouch");
         this._uy13515 = _ap13346.getChildByName("mcCupido") as MovieClip;
         this._uy13515.stop();
         _ap13346.stop();
         _ij6149.stop();
         _ap13346.avatar.addChild(_ij6149);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
         _ql1858 = _ng9645;
      }
      
      override protected function _ui5649() : void
      {
      }
      
      override protected function _lp2409() : void
      {
         this._uy13515.gotoAndPlay(2);
         super._lp2409();
      }
      
      override protected function _pm8497() : void
      {
         _xv14798.cleanChildsMovieclip(_sk8948);
         _ap13346.gotoAndStop(1);
         this._uy13515.gotoAndStop(1);
         _dq696.visible = true;
         _py12359._bo414 = true;
         _py12359._mr3266 = true;
         _py12359._lc2476 = true;
         _py12359._wf5053 = true;
         _py12359._vl6015 = true;
         _py12359._le185 = true;
         _py12359._bj11164 = true;
         super._pm8497();
      }
      
      override protected function _mb610() : void
      {
      }
   }
}

