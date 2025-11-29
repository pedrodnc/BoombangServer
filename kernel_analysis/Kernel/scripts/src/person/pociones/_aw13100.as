package src.person.pociones
{
   import src.person.*;
   
   public class _aw13100 extends _td11801
   {
      
      public function _aw13100()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _ap13346 = _ym6664.getAnimationById(_gf968);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
      }
      
      override protected function _ui5649() : void
      {
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
         _ap13346 = _ym6664.getQuitAnimationById(_ja1986);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _sk8948.addChild(_ap13346);
      }
      
      override protected function _pm8497() : void
      {
         if(_ap13346 != null)
         {
            _ap13346.stop();
         }
         if(_on2519 != null)
         {
            _on2519._yf7634(_da7167);
            _on2519 = null;
         }
         _ql1858 = _eq4750;
      }
      
      override protected function _ys2213() : void
      {
         _ap13346.gotoAndStop(_da7167);
      }
      
      override protected function _qv5456() : void
      {
         switch(_ql1858)
         {
            case _eh1023:
            case _ng9645:
               _lp2409();
               return;
            case _eq4750:
               this._ys2213();
               return;
            case _cc5175:
               _mb610();
               return;
            default:
               return;
         }
      }
   }
}

