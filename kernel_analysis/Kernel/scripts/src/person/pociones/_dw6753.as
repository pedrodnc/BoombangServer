package src.person.pociones
{
   import flash.display.MovieClip;
   import src.person.*;
   
   public class _dw6753 extends _td11801
   {
      
      public var _dx109:MovieClip;
      
      public var _fx8310:MovieClip;
      
      public function _dw6753()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _fk15228 = _ym6664.getFrascoById(_to12492);
         _ap13346 = _ym6664.getAnimationById(_go2727);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         this._fx8310 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _ap13346.avatar1.addChild(this._fx8310);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
         _cb14550.visible = false;
      }
      
      override protected function _ui5649() : void
      {
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
         _dq696.visible = true;
         _cb14550.visible = true;
         _vf2910();
      }
   }
}

