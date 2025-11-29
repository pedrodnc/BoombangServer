package src.modules.interfaz.mochila.buttons
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.allData.*;
   import src.allData.scene.typeEscenarios.SceneType;
   import src.allData.sceneObjects.dataObjects.DataobjectsModel;
   import src.modules.interfaz.mochila.*;
   import src.person.PersonAnimation;
   import src.utils.showObjects.*;
   
   public class ButtonsModel extends ButtonsView
   {
      
      protected static const textString:String = "mcCapsula";
      
      protected var _bl11315:SceneType;
      
      protected var _il1123:ShowobjectsController;
      
      protected var _dl3635:MovieClip;
      
      protected var _ww12215:DataobjectsModel;
      
      protected var _vr11988:Function;
      
      private var _cg13643:PersonAnimation;
      
      protected var _av6681:MochilaModel;
      
      public var textString1:String = "";
      
      public var textString2:String = "";
      
      private var count:int = 0;
      
      public function ButtonsModel(param1:MovieClip, param2:Function, param3:DataobjectsModel, param4:MovieClip, param5:Function, param6:MochilaModel, param7:SceneType)
      {
         this._ww12215 = param3;
         super(param1,param2);
         this._dl3635 = param4;
         this._vr11988 = param5;
         this._av6681 = param6;
         this._bl11315 = param7;
         _hq10834.visible = false;
         this._il1123 = new ShowobjectsController(_gh4578,param3._sl11700,count,param4,param3);
         this._il1123.show();
         this._gd1686();
      }
      
      override protected function _nc8386(param1:MovieClip) : void
      {
         super._nc8386(param1);
      }
      
      protected function _ry4278() : void
      {
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._il1123 != null)
         {
            this._il1123.destroy();
            this._il1123 = null;
         }
      }
      
      public function _di3019() : DataobjectsModel
      {
         return this._ww12215;
      }
      
      public function _yu10990() : void
      {
         if(this._il1123 != null)
         {
            this._il1123._yu10990();
         }
      }
      
      override protected function onClick() : void
      {
         _pe16126.addEventListener(MouseEvent.ROLL_OUT,this.stop);
         _pe16126.addEventListener(MouseEvent.ROLL_OVER,this.stop);
         _pe16126.addEventListener(MouseEvent.MOUSE_DOWN,this.stop);
         _pe16126.addEventListener(MouseEvent.MOUSE_UP,this.stop);
      }
      
      override protected function move() : void
      {
         _pe16126.removeEventListener(MouseEvent.ROLL_OUT,this.stop);
         _pe16126.removeEventListener(MouseEvent.ROLL_OVER,this.stop);
         _pe16126.removeEventListener(MouseEvent.MOUSE_DOWN,this.stop);
         _pe16126.removeEventListener(MouseEvent.MOUSE_UP,this.stop);
      }
      
      public function set _bl5830(param1:int) : void
      {
         this.count = param1;
         this._ti2671();
         this._ry4278();
      }
      
      public function get _bl5830() : int
      {
         return this.count;
      }
      
      public function set _cj15290(param1:PersonAnimation) : void
      {
         this._cg13643 = param1;
      }
      
      protected function _bv5605() : Boolean
      {
         return this._bl11315._ie14377(this._ww12215._sl11700.items7,this._ww12215._sl11700.items8);
      }
      
      private function _ti2671() : void
      {
         var count2:Boolean = false;
         var count:String = null;
         var count3:Boolean = false;
         var count1:String = null;
         var count2:Boolean = false;
         var count7:String = null;
         switch(this._bl5830)
         {
            case Mochila.count2:
               this._dy867 = true;
               if(!this._ou8719() || !this._ww12215._sl11700.isEnabled2)
               {
                  this._dy867 = false;
               }
               else if(this._cg13643 != null)
               {
                  count2 = Boolean(UserSession.getInstance().member);
                  count = UserSession.getInstance().name;
                  count3 = Boolean(this._ww12215._sl11700.member);
                  count1 = this._ww12215._sl11700.name;
                  count2 = Boolean(this._cg13643.member);
                  count7 = this._cg13643.name;
                  if(count3 && (!count2 || !count2))
                  {
                     this._dy867 = false;
                  }
               }
               return;
            case Mochila.count:
            case Mochila.count1:
               if(this._qi4766())
               {
                  this._dy867 = true;
               }
               else
               {
                  this._dy867 = false;
               }
               return;
            default:
               return;
         }
      }
      
      protected function _qi4766() : Boolean
      {
         return false;
      }
      
      override public function set _dy867(param1:Boolean) : void
      {
         _gh4578.alpha = param1 ? 1 : count;
         _pe16126.mouseEnabled = param1;
         _pe16126.enabled = param1;
      }
      
      override protected function stop(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case MouseEvent.ROLL_OUT:
               stop();
               _mf3038(_ix10516);
               break;
            case MouseEvent.ROLL_OVER:
               stop();
               _mf3038(_ct5529);
               break;
            case MouseEvent.MOUSE_DOWN:
               this._bb2428(param1);
               break;
            case MouseEvent.MOUSE_UP:
               this._qr9138(param1);
         }
         param1.stopImmediatePropagation();
      }
      
      public function _bb2428(param1:MouseEvent) : void
      {
      }
      
      public function _qr9138(param1:MouseEvent) : void
      {
      }
      
      public function _gd1686() : void
      {
         this._dy867 = this._ou8719();
      }
      
      public function _ou8719() : Boolean
      {
         return this._av6681._ul2385(this._ww12215);
      }
      
      public function _cl6360() : void
      {
         if(this._ww12215._sl11700.isEnabled2)
         {
            if(this._ww12215._sl11700.isEnabled1)
            {
               if(this._ou8719())
               {
                  this._av6681.add(this._ww12215,1);
                  this._gd1686();
                  if(this._vr11988 != null)
                  {
                     this._vr11988(this._ww12215);
                  }
               }
            }
            else if(this._ou8719())
            {
               if(this._vr11988 != null)
               {
                  this._vr11988(this._ww12215);
               }
            }
         }
      }
   }
}

