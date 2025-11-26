package src.modules.interfaz.mochila.buttons
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.allData.scene.typeEscenarios._il6324;
   import src.allData.sceneObjects.dataObjects._gl6654;
   import src.modules.interfaz.mochila.*;
   
   public class _fd4423 extends _lu8707
   {
      
      protected var _fe14497:Boolean;
      
      protected var _im12039:_vu9089;
      
      protected var _im13636:Function;
      
      public function _fd4423(param1:MovieClip, param2:Function, param3:Function, param4:_gl6654, param5:MovieClip, param6:Function, param7:_xu11531, param8:_il6324, param9:_vu9089)
      {
         this._im13636 = param3;
         this._im12039 = param9;
         super(param1,param2,param4,param5,param6,param7,param8);
         _ex2183.visible = true;
         this._fe14497 = param8._xn7478 && _bv5605() && !param8._pu4970;
         this._iv1460();
      }
      
      override protected function _xx13833(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case MouseEvent.ROLL_OUT:
               this._iv1460();
               _mf3038(_ix10516);
               param1.stopImmediatePropagation();
               return;
            case MouseEvent.ROLL_OVER:
               this._ch1514();
               _mf3038(_ct5529);
               param1.stopImmediatePropagation();
               return;
            case MouseEvent.MOUSE_DOWN:
               this._bb2428(param1);
               param1.stopImmediatePropagation();
               return;
            case MouseEvent.MOUSE_UP:
               this._qr9138(param1);
               return;
            default:
               return;
         }
      }
      
      override public function _qr9138(param1:MouseEvent) : void
      {
         if(Boolean(this._fe14497) || _bl5830 == _yp4182._pv6259)
         {
            this._im13636(_ww12215);
         }
      }
      
      override public function _bb2428(param1:MouseEvent) : void
      {
         if(_il1123 == null)
         {
            return;
         }
         if(!_il1123._iy9936)
         {
            return;
         }
         switch(_bl5830)
         {
            case _yp4182._vj11806:
            case _yp4182._pv6259:
            case _yp4182._jw4744:
               if(_ec6387 != null)
               {
                  _ec6387(_ww12215);
               }
               return;
            default:
               return;
         }
      }
      
      override public function _ch1514() : void
      {
         switch(_bl5830)
         {
            case _yp4182._vj11806:
            case _yp4182._jw4744:
               if(this._fe14497)
               {
                  _pe16126.gotoAndStop(_ij4499);
               }
               else
               {
                  _pe16126.gotoAndStop(_ip4784);
               }
               return;
            case _yp4182._pv6259:
               if(_ww12215._sl11700._jq9004)
               {
                  _pe16126.gotoAndStop(_ij4499);
               }
               else
               {
                  _pe16126.gotoAndStop(_ip4784);
               }
               return;
            default:
               return;
         }
      }
      
      override public function _iv1460() : void
      {
         switch(_bl5830)
         {
            case _yp4182._jw4744:
            case _yp4182._vj11806:
               if(this._fe14497)
               {
                  _pe16126.gotoAndStop(_pk6053);
               }
               else
               {
                  _pe16126.gotoAndStop(_ip4784);
               }
               return;
            case _yp4182._pv6259:
               if(_ww12215._sl11700._jq9004)
               {
                  _pe16126.gotoAndStop(_pk6053);
               }
               else
               {
                  _pe16126.gotoAndStop(_ip4784);
               }
               return;
            default:
               return;
         }
      }
      
      override public function _ou8719() : Boolean
      {
         return true;
      }
      
      override protected function _qi4766() : Boolean
      {
         return true;
      }
      
      override public function set _bl5830(param1:int) : void
      {
         super._bl5830 = param1;
         this._iv1460();
      }
   }
}

