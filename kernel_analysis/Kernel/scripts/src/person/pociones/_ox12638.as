package src.person.pociones
{
   import src.allData.color.*;
   import src.person.*;
   
   public class _ox12638 extends _td11801
   {
      
      public function _ox12638()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _fk15228 = _ym6664.getFrascoById(_to12492);
         _ap13346 = _ym6664.getAnimationById(_qx10216);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
      }
      
      override protected function _ui5649() : void
      {
         _py12359.colors = _py12359._ll5517;
         _ap13346 = _ym6664.getQuitAnimationById(_qx10216);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _sk8948.addChild(_ap13346);
      }
      
      override protected function _pm8497() : void
      {
         _py12359._bo414 = true;
         _py12359._mr3266 = true;
         _py12359._lc2476 = true;
         _py12359._wf5053 = true;
         _py12359._vl6015 = true;
         _py12359._le185 = false;
         _py12359._bj11164 = true;
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
         _et2976.apply(this,[_ga7956._wn2739,new _qm1392("000000000000000000000000000000000000000000"),true]);
         _js7773._dc14886._hm9534(_py12359.id,true,true);
         _dq696.visible = true;
         super._pm8497();
      }
      
      override protected function _ys2213() : void
      {
         _py12359._bo414 = true;
         _py12359._mr3266 = true;
         _py12359._lc2476 = true;
         _py12359._wf5053 = true;
         _py12359._vl6015 = true;
         _py12359._le185 = false;
         _py12359._bj11164 = true;
         _et2976.apply(this,[_ga7956._wn2739,new _qm1392("000000000000000000000000000000000000000000"),true]);
         _js7773._dc14886._hm9534(_py12359.id,true,true);
         _dq696.visible = true;
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
      }
      
      override protected function _mb610() : void
      {
         _dq696.visible = false;
         super._mb610();
      }
      
      override protected function _vf2910() : void
      {
         _on2519._yf7634(_da7167);
         _ap13346.stop();
         _ap13346.visible = false;
         _et2976.apply(this,[_py12359._ly10773,_py12359._ll5517,false]);
         _js7773._dc14886._hm9534(_py12359.id,false,true);
         _dq696.visible = true;
         super._vf2910();
      }
   }
}

