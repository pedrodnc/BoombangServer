package src.person.pociones
{
   import src.person.*;
   
   public class _xk11262 extends _td11801
   {
      
      public function _xk11262()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _ap13346 = _ym6664.getAnimationById(_jg2825);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
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

