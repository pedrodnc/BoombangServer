package src.modules.noticias
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _ql3702
   {
      
      private static const TF_TITULO:String = "tfText_Titulo";
      
      private static const _al6527:String = "tfText_Fecha";
      
      private var _lc10624:int;
      
      private var _ep15175:int;
      
      private var _tf556:String;
      
      private var _px13007:String;
      
      private var _cd12533:MovieClip;
      
      private var _ni7706:_qo7568;
      
      private var _oi9541:Function;
      
      public function _ql3702(param1:MovieClip, param2:int, param3:int, param4:String, param5:String, param6:Function)
      {
         super();
         this._lc10624 = param2;
         this._ep15175 = param3;
         this._tf556 = param4;
         this._px13007 = param5;
         this._cd12533 = param1;
         this._oi9541 = param6;
         param1.visible = true;
         this._qx2504();
      }
      
      private function _qx2504() : void
      {
         this._ni7706 = new _qo7568(this._cd12533,this._gt7388,this._tf556);
         var _loc1_:TextField = this._cd12533[TF_TITULO];
         _loc1_.mouseEnabled = false;
         _yq8362._xl9503(this._cd12533[TF_TITULO],this._tf556);
         _loc1_ = this._cd12533[_al6527];
         _loc1_.mouseEnabled = false;
         var _loc2_:String = this._px13007.slice(0,10);
         var _loc3_:Array = _loc2_.split("-");
         if(_loc3_.length > 0)
         {
            _loc2_ = _loc3_[2] + "-" + _loc3_[1] + "-" + _loc3_[0];
         }
         _yq8362._xl9503(this._cd12533[_al6527],_loc2_);
      }
      
      private function _gt7388() : void
      {
         this._oi9541(this._lc10624,this._ep15175);
      }
      
      public function destroy() : void
      {
         if(this._ni7706 == null)
         {
            return;
         }
         this._ni7706.destroy();
      }
      
      public function get _vr15161() : int
      {
         return this._ep15175;
      }
      
      public function get _ln13893() : int
      {
         return this._lc10624;
      }
   }
}

