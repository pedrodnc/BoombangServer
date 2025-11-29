package src.person.pociones
{
   import flash.display.*;
   import flash.geom.*;
   import src.person.*;
   
   public class _ak13881 extends _td11801
   {
      
      public static const COLOR:Array = new Array(13209,13369344,16763904,39168,10027110);
      
      public var _color:int;
      
      public var _me10897:MovieClip;
      
      public var _mm11374:MovieClip;
      
      public var _ly10475:MovieClip;
      
      public var _jh10003:MovieClip;
      
      public var _fx8310:MovieClip;
      
      public function _ak13881()
      {
         super();
      }
      
      override public function destroy(param1:Boolean = false) : void
      {
         if(this._mm11374 != null)
         {
            this._mm11374.gotoAndStop(1);
            this._mm11374 = null;
         }
         super.destroy(param1);
      }
      
      override protected function _hp9614() : void
      {
         this._color = COLOR[int(_bw7551[0])];
         _ap13346 = _ym6664.getAnimationById(_me11526);
         _ij6149 = _xr3315._ku11706(_py12359,"down_idle");
         this._fx8310 = _xr3315._ku11706(_py12359,"down_idle");
         this._me10897 = _ap13346.getChildByName("mcBaloon") as MovieClip;
         this._mm11374 = _ap13346.getChildByName("mcSplat") as MovieClip;
         this._ly10475 = _ap13346.getChildByName("mcDrips1") as MovieClip;
         this._jh10003 = _ap13346.getChildByName("mcDrips2") as MovieClip;
         this._ly10475.stop();
         this._jh10003.stop();
         var _loc1_:ColorTransform = new ColorTransform();
         _loc1_.color = this._color;
         this._fx8310.transform.colorTransform = _loc1_;
         MovieClip(this._me10897.getChildByName("mcColor")).transform.colorTransform = _loc1_;
         this._ly10475.transform.colorTransform = _loc1_;
         this._jh10003.transform.colorTransform = _loc1_;
         _ap13346.stop();
         _ap13346.avatar.addChild(_ij6149);
         _ap13346.avatar1.addChild(this._fx8310);
         _sk8948.addChild(_ap13346);
         _dq696.visible = false;
      }
      
      override protected function _ui5649() : void
      {
      }
      
      override protected function _pm8497() : void
      {
         super._pm8497();
         _py12359._bo414 = false;
         _py12359._mr3266 = false;
         _py12359._lc2476 = true;
         _py12359._wf5053 = false;
         _py12359._vl6015 = true;
         _py12359._le185 = false;
         _py12359._bj11164 = false;
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

