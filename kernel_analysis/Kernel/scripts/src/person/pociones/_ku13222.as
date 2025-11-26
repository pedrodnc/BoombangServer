package src.person.pociones
{
   import flash.display.*;
   import src.allData.*;
   
   public class _ku13222 extends _td11801
   {
      
      private var _io10563:MovieClip;
      
      private var _ak9351:MovieClip;
      
      public function _ku13222()
      {
         super();
      }
      
      override protected function _hp9614() : void
      {
         _fk15228 = _ym6664.getFrascoById(_to12492);
         _ap13346 = _ym6664.getAnimationById(_hw6128);
         this._io10563 = _ap13346.getChildByName("mcBats1") as MovieClip;
         this._ak9351 = _ap13346.getChildByName("mcBats2") as MovieClip;
      }
      
      override protected function _ui5649() : void
      {
         _ap13346 = _ym6664.getQuitAnimationById(_hw6128);
         _ap13346.stop();
         _sk8948.addChild(_ap13346);
      }
      
      override protected function _lp2409() : void
      {
         _bx3898.addChild(this._io10563);
         _su4934.addChild(this._ak9351);
         this._io10563.gotoAndPlay(1);
         this._ak9351.gotoAndPlay(1);
         this._pm8497();
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
         if(_py12359.id == _hv12530.getInstance().id)
         {
            _js7773._dc14886._hv107();
            _js7773._dc14886._ch6820();
            _js7773._dc14886._ha10019();
         }
         _ql1858 = _eq4750;
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
         _bx3898.addChild(this._io10563);
         _su4934.addChild(this._ak9351);
         this._io10563.gotoAndPlay(1);
         this._ak9351.gotoAndPlay(1);
         _dq696.visible = true;
      }
      
      override protected function _vf2910() : void
      {
         _on2519._yf7634(_da7167);
         _ap13346.stop();
         if(_sk8948.contains(_ap13346))
         {
            _sk8948.removeChild(_ap13346);
         }
         super._vf2910();
      }
   }
}

