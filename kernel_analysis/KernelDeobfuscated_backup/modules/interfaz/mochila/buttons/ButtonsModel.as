package src.modules.interfaz.mochila.buttons
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.allData.*;
   import src.allData.scene.typeEscenarios._il6324;
   import src.allData.sceneObjects.dataObjects._gl6654;
   import src.modules.interfaz.mochila.*;
   import src.person._um8624;
   import src.utils.showObjects.*;
   
   public class _dg12631 extends _ta9461
   {
      
      protected static const _ud6549:String = "mcCapsula";
      
      protected var _bl11315:_il6324;
      
      protected var _il1123:_oi4058;
      
      protected var _dl3635:MovieClip;
      
      protected var _ww12215:_gl6654;
      
      protected var _vr11988:Function;
      
      private var _cg13643:_um8624;
      
      protected var _av6681:_xu11531;
      
      public var _xj8555:String = "";
      
      public var _dh14737:String = "";
      
      private var _fs14584:int = 0;
      
      public function _dg12631(param1:MovieClip, param2:Function, param3:_gl6654, param4:MovieClip, param5:Function, param6:_xu11531, param7:_il6324)
      {
         this._ww12215 = param3;
         super(param1,param2);
         this._dl3635 = param4;
         this._vr11988 = param5;
         this._av6681 = param6;
         this._bl11315 = param7;
         _hq10834.visible = false;
         this._il1123 = new _oi4058(_gh4578,param3._sl11700,_cl2209,param4,param3);
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
      
      public function _di3019() : _gl6654
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
      
      override protected function _nc2422() : void
      {
         _pe16126.addEventListener(MouseEvent.ROLL_OUT,this._xx13833);
         _pe16126.addEventListener(MouseEvent.ROLL_OVER,this._xx13833);
         _pe16126.addEventListener(MouseEvent.MOUSE_DOWN,this._xx13833);
         _pe16126.addEventListener(MouseEvent.MOUSE_UP,this._xx13833);
      }
      
      override protected function _al10937() : void
      {
         _pe16126.removeEventListener(MouseEvent.ROLL_OUT,this._xx13833);
         _pe16126.removeEventListener(MouseEvent.ROLL_OVER,this._xx13833);
         _pe16126.removeEventListener(MouseEvent.MOUSE_DOWN,this._xx13833);
         _pe16126.removeEventListener(MouseEvent.MOUSE_UP,this._xx13833);
      }
      
      public function set _bl5830(param1:int) : void
      {
         this._fs14584 = param1;
         this._ti2671();
         this._ry4278();
      }
      
      public function get _bl5830() : int
      {
         return this._fs14584;
      }
      
      public function set _cj15290(param1:_um8624) : void
      {
         this._cg13643 = param1;
      }
      
      protected function _bv5605() : Boolean
      {
         return this._bl11315._ie14377(this._ww12215._sl11700._fv13476,this._ww12215._sl11700._ou11620);
      }
      
      private function _ti2671() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:Boolean = false;
         var _loc6_:String = null;
         switch(this._bl5830)
         {
            case _yp4182._pv6259:
               this._dy867 = true;
               if(!this._ou8719() || !this._ww12215._sl11700._jq9004)
               {
                  this._dy867 = false;
               }
               else if(this._cg13643 != null)
               {
                  _loc1_ = Boolean(_hv12530.getInstance().member);
                  _loc2_ = _hv12530.getInstance().name;
                  _loc3_ = Boolean(this._ww12215._sl11700.member);
                  _loc4_ = this._ww12215._sl11700.name;
                  _loc5_ = Boolean(this._cg13643.member);
                  _loc6_ = this._cg13643.name;
                  if(_loc3_ && (!_loc1_ || !_loc5_))
                  {
                     this._dy867 = false;
                  }
               }
               return;
            case _yp4182._jw4744:
            case _yp4182._vj11806:
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
         _gh4578.alpha = param1 ? 1 : _qk12405;
         _pe16126.mouseEnabled = param1;
         _pe16126.enabled = param1;
      }
      
      override protected function _xx13833(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case MouseEvent.ROLL_OUT:
               _iv1460();
               _mf3038(_ix10516);
               break;
            case MouseEvent.ROLL_OVER:
               _ch1514();
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
         if(this._ww12215._sl11700._jq9004)
         {
            if(this._ww12215._sl11700._au2864)
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

