package src.person.pociones
{
   import flash.display.MovieClip;
   import src.person.*;
   
   public class _dx5370 extends _td11801
   {
      
      public var _fx8310:MovieClip;
      
      public function _dx5370()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _ap13346 = _ym6664.getAnimationById(_qc9339);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         this._fx8310 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _ap13346.avatar1.addChild(this._fx8310);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
         _cb14550.visible = false;
      }
      
      override protected function _pm8497() : void
      {
         super._pm8497();
         _js7773._dc14886._eo493();
      }
      
      override protected function _ui5649() : void
      {
      }
      
      override protected function _mb610() : void
      {
      }
   }
}

