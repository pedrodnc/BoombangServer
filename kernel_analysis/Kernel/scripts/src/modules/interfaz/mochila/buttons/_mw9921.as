package src.modules.interfaz.mochila.buttons
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import src.allData.scene.typeEscenarios._il6324;
   import src.allData.sceneObjects.dataObjects._gl6654;
   import src.allData.sceneObjects.dataObjects._px10602;
   import src.modules.interfaz.mochila.*;
   import src.utils.commonComponents.*;
   
   public class _mw9921 extends _il8523
   {
      
      public function _mw9921(param1:MovieClip, param2:Function, param3:_gl6654, param4:MovieClip, param5:_il6324, param6:Function, param7:_xu11531)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function _nc8386(param1:MovieClip) : void
      {
         super._nc8386(param1);
         _ip10190.visible = false;
      }
      
      override public function _bb2428(param1:MouseEvent) : void
      {
         var _loc2_:_px10602 = null;
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
               if(_ec6387 != null)
               {
                  _ec6387(_ww12215);
               }
               return;
            case _yp4182._pv6259:
               _loc2_ = _bl11315._yk9656(_ww12215._hw14129);
               if(_loc2_ == null)
               {
                  _cl6360();
               }
               return;
            case _yp4182._jw4744:
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
               _pe16126.gotoAndStop(_ax13262._jo8252);
               return;
            case _yp4182._pv6259:
               if(_ww12215._sl11700._jq9004)
               {
                  _pe16126.gotoAndStop(_ax13262._jo8252);
               }
               return;
            case _yp4182._jw4744:
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
               _pe16126.gotoAndStop(_ax13262._vk6252);
               return;
            case _yp4182._pv6259:
               _pe16126.gotoAndStop(_ax13262._vk6252);
               return;
            default:
               return;
         }
      }
      
      override protected function _qi4766() : Boolean
      {
         return _bl11315._xn7478 && _bv5605() && !_bl11315._pu4970;
      }
   }
}

