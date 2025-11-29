package src.modules.privados.editObject
{
   import flash.display.MovieClip;
   import src.allData.color.*;
   import src.modules.privados.editObject.editableElements._tc4557;
   import src.utils.commonComponents.*;
   import src.utils.fichas._ox15379;
   
   public class _fb1435 extends _av7935
   {
      
      public static const _xf6781:String = "mcBotonVolver";
      
      public static const _ee4813:String = "mcConfirm";
      
      private var _ej3635:_qo7568;
      
      private var _qy4355:_kg183;
      
      private var _te8717:_rl11159;
      
      private var _io6762:_pn12847;
      
      private var _fs8970:Function;
      
      private var _sh16156:Function;
      
      public function _fb1435(param1:MovieClip, param2:_ox15379, param3:Function, param4:_tc4557, param5:_pn12847, param6:Function, param7:Function, param8:_kg13542)
      {
         super(param1,param2,param3,param4,param8);
         this._io6762 = param5;
         this._fs8970 = param6;
         this._sh16156 = param7;
         this._ej3635 = new _qo7568(param1[_xf6781],this._io8360,param8.VOLVER);
         this._ej3635._vd8836 = 3815727;
         this._ej3635._lq8071 = 13421772;
         this._qy4355 = new _kg183(param1[_ee4813],this._lh4081);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._ej3635 != null)
         {
            this._ej3635.destroy();
            this._ej3635 = null;
         }
         if(this._qy4355 != null)
         {
            this._qy4355.destroy();
            this._qy4355 = null;
         }
         this._jj1960();
      }
      
      private function _jj1960() : void
      {
         if(this._te8717 != null)
         {
            this._te8717.destroy();
            this._te8717 = null;
         }
      }
      
      override protected function _nc13036() : void
      {
         this._ql12680();
         this._hu12389();
      }
      
      private function _io8360() : void
      {
         this._ql12680();
         this._fs8970();
      }
      
      override public function _db5584(param1:int, param2:int) : Boolean
      {
         if(!visible)
         {
            super._db5584(param1,param2);
            this._te8717 = new _rl11159(_cw11838,this.updateColor,this._lh4081,true,true,this._io6762,_cw11838.x);
            this._te8717.init();
            return true;
         }
         return false;
      }
      
      override public function _hu12389() : Boolean
      {
         if(visible)
         {
            this._jj1960();
            super._hu12389();
            return true;
         }
         return false;
      }
      
      private function updateColor() : void
      {
         _fb15680._eo13013(this._io6762);
      }
      
      private function _lh4081() : void
      {
         this._sh16156();
      }
      
      public function _ql12680() : void
      {
         var _loc1_:_pn12847 = null;
         if(this._te8717 != null)
         {
            _loc1_ = this._te8717._rc11984();
            _fb15680._ql12680(_loc1_);
         }
      }
   }
}

