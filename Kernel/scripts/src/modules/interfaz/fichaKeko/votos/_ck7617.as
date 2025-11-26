package src.modules.interfaz.fichaKeko.votos
{
   import flash.display.*;
   import flash.text.*;
   import src.allData.*;
   import src.modules.interfaz.fichaKeko.booble.*;
   import src.modules.interfaz.fichaKeko.paneles._pa7905;
   import src.utils.*;
   
   public class _ck7617 extends _pa7905
   {
      
      public static const _my262:int = 6;
      
      private static const _bn7980:String = "mcVotesRestantes";
      
      private static const _lo7073:String = "tfVotosRestantes";
      
      private static const _tk7767:String = "tfVotos";
      
      private var parameters:_cg14114;
      
      private var _dp13650:int;
      
      private var _co7873:MovieClip;
      
      private var _bj12771:TextField;
      
      private var _gm3634:TextField;
      
      private var _gi14244:Array;
      
      public function _ck7617(param1:MovieClip, param2:MovieClip, param3:_cg14114, param4:_aw14744)
      {
         this._gi14244 = new Array();
         super(param1,param2,param4);
         this.parameters = param3;
         this._co7873 = MovieClip(param2.getChildByName(_bn7980));
         this._bj12771 = TextField(this._co7873.getChildByName(_lo7073));
         this._gm3634 = TextField(param2.getChildByName(_tk7767));
         this._dp13650 = -1;
         this._va4204();
         _yq8362._xl9503(this._gm3634,param3._im12039._uc14610);
         if(param3._qo15312)
         {
            this._co7873.visible = false;
         }
         else
         {
            this._co7873.visible = true;
         }
         this._yw581();
         this._bt10245();
      }
      
      public function _va4204() : void
      {
         _yq8362._xl9503(this._bj12771,String(_hv12530.getInstance()._uq11439));
      }
      
      private function _yw581() : void
      {
         var _loc1_:_ks612 = null;
         var _loc3_:int = 0;
         var _loc2_:Array = [this.parameters._im12039._lf7281,this.parameters._im12039._qj6005,this.parameters._im12039._ib1951,this.parameters._im12039._bs15657,this.parameters._im12039._he10005,this.parameters._im12039._rd10864];
         while(_loc3_ < _my262 / 2)
         {
            _loc1_ = new _ks612(_loc3_,_hg11010,this._eu12148,this.parameters._lp13903,_loc2_[_loc3_],_loc2_[_loc3_ + _my262 / 2],this.parameters._qo15312);
            this._gi14244.push(_loc1_);
            _loc3_++;
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:_ks612 = null;
         var _loc2_:int = 0;
         super.destroy();
         while(_loc2_ < this._gi14244.length)
         {
            _loc1_ = _ks612(this._gi14244[_loc2_]);
            _loc1_.destroy();
            _loc1_ = null;
            _loc2_++;
         }
      }
      
      private function _eu12148(param1:int) : void
      {
         var _loc2_:int = 0;
         if(_hv12530.getInstance()._uq11439 > 0)
         {
            if(param1 < 3)
            {
               _loc2_ = 1;
            }
            else
            {
               _loc2_ = -1;
            }
            this.parameters._dv14621._bu7133(this.parameters._lp13903.id,1 + param1 % (_my262 / 2),_loc2_);
            --_hv12530.getInstance()._uq11439;
            this._va4204();
         }
         else
         {
            _vc4824._ak11554(_vs7032._wg13189);
         }
      }
      
      public function _bt10245() : void
      {
         var _loc1_:_ks612 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._gi14244.length)
         {
            _loc1_ = _ks612(this._gi14244[_loc2_]);
            _loc1_.refresh();
            _loc2_++;
         }
      }
   }
}

