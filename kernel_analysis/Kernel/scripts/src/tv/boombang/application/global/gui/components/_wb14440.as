package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _wb14440 extends MovieClip
   {
      
      private static const _if5805:String = "commonLibrary.swf";
      
      private var _hf1513:_td7832;
      
      private var _cw4974:_td7832;
      
      private var _qn2553:_td7832;
      
      private var _kh15757:_td7832;
      
      private var _jl15304:_om4028;
      
      private var _ea12795:_om4028;
      
      private var _eu12689:_sw5071;
      
      private var _xo6614:MovieClip;
      
      private var _ac13944:_vw5755;
      
      private var _nw14443:_vw5755;
      
      private var _gx13827:_vw5755;
      
      private var _da2936:_vw5755;
      
      private var _kf2734:String;
      
      public function _wb14440(param1:_vw5755, param2:_vw5755, param3:_vw5755, param4:_vw5755, param5:Boolean = false)
      {
         super();
         this._ac13944 = param1;
         this._nw14443 = param2;
         this._gx13827 = param3;
         this._da2936 = param4;
         this._kf2734 = "SocialMenu";
         if(param5)
         {
            this._kf2734 = "SocialMenuSmall";
         }
         (_lh7543.get(_vy3822) as _vy3822)._vv13029([_if5805],this._sk13261);
      }
      
      private function _sk13261() : void
      {
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619(_if5805,this._kf2734) as MovieClip;
         this._hf1513 = new _td7832(this._xo6614.getChildByName("bbButton") as MovieClip,_sw5071._to2262,this._da2936,"BoomBang");
         this._hf1513.addEventListener(MouseEvent.CLICK,this._st14759,false,0,true);
         this._cw4974 = new _td7832(this._xo6614.getChildByName("fbButton") as MovieClip,_sw5071._xt5593,this._ac13944,"Facebook");
         this._cw4974.addEventListener(MouseEvent.CLICK,this._st14759,false,0,true);
         this._qn2553 = new _td7832(this._xo6614.getChildByName("twButton") as MovieClip,_sw5071._yy12730,this._nw14443,"Twitter");
         this._qn2553.addEventListener(MouseEvent.CLICK,this._st14759,false,0,true);
         if(this._gx13827)
         {
            this._kh15757 = new _td7832(this._xo6614.getChildByName("tuButton") as MovieClip,_sw5071._mr16162,this._gx13827,"Tuenti");
            this._kh15757.addEventListener(MouseEvent.CLICK,this._st14759,false,0,true);
         }
         else
         {
            (this._xo6614.getChildByName("tuButton") as MovieClip).visible = false;
            (this._xo6614.getChildByName("bbButton") as MovieClip).x = (this._xo6614.getChildByName("bbButton") as MovieClip).x + 22;
            (this._xo6614.getChildByName("fbButton") as MovieClip).x = (this._xo6614.getChildByName("fbButton") as MovieClip).x + 22;
            (this._xo6614.getChildByName("twButton") as MovieClip).x = (this._xo6614.getChildByName("twButton") as MovieClip).x + 22;
         }
      }
      
      private function _st14759(param1:MouseEvent) : void
      {
         var _loc2_:_td7832 = param1.target as _td7832;
         this._eu12689 = _loc2_._jc262;
         this._eu12689._bl5382._si5405(_loc2_._ht15222);
         if(this._eu12689 == _sw5071._to2262)
         {
            _loc2_._jr5664(_td7832.STATUS_OK);
         }
      }
      
      public function get view() : DisplayObject
      {
         return this._xo6614;
      }
   }
}

