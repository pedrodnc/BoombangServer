package src.modules.interfaz.fichaKeko.paneles
{
   import flash.display.MovieClip;
   import src.modules.interfaz.fichaKeko.booble.*;
   import src.modules.interfaz.fichaKeko.interacciones.*;
   
   public class _gm3835 extends _pa7905
   {
      
      private static const _cd15817:String = "mcReport";
      
      public static const _ou1024:int = 8;
      
      private static const _oi9675:int = 0;
      
      private static const _de3357:int = 1;
      
      private static const _la11555:int = 2;
      
      private static const _rh16110:int = 4;
      
      private static const _yb5342:int = 5;
      
      private static const _fo4549:int = 6;
      
      private var _gw3116:Array;
      
      private var parameters:_wc13296;
      
      public function _gm3835(param1:MovieClip, param2:MovieClip, param3:_wc13296, param4:_aw14744)
      {
         var _loc5_:_ag8921 = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         super(param1,param2,param4);
         this.parameters = param3;
         this._gw3116 = new Array();
         while(_loc7_ < _ou1024)
         {
            if(_loc7_ != 3 && _loc7_ != 7)
            {
               _loc6_ = new Object();
               _loc6_.id = _loc7_;
               if(_loc7_ == _rh16110)
               {
                  _loc5_ = new _xs2724(null,param3._lp13903,param2[_cd15817 + _loc7_],this._uq13635,this._jn12388,this._jd8897,_loc6_);
               }
               else if(_loc7_ == _yb5342)
               {
                  _loc5_ = new _sn12530(null,param3._mn1709,param3._lp13903,param2[_cd15817 + _loc7_],this._uq13635,this._jn12388,this._jd8897,_loc6_);
               }
               else
               {
                  _loc5_ = new _ka8542(null,param3._lp13903,param2[_cd15817 + _loc7_],this._uq13635,this._jn12388,this._jd8897,_loc6_);
               }
               this._gw3116.push(_loc5_);
            }
            _loc7_++;
         }
         if(!param3._bl11315._xn7478)
         {
            _ag8921(this._gw3116[_de3357])._hu12389();
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:_ag8921 = null;
         super.destroy();
         for each(_loc1_ in this._gw3116)
         {
            if(_loc1_ != null)
            {
               _loc1_.destroy();
               _loc1_ = null;
            }
         }
         this._gw3116.length = 0;
      }
      
      private function _jn12388(param1:_ag8921, param2:Object) : void
      {
         switch(param2.id)
         {
            case _la11555:
               _vc4824._bt10174(_kh13783._eb2730);
               return;
            case _rh16110:
               _vc4824._bt10174(_kh13783._xy14832);
               return;
            case _yb5342:
               _vc4824._bt10174(_kh13783._yd2540);
               return;
            case _fo4549:
               _vc4824._bt10174(_kh13783._vw3046);
               return;
            default:
               return;
         }
      }
      
      private function _jd8897(param1:_ag8921, param2:Object) : void
      {
         if(param2.id == _oi9675)
         {
            return;
         }
         _vc4824._tj8775();
      }
      
      private function _uq13635(param1:_ag8921, param2:Object) : void
      {
         switch(param2.id)
         {
            case _oi9675:
               this.parameters._ap15728();
               return;
            case _de3357:
               this.parameters._vs11457(this.parameters._lp13903._jr9311,this.parameters._lp13903.id);
               return;
            case _la11555:
               this.parameters._ph4898(this.parameters._lp13903);
               return;
            case _rh16110:
               if(this.parameters._lp13903._nw13075)
               {
                  this.parameters._ou4685(this.parameters._lp13903.id);
               }
               return;
            case _yb5342:
               this.parameters._ya380(this.parameters._lp13903.id);
               param1._mr15523();
               return;
            case _fo4549:
               this.parameters._bs5131(this.parameters._lp13903);
               return;
            default:
               return;
         }
      }
      
      override public function _ha80() : void
      {
         var _loc1_:_ag8921 = null;
         for each(_loc1_ in this._gw3116)
         {
            _loc1_._mr15523();
         }
      }
   }
}

