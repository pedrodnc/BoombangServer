package src.modules.interfaz.fichaKeko.flecha
{
   import flash.display.MovieClip;
   import src.allData.*;
   import src.allData.scene.typeEscenarios.*;
   import src.modules.bpad.*;
   import src.modules.interfaz.fichaKeko.booble.*;
   import src.modules.interfaz.fichaKeko.fichaSelItemInteraction.*;
   import src.modules.interfaz.fichaKeko.interacciones.*;
   import src.modules.interfaz.fichaKeko.paneles._ig8909;
   import src.modules.interfaz.fichaKeko.paneles._pa7905;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.interactions.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas.*;
   
   public class _ye3902 extends _pa7905
   {
      
      public static const _lv5047:int = 100;
      
      public static const _gf6913:int = 17;
      
      private static const _jg7709:String = "mcSelPunch";
      
      private static const _ax12910:String = "mcSelCoco";
      
      private static const _mk9021:String = "mcInteraction";
      
      private static const _bx575:String = "mcDoblon";
      
      public static const _cn2881:int = 7;
      
      public static const _lo11347:int = 0;
      
      public static const _nm6938:int = 1;
      
      public static const _dp8550:int = 2;
      
      public static const _hr12188:int = 3;
      
      public static const _lekv82:int = 4;
      
      public static const _st15890:int = 5;
      
      public static const _yt8729:int = 6;
      
      private var _gw3116:Array;
      
      private var _cy6485:_br13243;
      
      private var parameters:_ig8909;
      
      private var _pg3581:_kg183;
      
      private var _qb15276:_kg183;
      
      private var _sr12883:_si11345;
      
      public function _ye3902(param1:MovieClip, param2:MovieClip, param3:_ig8909, param4:_aw14744)
      {
         var _loc5_:_ag8921 = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         super(param1,param2,param4);
         this.parameters = param3;
         this._cy6485 = new _br13243(param2[_bx575]);
         this._gw3116 = new Array();
         while(_loc7_ < _cn2881)
         {
            _loc6_ = new Object();
            _loc6_.id = _loc7_;
            if(_loc7_ == _lekv82)
            {
               _loc5_ = new _we6794(_loc7_,param3._qa2185,this._cy6485,param3._dr1773,param3._bl11315,param2[_mk9021 + _loc7_],this._tw10855,null,null,_loc6_);
            }
            else if(_loc7_ == _st15890)
            {
               _loc5_ = new _bg71(_loc7_,param3._qa2185,this._cy6485,param3._dr1773,param2[_mk9021 + _loc7_],this._tw10855,null,null,_loc6_);
            }
            else
            {
               _loc5_ = new _go6159(_loc7_,param3._qa2185,param3._dr1773,param2[_mk9021 + _loc7_],this._tw10855,this._xa10073,this._dk936,_loc6_);
            }
            this._gw3116.push(_loc5_);
            _loc7_++;
         }
         this._pg3581 = new _kg183(param2[_jg7709],this._vx5663);
         this._qb15276 = new _kg183(param2[_ax12910],this._ky1127);
         if(!param3._nl14806)
         {
            this._qb15276._hu12389();
         }
         this._ha80();
      }
      
      private function _dk936(param1:_ag8921, param2:Object) : void
      {
         if(param2.id == _hr12188)
         {
            _vc4824._tj8775();
         }
      }
      
      private function _xa10073(param1:_ag8921, param2:Object) : void
      {
         if(param2.id == _hr12188)
         {
            _vc4824._bt10174(_kh13783._qg13284);
         }
      }
      
      private function _vx5663() : void
      {
         this._qd4795();
         this._sr12883 = new _si11345(_gf6913,_hv12530.getInstance()._lg11278 + 1,this._iv13019,this.parameters._nt221,new _ox15379("",[]),null);
         this._sr12883._db5584(550,168);
      }
      
      private function _iv13019(param1:_kg183, param2:Object) : void
      {
         this.parameters._dv14621._mu5601(param2.id);
         this._ha80();
         this._qd4795();
      }
      
      private function _ky1127() : void
      {
         this._qd4795();
         this._sr12883 = new _si11345(10,_hv12530.getInstance()._bc5053 + 1,this._rc3367,this.parameters._nk12964,new _ox15379("",[]),null);
         this._sr12883._db5584(550,168);
      }
      
      private function _rc3367(param1:_kg183, param2:Object) : void
      {
         this.parameters._dv14621._xs15118(param2.id);
         this._ha80();
         this._qd4795();
      }
      
      override public function destroy() : void
      {
         var _loc1_:_go6159 = null;
         super.destroy();
         for each(_loc1_ in this._gw3116)
         {
            _loc1_.destroy();
            _loc1_ = null;
         }
         if(this._cy6485 != null)
         {
            this._cy6485.destroy();
            this._cy6485 = null;
         }
         if(this._pg3581 != null)
         {
            this._pg3581.destroy();
            this._pg3581 = null;
         }
         if(this._qb15276 != null)
         {
            this._qb15276.destroy();
            this._qb15276 = null;
         }
         this._qd4795();
         this._gw3116.length = 0;
      }
      
      private function _qd4795() : void
      {
         if(this._sr12883 != null)
         {
            this._sr12883.destroy();
            this._sr12883 = null;
         }
      }
      
      private function _tw10855(param1:_ag8921, param2:Object) : void
      {
         var _loc3_:int = 0;
         switch(param2.id)
         {
            case _lo11347:
            case _nm6938:
            case _dp8550:
               if(param1.getState())
               {
                  _yp4672._ly9008(_ya5360._ob13942(param2.id + 1),this.parameters._xn13211._jr9311);
                  this.parameters._re4969(param2.id,this.parameters._xn13211);
               }
               return;
            case _hr12188:
               _id1792._np546._xv9548(this.parameters._xn13211);
               return;
            case _st15890:
               if(param1.getState())
               {
                  _loc3_ = int(this.parameters._qa2185._ob10395(_qb57._fm10949));
                  if(_hv12530.getInstance()._ea4493 >= _loc3_)
                  {
                     if(!(this.parameters._bl11315 is _bq10515) || this.parameters._bl11315._nr6929._fq658 != _sp5732._xa1375)
                     {
                        this.parameters._dv14621._kh4754(this.parameters._dr1773._jr9311,this.parameters._xn13211._jr9311);
                     }
                  }
                  else
                  {
                     this.parameters._lp469._uk6277();
                     _vc4824._ak11554(_vs7032._eb2553);
                  }
               }
               return;
            case _yt8729:
               this.parameters._uf2723();
               return;
            case _lekv82:
               this.parameters._dv14621._ds7884(this.parameters._xn13211._jr9311);
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

