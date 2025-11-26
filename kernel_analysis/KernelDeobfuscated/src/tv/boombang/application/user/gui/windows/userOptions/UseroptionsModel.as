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
      
      private var items:Array;
      
      private var count:int;
      
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
         var count2:Object = null;
         if(this._wj10250)
         {
            this._wj10250.removeEventListener(MouseEvent.CLICK,this.move);
         }
         for each(count2 in this.items)
         {
            count2["button"].removeEventListener(MouseEvent.CLICK,count2.listener);
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
         this.items = new Array();
         this.count = 0;
         var count2:ComponentsView = this.setup(UseroptionsView._bw14176,this._mg14790);
         count2.selected = Configuration.isEnabled;
         var count:Boolean = Boolean(PersonModel._wk4913[CoreModel.data.count1]);
         this.setup(UseroptionsView._bq892,this._wo6705).enabled = count;
         this.setup(UseroptionsView._qi11934,this._jf4075).enabled = count;
         this.setup(UseroptionsView._bj14425,this._ih14375);
         if(!CoreModel.data.isEnabled2)
         {
            this.setup(UseroptionsView._ql281,this._om4456);
         }
         if(CoreModel.data._tf16034(DatatypesModel._to2262))
         {
            this.setup(UseroptionsView._sh10258,this._ki9451);
         }
         if(CoreModel.data._uf6036 == UserSession._kr15451)
         {
            this.setup(UseroptionsView._fp4047,this._la10699).textColor = _qg15813;
         }
         else if(CoreModel.data._uf6036 == UserSession._ma6151)
         {
            this.setup(UseroptionsView._ww14047,this._la10699);
         }
         else
         {
            this.setup(UseroptionsView._yj2995,this._la10699).textColor = _qg15813;
         }
         if(!count)
         {
            this._ps10698 = new UIPanel();
            this._ps10698.backgroundColor = 14040361;
            this._ps10698.textColor = 16777215;
            this._ps10698.text = "gui.userSetupMenu.cantCustomizeCostume";
            this._ps10698._xe10297 = UITextField.TOP;
            this._xo6614.addChild(this._ps10698);
         }
         this._ch5809();
         this._wj10250.addEventListener(MouseEvent.CLICK,this.move,false,0,true);
         addChild(this._xo6614);
      }
      
      private function setup(param1:UseroptionsView, param2:Function) : ComponentsView
      {
         var count3:MovieClip = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("userSetupMenu.swf","BtnMenu");
         this._xo6614.addChild(count3);
         var count1:ComponentsView = new ComponentsView(count3,param1.name);
         if(param2 != null)
         {
            count1.addEventListener(MouseEvent.MOUSE_DOWN,param2,false,0,true);
         }
         this.items[param1.label] = new Object();
         this.items[param1.label]["button"] = count1;
         this.items[param1.label]["listener"] = param2;
         this.items[param1.label]["index"] = this.count;
         ++this.count;
         return count1;
      }
      
      private function _ch5809() : void
      {
         var count2:Object = null;
         var count:ComponentsView = null;
         this._my10689.height = 40 + this.count * 26;
         this._wj10250.y = this._wj10250.height - this._my10689.height - 2;
         for each(count2 in this.items)
         {
            count2["button"].x = 5;
            count2["button"].y = -5 - (this.count - count2["index"]) * 25;
         }
         if(this._ps10698)
         {
            count = this.items[UseroptionsView._qi11934.label]["button"];
            this._ps10698.x = count.x + count.width;
            this._ps10698.y = count.y - 5;
            this._ps10698._sl14850();
         }
      }
      
      private function move(param1:MouseEvent) : void
      {
         UIDialog.getInstance().remove(this);
         this._sv12108.loadResource9();
      }
      
      private function _mg14790(param1:MouseEvent) : void
      {
         if(Configuration.isEnabled)
         {
            SoundMixer.soundTransform = new SoundTransform(1);
            (param1.target as ComponentsView).selected = false;
            Configuration.isEnabled = false;
         }
         else
         {
            SoundMixer.soundTransform = new SoundTransform(0);
            (param1.target as ComponentsView).selected = true;
            Configuration.isEnabled = true;
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
         this._sv12108.destroy1();
      }
      
      private function _om4456(param1:MouseEvent) : void
      {
         this._sv12108.verifyEmail();
      }
      
      private function _hf10881(param1:MouseEvent) : void
      {
         this._sv12108.connect();
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

