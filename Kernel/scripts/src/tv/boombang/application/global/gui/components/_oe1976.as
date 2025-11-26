package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.tv.boombang.library.list.*;
   
   public class _oe1976 extends MovieClip implements _jk15536
   {
      
      private var _dk14093:Sprite;
      
      private var _items:Array;
      
      private var _qo13557:List;
      
      private var _vr11636:MovieClip;
      
      private var _jl2176:_lg6078;
      
      public function _oe1976(param1:MovieClip)
      {
         super();
         this._vr11636 = param1;
         this._dk14093 = new MovieClip();
         addChild(this._dk14093);
         this._dd12381();
      }
      
      private function _dd12381() : void
      {
         this._qo13557 = new List(500,100,0,-4,List.HORIZONTAL,this._vr11636);
         this._qo13557.addEventListener(_ye11838.ITEM_CLICK,this._we9528,false,0,true);
         this._qo13557.itemRenderer = _rs7737;
         this._dk14093.addChild(this._qo13557);
      }
      
      public function _wt2363(param1:Array, param2:int) : void
      {
         this._items = param1;
         this._ny10482(this._items);
         this._qo13557._pu7538(param2);
      }
      
      private function _ny10482(param1:Array) : void
      {
         this._qo13557.data = param1;
      }
      
      private function _we9528(param1:_ye11838) : void
      {
         this.selectItem(param1.data as _lg6078);
      }
      
      private function selectItem(param1:_lg6078) : void
      {
         this._jl2176 = param1;
         dispatchEvent(new _ye11838(_ye11838._yh7280,false,false,param1));
      }
      
      public function _cm1855() : *
      {
         return this._jl2176;
      }
      
      public function set _dy867(param1:Boolean) : void
      {
         this._qo13557._dy867 = param1;
      }
      
      public function destroy() : void
      {
         this._qo13557.removeEventListener(_ye11838.ITEM_CLICK,this._we9528);
         this._qo13557.destroy();
         super.destroy();
      }
   }
}

