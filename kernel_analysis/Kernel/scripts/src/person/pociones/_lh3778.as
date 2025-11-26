package src.person.pociones
{
   import flash.display.MovieClip;
   import src.allData.*;
   import src.person.*;
   
   public class _lh3778 extends _td11801
   {
      
      public var _dx109:MovieClip;
      
      public var _ph1476:MovieClip;
      
      public var _fx8310:MovieClip;
      
      public var _tk3380:MovieClip;
      
      public function _lh3778()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _ap13346 = _ym6664.getAnimationById(_fh4819);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         this._fx8310 = _xr3315._ku11706(_py12359,"down_idle");
         this._tk3380 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _ap13346.avatar1.addChild(this._fx8310);
         _ap13346.avatar2.addChild(this._tk3380);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
         _ql1858 = _ng9645;
         if(_sm1766 != -1)
         {
            _uw8020();
         }
      }
      
      override protected function _ui5649() : void
      {
      }
      
      override protected function _pm8497() : void
      {
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
         _py12359._le185 = true;
         _py12359._bj11164 = true;
         if(_py12359.id == _hv12530.getInstance().id)
         {
            _js7773._dc14886._hv107();
            _js7773._dc14886._ch6820();
            _js7773._dc14886._ha10019();
         }
         _dq696.visible = true;
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
      }
      
      override protected function _mb610() : void
      {
         _vf2910();
      }
   }
}

