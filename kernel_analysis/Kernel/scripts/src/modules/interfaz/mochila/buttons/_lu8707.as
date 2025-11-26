package src.modules.interfaz.mochila.buttons
{
   import flash.display.MovieClip;
   import src.allData.scene.typeEscenarios._il6324;
   import src.allData.sceneObjects.dataObjects._gl6654;
   import src.modules.interfaz.mochila.*;
   import src.utils.*;
   
   public class _lu8707 extends _dg12631
   {
      
      public function _lu8707(param1:MovieClip, param2:Function, param3:_gl6654, param4:MovieClip, param5:Function, param6:_xu11531, param7:_il6324)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function _ry4278() : void
      {
         _ip10190.visible = true;
         switch(_bl5830)
         {
            case _yp4182._vj11806:
            case _yp4182._jw4744:
               _yq8362._xl9503(_xp11822,String(_ww12215.cant));
               return;
            case _yp4182._pv6259:
               _yq8362._xl9503(_xp11822,String(_av6681._xq15842(_ww12215)));
               return;
            default:
               return;
         }
      }
      
      override protected function _nc8386(param1:MovieClip) : void
      {
         super._nc8386(param1);
         this._ry4278();
      }
   }
}

