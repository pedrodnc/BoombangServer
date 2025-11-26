package src.modules.chooseIsla
{
   import flash.display.*;
   import src.utils.*;
   
   public class ChooseislaModel
   {
      
      private static const _ke5367:String = "mcCapsulaInfo";
      
      private static const _kq14510:String = "tfAyuda";
      
      private static const _mj3301:String = "mcCapsulaAyuda";
      
      private static const _ge15838:String = "mcCapsulaAyudaColor";
      
      private static const _ip727:String = "mcIconoAyuda";
      
      private static const _uu15162:String = "mcIconoAlerta";
      
      private static const _ca8193:String = "white";
      
      private static const _jk10087:String = "black";
      
      private static const _vf9803:uint = 16777215;
      
      private static const _ms9511:uint = 16776960;
      
      private static const _dq8991:uint = 3448288;
      
      private static const _ow11874:uint = 0;
      
      private var _lw8117:MovieClip;
      
      private var _bx8167:ChooseislaController;
      
      public function ChooseislaModel(param1:MovieClip, param2:ChooseislaController)
      {
         super();
         this._bx8167 = param2;
         this._lw8117 = MovieClip(param1[_ke5367]);
      }
      
      public function destroy() : void
      {
         this._lw8117 = null;
         this._bx8167 = null;
      }
      
      public function _nr9438(param1:String) : void
      {
         this._bo13783(param1,_ca8193,_dq8991);
      }
      
      public function _bd7415(param1:String) : void
      {
         this._bo13783(param1,_jk10087,_vf9803);
      }
      
      private function _bo13783(param1:String, param2:String, param3:uint) : void
      {
         UtilsUtils._xl9503(this._lw8117[_kq14510],param1);
         UtilsUtils._np7275(this._lw8117[_kq14510],param3);
         this._lw8117.gotoAndStop(param2);
         this._db5584();
      }
      
      public function _db5584() : void
      {
         this._lw8117.visible = true;
      }
      
      public function _hu12389() : void
      {
         this._lw8117.visible = false;
      }
   }
}

