package src.modules.creacionObjetos.fichas
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import src.modules.creacionObjetos._sq10136;
   import src.modules.creacionObjetos.formulas.*;
   import src.modules.creacionObjetos.skin._kd11296;
   import src.utils.*;
   import src.utils.buttonsFichas.*;
   
   public class _ui10090 extends _sq10136
   {
      
      private static const _ne3758:int = 6;
      
      private var _yn12087:_lx11385;
      
      private var _ly13923:TextField;
      
      private var _dl3635:MovieClip;
      
      private var _gi11319:Function;
      
      private var _jo14611:Array;
      
      public function _ui10090(param1:MovieClip, param2:MovieClip, param3:Array, param4:_sw3551, param5:_kd11296, param6:Function, param7:String, param8:String, param9:String, param10:int = 1)
      {
         super(param1,param4,param5,param7,param8,param9,param10);
         this._dl3635 = param2;
         this._gi11319 = param6;
         this._jo14611 = param3;
         _xv14798._ts14032(_wy11576,param5._kk3956);
         this._ly13923 = param1["objetcsTitle"];
         _yq8362._bj8346(this._ly13923,"npc.items.specifications");
         _xv14798._ts14032(this._ly13923,param5._hx4022);
         this._ka12681();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _rd497();
         if(this._yn12087 != null)
         {
            this._yn12087.destroy();
            this._yn12087 = null;
         }
      }
      
      public function _wh14714() : void
      {
         if(this._gi11319 != null)
         {
            this._gi11319(_rm15087._uw10500);
         }
      }
      
      private function _wb11783(param1:_ts335, param2:Object = null) : void
      {
         var _loc3_:_mq8492 = _mq8492(param2._uy4972);
         if(this._gi11319 != null && _loc3_ != null)
         {
            this._gi11319(_ea13627,_loc3_);
         }
      }
      
      override protected function _ka12681() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         var _loc3_:_mq8492 = null;
         var _loc4_:Boolean = false;
         var _loc5_:_ts335 = null;
         var _loc6_:Object = null;
         var _loc8_:int = 0;
         _rd497();
         var _loc7_:Number = this._jo14611.length / _ne3758;
         _pn12868 = Math.abs(this._jo14611.length / _ne3758);
         if(_loc7_ > _pn12868)
         {
            ++_pn12868;
         }
         _dm16168 = new Array();
         while(_loc8_ < _ne3758)
         {
            _loc1_ = _loc8_ + (_qf8183 - 1) * _ne3758;
            _loc2_ = _kh2302[_sp11158 + _loc8_];
            _loc3_ = this._jo14611[_loc1_];
            _loc4_ = this._jo14611 != null && _loc1_ < this._jo14611.length;
            _loc6_ = new Object();
            if(_loc4_)
            {
               _loc6_._uy4972 = _loc3_;
               _loc5_ = new _ts335(_loc2_,_loc4_,_loc3_._co13951,this._dl3635,"",this._wb11783,_ax15887._co4881,_ax15887._kk3956,_ax15887._hx4022,_loc6_);
               _loc5_._tn9748(_wi3650,_wy11576,_ax15887._co4881,_ax15887._kk3956);
            }
            else
            {
               _loc5_ = new _ts335(_loc2_,_loc4_,null,this._dl3635,"",this._wb11783,_ax15887._co4881,_ax15887._kk3956,_ax15887._hx4022,_loc6_);
            }
            _dm16168.push(_loc5_);
            _loc8_++;
         }
         super._ka12681();
      }
   }
}

