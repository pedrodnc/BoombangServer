package src.tv.boombang.application.payments.gui.windows
{
   import flash.display.*;
   import src.tv.boombang.application.payments.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.payments.*;
   import src.tv.boombang.library.list.*;
   
   public class _rs10876 extends MovieClip implements _jk15536
   {
      
      private var _dk14093:Sprite;
      
      private var _items:Array;
      
      private var _qo13557:List;
      
      private var _content:MovieClip;
      
      private var _jl2176:_nv12424;
      
      public function _rs10876()
      {
         super();
         this._dk14093 = new Sprite();
         addChild(this._dk14093);
         this._dd12381();
      }
      
      private function _dd12381() : void
      {
         this._qo13557 = new List(250,800,-5,5,List.VERTICAL);
         this._qo13557.addEventListener(_ye11838.ITEM_CLICK,this._we9528,false,0,true);
         this._qo13557.itemRenderer = _ca5613;
         this._dk14093.addChild(this._qo13557);
      }
      
      public function _wt2363(param1:Array) : void
      {
         this._items = param1;
         this._ny10482(this._items);
         this._df8865();
      }
      
      private function _ny10482(param1:Array) : void
      {
         this._qo13557.data = param1;
      }
      
      private function _we9528(param1:_ye11838) : void
      {
         this.selectItem(param1.data as _nv12424);
      }
      
      private function selectItem(param1:_nv12424) : void
      {
         this._jl2176 = param1;
         dispatchEvent(new _ye11838(_ye11838._yh7280,false,false,param1));
      }
      
      private function _df8865() : _nv12424
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:Number = Number(this._items[0]._pn10903);
         var _loc3_:Number = 0;
         while(_loc4_ < this._items.length)
         {
            _loc1_ = int(this._items[_loc4_]._pn10903);
            if(_loc1_ < _loc2_)
            {
               _loc3_ = _loc4_;
               _loc2_ = _loc1_;
            }
            _loc4_++;
         }
         this._qo13557._pu7538(_loc3_);
         return this._items[_loc3_];
      }
      
      public function _cm1855() : *
      {
         return this._jl2176;
      }
      
      public function destroy() : void
      {
         super.destroy();
      }
   }
}

