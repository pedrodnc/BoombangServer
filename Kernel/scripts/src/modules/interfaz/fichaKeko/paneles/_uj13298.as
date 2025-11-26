package src.modules.interfaz.fichaKeko.paneles
{
   import flash.display.*;
   import src.modules.interfaz.fichaKeko._kc6395;
   import src.modules.interfaz.fichaKeko.booble._aw14744;
   
   public class _uj13298
   {
      
      private static const _ca3731:String = "mcTab";
      
      private static const _oh3640:int = 7;
      
      private const _ku9997:Array;
      
      private var _ai12303:MovieClip;
      
      private var _cw12912:_kc6395;
      
      private var _es2033:Array;
      
      private var _ng14832:Function;
      
      private var _kg5958:_aw14744;
      
      public function _uj13298(param1:MovieClip, param2:_kc6395, param3:Function, param4:_aw14744)
      {
         var _loc5_:Object = null;
         var _loc6_:_kl5388 = null;
         var _loc7_:int = 0;
         this._ku9997 = [4,5,6];
         super();
         this._ai12303 = param1;
         this._cw12912 = param2;
         this._ng14832 = param3;
         this._es2033 = new Array();
         this._kg5958 = param4;
         while(_loc7_ < _oh3640)
         {
            _loc5_ = new Object();
            _loc5_.id = _loc7_;
            _loc6_ = new _kl5388(_loc7_,MovieClip(this._ai12303.getChildByName(_ca3731 + _loc7_)),param2,this._rx12662,this._aj616,this._rr8320,_loc5_);
            this._es2033.push(_loc6_);
            if(_loc7_ == 0)
            {
               _loc6_.selected = true;
            }
            _loc7_++;
         }
      }
      
      private function _aj616(param1:_kl5388, param2:Object) : void
      {
         var _loc3_:* = "fichaPerson." + param1.id + ".help";
         this._kg5958._qg5125(_loc3_);
      }
      
      private function _rr8320(param1:_kl5388, param2:Object) : void
      {
         this._kg5958._tj8775();
      }
      
      public function _vg12573() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._es2033.length)
         {
            this._es2033[_loc1_]._db5584();
            _loc1_++;
         }
      }
      
      public function _yp2623() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._ku9997.length)
         {
            if(this._ku9997[_loc1_] > 0 && this._ku9997[_loc1_] < this._es2033.length)
            {
               this._es2033[this._ku9997[_loc1_]]._hu12389();
            }
            _loc1_++;
         }
      }
      
      public function _dn10392(param1:_kc6395) : void
      {
         var _loc2_:_kl5388 = null;
         var _loc3_:int = 0;
         this._cw12912 = param1;
         while(_loc3_ < this._es2033.length)
         {
            _loc2_ = _kl5388(this._es2033[_loc3_]);
            _loc2_._dn10392(param1);
            _loc3_++;
         }
      }
      
      private function _uc11169() : void
      {
         var _loc1_:_kl5388 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._es2033.length)
         {
            _loc1_ = _kl5388(this._es2033[_loc2_]);
            _loc1_.selected = false;
            _loc2_++;
         }
      }
      
      private function _rx12662(param1:_kl5388, param2:Object) : void
      {
         if(!param1.selected)
         {
            this._uc11169();
            if(this._ng14832 != null)
            {
               this._ng14832(param2.id);
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:_kl5388 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._es2033.length)
         {
            _loc1_ = _kl5388(this._es2033[_loc2_]);
            _loc1_.destroy();
            _loc1_ = null;
            _loc2_++;
         }
         this._es2033.length = 0;
      }
   }
}

