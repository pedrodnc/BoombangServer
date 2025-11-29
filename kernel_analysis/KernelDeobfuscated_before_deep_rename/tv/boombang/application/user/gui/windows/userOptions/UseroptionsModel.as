package src.tv.boombang.application.user.gui.windows.userOptions
{
   import flash.display.*;
   import flash.events.*;
   import flash.media.*;
   import src.allData.*;
   import src.config.*;
   import src.loaders.LoadersManager;
   import src.loaders.AssetLoader;
   import src.modules.chooseScene.ChoosesceneModel;
   import src.person.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.windows.*;
   
   public class UseroptionsModel extends MovieClip implements Interfaces
   {
      
      public static const _qg15813:uint = 15466276;
      
      private var _aa9666:AssetLoader;
      
      private var _yg13989:LoadersManager;
      
      private var _xo6614:MovieClip;
      
      private var _my10689:MovieClip;
      
      private var _dr12330:Array;
      
      private var _jh798:int;
      
      private var _wj10250:ComponentsModel;
      
      private var _sv12108:ChoosesceneModel;
      
      private var _ps10698:UIPanel;
      
      public function UseroptionsModel(param1:ChoosesceneModel)
      {
         super();
         this._sv12108 = param1;
         this._xo6614 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("userSetupMenu.swf","UserMenuSeupAsset");
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
         this._wj10250 = new ComponentsModel(this._xo6614["btnClose"] as MovieClip);
         this._dr12330 = new Array();
         this._jh798 = 0;
         var _loc1_:ComponentsView = this._se3078(UseroptionsView._bw14176,this._mg14790);
         _loc1_.selected = Configuration._jo11635;
         var _loc2_:Boolean = Boolean(PersonModel._wk4913[CoreModel.data._jn11596]);
         this._se3078(UseroptionsView._bq892,this._wo6705).enabled = _loc2_;
         this._se3078(UseroptionsView._qi11934,this._jf4075).enabled = _loc2_;
         this._se3078(UseroptionsView._bj14425,this._ih14375);
         if(!CoreModel.data._ev848)
         {
            this._se3078(UseroptionsView._ql281,this._om4456);
         }
         if(CoreModel.data._tf16034(DatatypesModel._to2262))
         {
            this._se3078(UseroptionsView._sh10258,this._ki9451);
         }
         if(CoreModel.data._uf6036 == UserSession._kr15451)
         {
            this._se3078(UseroptionsView._fp4047,this._la10699).textColor = _qg15813;
         }
         else if(CoreModel.data._uf6036 == UserSession._ma6151)
         {
            this._se3078(UseroptionsView._ww14047,this._la10699);
         }
         else
         {
            this._se3078(UseroptionsView._yj2995,this._la10699).textColor = _qg15813;
         }
         if(!_loc2_)
         {
            this._ps10698 = new UIPanel();
            this._ps10698.backgroundColor = 14040361;
            this._ps10698.textColor = 16777215;
            this._ps10698.text = "gui.userSetupMenu.cantCustomizeCostume";
            this._ps10698._xe10297 = UITextField.TOP;
            this._xo6614.addChild(this._ps10698);
         }
         this._ch5809();
         this._wj10250.addEventListener(MouseEvent.CLICK,this._fu9496,false,0,true);
         addChild(this._xo6614);
      }
      
      private function _se3078(param1:UseroptionsView, param2:Function) : ComponentsView
      {
         var _loc3_:MovieClip = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("userSetupMenu.swf","BtnMenu");
         this._xo6614.addChild(_loc3_);
         var _loc4_:ComponentsView = new ComponentsView(_loc3_,param1.name);
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
         var _loc2_:ComponentsView = null;
         this._my10689.height = 40 + this._jh798 * 26;
         this._wj10250.y = this._wj10250.height - this._my10689.height - 2;
         for each(_loc1_ in this._dr12330)
         {
            _loc1_["button"].x = 5;
            _loc1_["button"].y = -5 - (this._jh798 - _loc1_["index"]) * 25;
         }
         if(this._ps10698)
         {
            _loc2_ = this._dr12330[UseroptionsView._qi11934.label]["button"];
            this._ps10698.x = _loc2_.x + _loc2_.width;
            this._ps10698.y = _loc2_.y - 5;
            this._ps10698._sl14850();
         }
      }
      
      private function _fu9496(param1:MouseEvent) : void
      {
         UIDialog.getInstance().remove(this);
         this._sv12108._aa181();
      }
      
      private function _mg14790(param1:MouseEvent) : void
      {
         if(Configuration._jo11635)
         {
            SoundMixer.soundTransform = new SoundTransform(1);
            (param1.target as ComponentsView).selected = false;
            Configuration._jo11635 = false;
         }
         else
         {
            SoundMixer.soundTransform = new SoundTransform(0);
            (param1.target as ComponentsView).selected = true;
            Configuration._jo11635 = true;
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
         switch(UserSession.getInstance()._uf6036)
         {
            case UserSession._kr15451:
               this._sv12108._vg8488();
               return;
            case UserSession._ma6151:
               this._sv12108._ym1355();
               return;
            case UserSession._lb6305:
               this._sv12108._sf13434();
               return;
            default:
               return;
         }
      }
   }
}

