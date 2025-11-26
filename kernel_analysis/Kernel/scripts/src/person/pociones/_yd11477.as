package src.person.pociones
{
   import src.allData.*;
   import src.person.*;
   import src.utils.*;
   
   public class _yd11477 extends _td11801
   {
      
      public static const _jc12672:String = "frame_coco";
      
      public function _yd11477()
      {
         super();
      }
      
      override protected function _bx10099() : void
      {
         try
         {
            _on2519._yf7634(_jc12672);
         }
         catch(e:Error)
         {
         }
         super._bx10099();
      }
      
      override protected function _hp9614() : void
      {
         _ap13346 = _ym6664.getAnimationById(_xf2480);
         _ij6149 = _xr3315._ku11706(_py12359,"down_coco");
         _ap13346.gotoAndStop(1);
         _sk8948.addChild(_ap13346);
         _on2519 = new _cj12538(_ap13346);
         _on2519._ah6327(_jc12672,this._wi12003);
         _ql1858 = _ng9645;
         if(_sm1766 != -1)
         {
            _uw8020();
         }
      }
      
      override protected function _ui5649() : void
      {
      }
      
      private function _wi12003() : void
      {
         _ap13346.avatar.addChild(_ij6149);
         _dq696.visible = false;
         _on2519._yf7634(_jc12672);
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

