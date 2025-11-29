package src.tv.boombang.application.user.gui.windows.userOptions
{
   import flash.display.*;
   import flash.events.*;
   import flash.media.*;
   import src.allData.*;
   import src.config.*;
   import src.loaders._ki14341;
   import src.loaders._mk16025;
   import src.modules.chooseScene._tj14068;
   import src.person.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.windows.*;
   
   public class _xy4433 extends MovieClip implements _jk15536
   {
      
      public static const _qg15813:uint = 15466276;
      
      private var _aa9666:_mk16025;
      
      private var _yg13989:_ki14341;
      
      private var _xo6614:MovieClip;
      
      private var _my10689:MovieClip;
      
      private var _dr12330:Array;
      
      private var _jh798:int;
      
      private var _wj10250:_qy9375;
      
      private var _sv12108:_tj14068;
      
      private var _ps10698:_ca11681;
      
      public function _xy4433(param1:_tj14068)
      {
         super();
         this._sv12108 = param1;
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("userSetupMenu.swf","UserMenuSeupAsset");
         this._my10689 = this._xo6614["back"]["dynamicBg"];
         this.init();
      }
      
      public function destroy() : void
      {
         var _loc1_:Object = null;
         if(this._wj10250)
         {
            this._wj10250.removeEventListener(MouseEvent.CLICK,this._fu9496);
         }
         for each(_loc1_ in this._dr12330)
         {
            _loc1_["button"].removeEventListener(MouseEvent.CLICK,_loc1_.listener);
         }
         if(this._xo6614)
         {
            if(this.contains(this._xo6614))
            {
               removeChild(this._xo6614);
            }
            this._xo6614 = null;
         }
      }
      
      protected function init() : void
      {
         this._wj10250 = new _qy9375(this._xo6614["btnClose"] as MovieClip);
         this._dr12330 = new Array();
         this._jh798 = 0;
         var _loc1_:_va5249 = this._se3078(_qa7471._bw14176,this._mg14790);
         _loc1_.selected = _cc7688._jo11635;
         var _loc2_:Boolean = Boolean(_ga7956._wk4913[_fg1060.data._jn11596]);
         this._se3078(_qa7471._bq892,this._wo6705).enabled = _loc2_;
         this._se3078(_qa7471._qi11934,this._jf4075).enabled = _loc2_;
         this._se3078(_qa7471._bj14425,this._ih14375);
         if(!_fg1060.data._ev848)
         {
            this._se3078(_qa7471._ql281,this._om4456);
         }
         if(_fg1060.data._tf16034(_sw5071._to2262))
         {
            this._se3078(_qa7471._sh10258,this._ki9451);
         }
         if(_fg1060.data._uf6036 == _hv12530._kr15451)
         {
            this._se3078(_qa7471._fp4047,this._la10699).textColor = _qg15813;
         }
         else if(_fg1060.data._uf6036 == _hv12530._ma6151)
         {
            this._se3078(_qa7471._ww14047,this._la10699);
         }
         else
         {
            this._se3078(_qa7471._yj2995,this._la10699).textColor = _qg15813;
         }
         if(!_loc2_)
         {
            this._ps10698 = new _ca11681();
            this._ps10698.backgroundColor = 14040361;
            this._ps10698.textColor = 16777215;
            this._ps10698.text = "gui.userSetupMenu.cantCustomizeCostume";
            this._ps10698._xe10297 = _wk9007.TOP;
            this._xo6614.addChild(this._ps10698);
         }
         this._ch5809();
         this._wj10250.addEventListener(MouseEvent.CLICK,this._fu9496,false,0,true);
         addChild(this._xo6614);
      }
      
      private function _se3078(param1:_qa7471, param2:Function) : _va5249
      {
         var _loc3_:MovieClip = (_lh7543.get(_vy3822) as _vy3822)._bn15619("userSetupMenu.swf","BtnMenu");
         this._xo6614.addChild(_loc3_);
         var _loc4_:_va5249 = new _va5249(_loc3_,param1.name);
         if(param2 != null)
         {
            _loc4_.addEventListener(MouseEvent.MOUSE_DOWN,param2,false,0,true);
         }
         this._dr12330[param1.label] = new Object();
         this._dr12330[param1.label]["button"] = _loc4_;
         this._dr12330[param1.label]["listener"] = param2;
         this._dr12330[param1.label]["index"] = this._jh798;
         ++this._jh798;
         return _loc4_;
      }
      
      private function _ch5809() : void
      {
         var _loc1_:Object = null;
         var _loc2_:_va5249 = null;
         this._my10689.height = 40 + this._jh798 * 26;
         this._wj10250.y = this._wj10250.height - this._my10689.height - 2;
         for each(_loc1_ in this._dr12330)
         {
            _loc1_["button"].x = 5;
            _loc1_["button"].y = -5 - (this._jh798 - _loc1_["index"]) * 25;
         }
         if(this._ps10698)
         {
            _loc2_ = this._dr12330[_qa7471._qi11934.label]["button"];
            this._ps10698.x = _loc2_.x + _loc2_.width;
            this._ps10698.y = _loc2_.y - 5;
            this._ps10698._sl14850();
         }
      }
      
      private function _fu9496(param1:MouseEvent) : void
      {
         _pr2018.getInstance().remove(this);
         this._sv12108._aa181();
      }
      
      private function _mg14790(param1:MouseEvent) : void
      {
         if(_cc7688._jo11635)
         {
            SoundMixer.soundTransform = new SoundTransform(1);
            (param1.target as _va5249).selected = false;
            _cc7688._jo11635 = false;
         }
         else
         {
            SoundMixer.soundTransform = new SoundTransform(0);
            (param1.target as _va5249).selected = true;
            _cc7688._jo11635 = true;
         }
      }
      
      private function _wo6705(param1:MouseEvent) : void
      {
         this._sv12108._ca10610();
      }
      
      private function _jf4075(param1:MouseEvent) : void
      {
         this._sv12108._ac9678();
      }
      
      private function _ih14375(param1:MouseEvent) : void
      {
         this._sv12108._um14837();
      }
      
      private function _ki9451(param1:MouseEvent) : void
      {
         this._sv12108._pw2317();
      }
      
      private function _fx10946(param1:MouseEvent) : void
      {
         this._sv12108._io12503();
      }
      
      private function _om4456(param1:MouseEvent) : void
      {
         this._sv12108._dw4554();
      }
      
      private function _hf10881(param1:MouseEvent) : void
      {
         this._sv12108._ei1076();
      }
      
      private function _vk488(param1:MouseEvent) : void
      {
         this._sv12108._sa14733();
      }
      
      private function _la10699(param1:MouseEvent) : void
      {
         switch(_hv12530.getInstance()._uf6036)
         {
            case _hv12530._kr15451:
               this._sv12108._vg8488();
               return;
            case _hv12530._ma6151:
               this._sv12108._ym1355();
               return;
            case _hv12530._lb6305:
               this._sv12108._sf13434();
               return;
            default:
               return;
         }
      }
   }
}

