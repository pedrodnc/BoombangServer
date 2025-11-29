package src.tv.boombang.library.list
{
   import flash.display.*;
   import flash.events.*;
   
   public class ListEvents extends Sprite
   {
      
      public static const VERTICAL:uint = 0;
      
      public static const HORIZONTAL:uint = 1;
      
      protected var offsetX:Number = 0;
      
      protected var offsetY:Number = 0;
      
      protected var _xf15211:Number = 0;
      
      protected var _qt3263:Number = 0;
      
      protected var layout:Function;
      
      protected var _oa1535:Class;
      
      protected var _fd14634:Sprite;
      
      protected var items:Array;
      
      protected var _hm9289:*;
      
      protected var _do13259:Array;
      
      private var _ce12612:Number;
      
      private var _fx2046:Number;
      
      protected var _xc6880:Number;
      
      protected var _qi2429:Number;
      
      protected var _hh6017:Number = 1;
      
      protected var _vr11636:MovieClip;
      
      private var _tb9578:Boolean;
      
      public function ListEvents(param1:Number = 100, param2:Number = 300, param3:Number = 5, param4:Number = 5, param5:int = 1, param6:MovieClip = null, param7:Boolean = false)
      {
         super();
         this._xc6880 = param3;
         this._qi2429 = param4;
         this.layout = param5 == VERTICAL ? this._if11696 : this._wy9968;
         this._tb9578 = param7;
         this._fd14634 = new Sprite();
         if(param6)
         {
            this._vr11636 = param6;
            this._fd14634.addChild(this._vr11636);
         }
         addChild(this._fd14634);
         this.items = new Array();
         this._ce12612 = param1;
         this._fx2046 = param2;
      }
      
      public function _pu7538(param1:int = 0) : void
      {
         var _loc2_:ListEvents = this.items[param1] as ListEvents;
         this._hm9289 = _loc2_._os5347;
         dispatchEvent(new ListModel(ListModel.ITEM_CLICK,false,false,this._hm9289));
         this.updateItems(_loc2_);
      }
      
      protected function _mx15617() : void
      {
         if(!this._do13259)
         {
            return;
         }
         if(!this._oa1535)
         {
            return;
         }
         var _temp_1:* = this;
         this.offsetY = 0;
         _temp_1.offsetX = 0;
         var _temp_2:* = this;
         var _loc4_:int;
         this._xf15211 = _loc4_ = 0;
         _temp_2._qt3263 = 0;
         var _loc2_:uint = uint(this._do13259.length);
         while(0 < _loc2_)
         {
            var _loc1_:Sprite = this.createItem();
            this._pv13193(0);
            this.layout(null);
            var _loc3_:uint = uint(0 + 1);
         }
         if(Boolean(this._vr11636) && Boolean(this._tb9578))
         {
            this._vr11636.width = null.width * _loc2_ + this._ks8655 * _loc2_;
         }
      }
      
      protected function _wy9968(param1:Sprite) : void
      {
         if(param1.height > this._qt3263)
         {
            this._qt3263 = param1.height;
         }
         if(this._ce12612 < this.offsetX + param1.width)
         {
            this.offsetX = 0;
            this.offsetY += this._qt3263 + this._xc6880;
            this._qt3263 = 0;
         }
         param1.x = this.offsetX;
         param1.y = this.offsetY;
         this.offsetX += param1.width + this._qi2429;
      }
      
      protected function _if11696(param1:Sprite) : void
      {
         if(param1.width > this._xf15211)
         {
            this._xf15211 = param1.width;
         }
         if(this._fx2046 < this.offsetY + param1.height)
         {
            this.offsetY = 0;
            this.offsetX += this._xf15211 + this._qi2429;
            this._xf15211 = 0;
         }
         param1.x = this.offsetX;
         param1.y = this.offsetY;
         this.offsetY += param1.height + this._xc6880;
      }
      
      protected function _pv13193(param1:uint) : void
      {
         var _loc2_:Sprite = this.items[param1] as Sprite;
         if(!_loc2_)
         {
            return;
         }
         (_loc2_ as ListEvents)._os5347 = this._do13259[param1];
         _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this._cf5461,false,0,true);
         _loc2_.addEventListener(MouseEvent.MOUSE_OVER,this._gy9694,false,0,true);
         _loc2_.buttonMode = true;
      }
      
      protected function _gy9694(param1:MouseEvent) : void
      {
         if(!this._vr11636)
         {
            this._fd14634.setChildIndex(param1.target as Sprite,this._fd14634.numChildren - 1);
         }
      }
      
      protected function _cf5461(param1:MouseEvent) : void
      {
         var _loc2_:ListEvents = param1.currentTarget as ListEvents;
         this._hm9289 = _loc2_._os5347;
         dispatchEvent(new ListModel(ListModel.ITEM_CLICK,false,false,this._hm9289));
         this.updateItems(_loc2_);
      }
      
      private function updateItems(param1:ListEvents) : void
      {
         var _loc2_:int = 0;
         var _loc3_:ListEvents = null;
         var _loc4_:ListEvents = param1;
         if(_loc4_)
         {
            _loc2_ = 0;
            while(_loc2_ < this.items.length)
            {
               _loc3_ = this.items[_loc2_] as ListEvents;
               if(_loc3_ == _loc4_)
               {
                  _loc3_.selectedItem();
                  if(this._vr11636)
                  {
                     this._fd14634.setChildIndex(this._vr11636,this._fd14634.numChildren - 1);
                  }
                  this._fd14634.setChildIndex(_loc3_ as DisplayObject,this._fd14634.numChildren - 1);
               }
               else
               {
                  _loc3_._hs7892();
               }
               _loc2_++;
            }
         }
      }
      
      protected function removeItems() : void
      {
         var _loc1_:Sprite = null;
         while(this.items.length > 0)
         {
            _loc1_ = this.items.pop() as Sprite;
            _loc1_.removeEventListener(MouseEvent.MOUSE_DOWN,this._cf5461);
            this._fd14634.removeChild(_loc1_);
         }
      }
      
      protected function _fy9262() : void
      {
         this.removeItems();
         this._mx15617();
      }
      
      protected function createItem() : Sprite
      {
         var _loc1_:Sprite = new this._oa1535() as Sprite;
         this._fd14634.addChild(_loc1_);
         this.items.push(_loc1_);
         return _loc1_;
      }
      
      public function get maxWidth() : Number
      {
         return this._ce12612;
      }
      
      public function set maxWidth(param1:Number) : void
      {
         this._ce12612 = param1;
      }
      
      public function get maxHeight() : Number
      {
         return this._fx2046;
      }
      
      public function set maxHeight(param1:Number) : void
      {
         this._fx2046 = param1;
      }
      
      public function get itemRenderer() : Class
      {
         return this._oa1535;
      }
      
      public function set itemRenderer(param1:Class) : void
      {
         this._oa1535 = param1;
      }
      
      public function set _rb4044(param1:Number) : void
      {
         this._hh6017 = param1;
      }
      
      public function get data() : Array
      {
         return this._do13259;
      }
      
      public function set data(param1:Array) : void
      {
         this._do13259 = param1;
         this._fy9262();
      }
      
      public function get selectedItem() : *
      {
         return this._hm9289;
      }
      
      public function get _yr7283() : Number
      {
         return this._xc6880;
      }
      
      public function set _yr7283(param1:Number) : void
      {
         this._xc6880 = param1;
      }
      
      public function get _ks8655() : Number
      {
         return this._qi2429;
      }
      
      public function set _ks8655(param1:Number) : void
      {
         this._qi2429 = param1;
      }
      
      private function _tt2463() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:uint = 0;
         while(_loc2_ < this.items.length)
         {
            _loc1_ = this.items[_loc2_];
            _loc1_.addEventListener(MouseEvent.MOUSE_DOWN,this._cf5461,false,0,true);
            _loc1_.buttonMode = true;
            _loc2_++;
         }
      }
      
      private function _ee8826() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:uint = 0;
         while(_loc2_ < this.items.length)
         {
            _loc1_ = this.items[_loc2_];
            _loc1_.removeEventListener(MouseEvent.MOUSE_DOWN,this._cf5461);
            _loc1_.buttonMode = false;
            _loc2_++;
         }
      }
      
      public function set _dy867(param1:Boolean) : void
      {
         if(param1)
         {
            this._tt2463();
         }
         else
         {
            this._ee8826();
         }
      }
      
      public function get _nk13760() : Array
      {
         return this.items;
      }
      
      public function destroy() : void
      {
         this.removeItems();
      }
   }
}

