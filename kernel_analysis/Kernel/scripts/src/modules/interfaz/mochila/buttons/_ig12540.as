package src.modules.interfaz.mochila.buttons
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import src.allData.scene.typeEscenarios._il6324;
   import src.allData.sceneObjects.dataObjects._gl6654;
   import src.modules.interfaz.mochila.*;
   
   public class _ig12540 extends _lu8707
   {
      
      public function _ig12540(param1:MovieClip, param2:Function, param3:_gl6654, param4:MovieClip, param5:Function, param6:_xu11531, param7:_il6324)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
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
               return;
            case _yp4182._pv6259:
               _cl6360();
               if(_ww12215._sl11700._jq9004)
               {
                  _pe16126.gotoAndStop(_gh6125);
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
               return;
            case _yp4182._pv6259:
               if(_ww12215._sl11700._jq9004)
               {
                  _pe16126.gotoAndStop(_gh6125);
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
               _pe16126.gotoAndStop(_ye1485);
               return;
            case _yp4182._pv6259:
               if(_ww12215._sl11700._jq9004)
               {
                  _pe16126.gotoAndStop(_ye1485);
               }
               return;
            default:
               return;
         }
      }
      
      override protected function _qi4766() : Boolean
      {
         return false;
      }
   }
}

