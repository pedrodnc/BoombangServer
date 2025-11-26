package src.person.pociones
{
   import flash.display.*;
   import src.person.*;
   
   public class _rc8901 extends _td11801
   {
      
      private var _bc7610:MovieClip;
      
      private var _vt6154:MovieClip;
      
      public function _rc8901()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _ap13346 = _ym6664.getAnimationById(_di14258);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         this._bc7610 = _ap13346.getChildByName("trailer1") as MovieClip;
         this._vt6154 = _ap13346.getChildByName("trailer2") as MovieClip;
         this._bc7610.mcMessage.txtMessage.text = _bw7551[0];
         this._vt6154.mcMessage.txtMessage.text = _bw7551[0];
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
      }
      
      override protected function _ui5649() : void
      {
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
         super._pm8497();
         _js7773._dc14886._eo493();
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
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
         _dq696.visible = true;
         super._vf2910();
      }
   }
}

