package src.modules.interfaz.mochila.buttons
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import src.allData.catObjects.*;
   import src.allData.scene.typeEscenarios._il6324;
   import src.allData.sceneObjects.dataObjects._gl6654;
   import src.modules.interfaz.mochila.*;
   import src.tv.boombang.application.global.gui.components.*;
   
   public class _se7910 extends _lu8707
   {
      
      private var _ul12329:_ca11681;
      
      private var _le1939:Function;
      
      public function _se7910(param1:MovieClip, param2:Function, param3:Function, param4:_gl6654, param5:MovieClip, param6:Function, param7:_xu11531, param8:_il6324)
      {
         this._ul12329 = new _ca11681();
         this._ul12329.text = _dp11732.getInstance()._ms14382(param4._rm6352).name;
         this._ul12329.backgroundColor = 6710886;
         this._ul12329.textColor = 14540253;
         this._ul12329._xe10297 = _wk9007.BOTTOM;
         this._ul12329._sl14850();
         this._ul12329.visible = false;
         this._ul12329.y = -23;
         this._ul12329.mouseEnabled = false;
         this._ul12329.mouseChildren = false;
         this._ul12329.enabled = false;
         param1.addChild(this._ul12329);
         this._le1939 = param3;
         super(param1,param2,param4,param5,param6,param7,param8);
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
            case _yp4182._jw4744:
               if(_ec6387 != null)
               {
                  _ec6387(_ww12215);
               }
               return;
            case _yp4182._pv6259:
               _cl6360();
               if(_ww12215._sl11700._jq9004)
               {
                  _pe16126.gotoAndStop(_pw3772);
               }
               return;
            default:
               return;
         }
      }
      
      override public function _ch1514() : void
      {
         this._ul12329.visible = true;
         this._le1939(_pe16126);
         switch(_bl5830)
         {
            case _yp4182._vj11806:
            case _yp4182._jw4744:
               _pe16126.gotoAndStop(_pw3772);
               return;
            case _yp4182._pv6259:
               if(_ww12215._sl11700._jq9004)
               {
                  _pe16126.gotoAndStop(_pw3772);
               }
               return;
            default:
               return;
         }
      }
      
      override public function _iv1460() : void
      {
         this._ul12329.visible = false;
         switch(_bl5830)
         {
            case _yp4182._jw4744:
            case _yp4182._vj11806:
               _pe16126.gotoAndStop(_ii14640);
               return;
            case _yp4182._pv6259:
               if(_ww12215._sl11700._jq9004)
               {
                  _pe16126.gotoAndStop(_ii14640);
               }
               return;
            default:
               return;
         }
      }
      
      override protected function _qi4766() : Boolean
      {
         return true;
      }
      
      override public function destroy() : void
      {
         this._ul12329.visible = false;
         super.destroy();
      }
   }
}

