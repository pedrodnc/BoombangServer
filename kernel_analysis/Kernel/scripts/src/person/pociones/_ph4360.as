package src.person.pociones
{
   import flash.display.MovieClip;
   import src.person.*;
   import src.utils.*;
   
   public class _ph4360 extends _td11801
   {
      
      public var _fx8310:MovieClip;
      
      public function _ph4360()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _ap13346 = _ym6664.getAnimationById(_iq6367);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         this._fx8310 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _ap13346.avatar1.addChild(this._fx8310);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
      }
      
      override protected function _ui5649() : void
      {
         _ap13346 = _ym6664.getQuitAnimationById(_iq6367);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.avatar.addChild(_ij6149);
         _ap13346.stop();
         _xv14798.cleanChildsMovieclip(_ap13346);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
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
   }
}

