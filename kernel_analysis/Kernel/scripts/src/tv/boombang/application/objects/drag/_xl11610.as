package src.tv.boombang.application.objects.drag
{
   import flash.events.*;
   import src.allData.catObjects.*;
   import src.allData.color.*;
   import src.allData.mochila.*;
   import src.allData.scene.typeEscenarios._il6324;
   import src.allData.sceneObjects.dataObjects.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.commons.utils.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.objects.*;
   
   public class _xl11610
   {
      
      public static var _jc11265:int = 0;
      
      public static var _iu13042:int = 1;
      
      private var _qr7703:_il6324;
      
      private var _oi9541:Function;
      
      private var _tb5694:_px10602;
      
      private var _nm6639:int;
      
      private var _pl15318:int;
      
      private var _ej376:int;
      
      private var _cf10731:_ut10448;
      
      public function _xl11610(param1:_il6324)
      {
         super();
         this._qr7703 = param1;
      }
      
      public function startDrag(param1:_px10602, param2:Function = null, param3:int = 0, param4:int = 0, param5:int = 0) : void
      {
         _tq2768._ps6769().addEventListener(MouseEvent.MOUSE_UP,this.stopDragging);
         this._oi9541 = param2;
         this._tb5694 = param1;
         this._nm6639 = this._nm6639;
         this._pl15318 = param5;
         this._ej376 = param3;
         if(this._cf10731)
         {
            if(this._ej376 == _xl11610._jc11265)
            {
               this._qr7703._in8371((this._tb5694 as _hl15578)._vf11740,(this._tb5694 as _hl15578)._sl11700._vm6245);
            }
            this._cf10731.destroy();
         }
         switch(param1._sl11700._dv13852)
         {
            case _uq7753._km4276:
               this._cf10731 = new _er12035(param1,this._qr7703,param3,param4,param5);
               break;
            case _uq7753._fc8359:
            case _uq7753._dt8554:
            case _uq7753._sr6196:
               this._cf10731 = new _yc3885(param1,this._qr7703,param3,param4,param5);
               break;
            default:
               this._cf10731 = new _ut10448(param1,this._qr7703,param3,param4,param5);
         }
         if(param1._hw14129 == -1)
         {
            this._cf10731._ho5101();
            _kr10933._xo2736(_te13472._ia1486,this._jo10065);
            _cp9761._il2415(param1._rm6352);
         }
         if(this._ej376 == _xl11610._jc11265)
         {
            this._qr7703._ca9348((param1 as _hl15578)._vf11740);
         }
         _gb14411.getInstance()._rl15912._am11997();
      }
      
      public function get _hw14129() : int
      {
         if(this._tb5694)
         {
            return this._tb5694._hw14129;
         }
         return 0;
      }
      
      private function stopDragging(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         _tq2768._ps6769().removeEventListener(MouseEvent.MOUSE_UP,this.stopDragging);
         _kr10933._mw12849(_te13472._ia1486,this._jo10065);
         this._cf10731.destroy();
         if(this._ej376 == _xl11610._jc11265)
         {
            this._qr7703._in8371((this._tb5694 as _hl15578)._vf11740,(this._tb5694 as _hl15578)._sl11700._vm6245);
         }
         if(this._tb5694._hw14129 != -1 && Boolean(this._cf10731._sh5247) && !(Boolean(_gb14411.getInstance()._rl15912.visible) && Boolean(_gb14411.getInstance()._rl15912.hitTestPoint(this._cf10731.mouseX,this._cf10731.mouseY))))
         {
            this._oi9541(this._tb5694,this._cf10731._pg158,this._cf10731._ai997,this._cf10731._rt14669);
         }
         this._cf10731 = null;
         _gb14411.getInstance()._rl15912.visible = true;
      }
      
      public function destroy() : void
      {
         _tq2768._ps6769().removeEventListener(MouseEvent.MOUSE_UP,this.stopDragging);
         if(this._cf10731)
         {
            if(this._ej376 == _xl11610._jc11265)
            {
               this._qr7703._in8371((this._tb5694 as _hl15578)._vf11740,(this._tb5694 as _hl15578)._sl11700._vm6245);
            }
            this._cf10731.destroy();
         }
         this._cf10731 = null;
         this._tb5694 = null;
      }
      
      private function _jo10065(param1:_bc9270) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Array = null;
         var _loc4_:_jv10258 = null;
         var _loc5_:Array = null;
         var _loc6_:_uq7753 = null;
         var _loc7_:_px10602 = null;
         if(this._tb5694)
         {
            _loc2_ = param1._qp16092(1);
            if(_loc2_ == _te13472._vk11166)
            {
               _loc3_ = param1.items.concat();
               _loc4_ = _jv10258.parse(_loc3_);
               if(_loc4_ != null)
               {
                  _loc5_ = _pn12847._kl14169(_loc4_._af6638,_loc4_._vw7719);
                  _loc6_ = _dp11732.getInstance()._ms14382(_loc4_._rm6352);
                  _loc7_ = new _px10602(_loc4_._hw14129,_loc4_._rm6352,_loc4_.flip,_loc4_._mp5283,_loc5_,_loc6_,_loc4_._uf1803);
                  if(this._tb5694._rm6352 == _loc7_._rm6352)
                  {
                     this._tb5694.destroy();
                     _kr10933._mw12849(_te13472._ia1486,this._jo10065);
                     this._tb5694 = _loc7_;
                     this.startDrag(this._tb5694,this._oi9541,this._ej376,this._nm6639,this._pl15318);
                  }
               }
            }
         }
      }
   }
}

