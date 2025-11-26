package src.modules.enterScene
{
   import flash.display.*;
   import flash.events.EventDispatcher;
   import src.allData.scene.typeEscenarios.*;
   import src.config.*;
   import src.loaders.*;
   import src.person.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _vd678 extends EventDispatcher
   {
      
      private static var _ix11165:Boolean = false;
      
      private var _io2616:Boolean;
      
      public function _vd678()
      {
         super();
      }
      
      public static function _vn628() : Array
      {
         return [_mk16025._xs4489,_mk16025._lv8941,_mk16025._wb10734,_mk16025._ml11032,_mk16025._sr9067,_mk16025._hb15107,_mk16025._ql6999,_mk16025._vl11343,_mk16025._vf15119,_mk16025._jm5162,_mk16025._su13020,_mk16025._ul4936,_mk16025._jy5402,_mk16025._ym5395,_mk16025._up7733,_mk16025._ov10880];
      }
      
      public function _cm2297(param1:int, param2:int, param3:String) : void
      {
         var _loc4_:Array = _vn628();
         this._io2616 = false;
         (_lh7543.get(_vy3822) as _vy3822)._vv13029(["concursos.swf"],this._hj11501);
         _loc4_.push(_it11308._dl10426(param1) + param2 + _it11308._fb12377(param1));
         _loc4_.push(_it11308._dl10426(param1) + param2);
         if(_cc7688._io3885)
         {
            _loc4_.push(_mk16025._nn13134);
         }
         _sa9254.getInstance()._qx1635();
         _sa9254.getInstance()._bi8517(param3);
         _sa9254.getInstance().addElements(_loc4_);
         _sa9254.getInstance().start();
      }
      
      private function _hj11501() : void
      {
         this._io2616 = true;
      }
      
      public function _kn5152() : Boolean
      {
         if(Boolean(this._io2616) && Boolean(_sa9254.getInstance()._tg7298()))
         {
            if(!_ix11165)
            {
               _ga7956.getInstance()._iv14659(_sa9254.getInstance()._xb9567(_mk16025._up7733) as MovieClip);
            }
            _ix11165 = true;
            return true;
         }
         return false;
      }
   }
}

