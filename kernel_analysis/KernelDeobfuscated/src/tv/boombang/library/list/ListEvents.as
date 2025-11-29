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
      
      protected var count:Number = 0;
      
      protected var count1:Number = 0;
      
      protected var layout:Function;
      
      protected var _oa1535:Class;
      
      protected var _fd14634:Sprite;
      
      protected var items:Array;
      
      protected var _hm9289:*;
      
      protected var items:Array;
      
      private var count2:Number;
      
      private var count3:Number;
      
      protected var count4:Number;
      
      protected var count5:Number;
      
      protected var count6:Number = 1;
      
      protected var _vr11636:MovieClip;
      
      private var isEnabled:Boolean;
      
      public function ListEvents(param1:Number = 100, param2:Number = 300, param3:Number = 5, param4:Number = 5, param5:int = 1, param6:MovieClip = null, param7:Boolean = false)
      {
         super();
         this.count4 = param3;
         this.count5 = param4;
         this.layout = param5 == VERTICAL ? this._if11696 : this._wy9968;
         this.isEnabled = param7;
         this._fd14634 = new Sprite();
         if(param6)
         {
            this._vr11636 = param6;
            this._fd14634.addChild(this._vr11636);
         }
         addChild(this._fd14634);
         this.items = new Array();
         this.count2 = param1;
         this.count3 = param2;
      }
      
      public function onClick(param1:int = 0) : void
      {
         var count:ListEvents = this.items[param1] as ListEvents;
         this._hm9289 = count._os5347;
         dispatchEvent(new ListModel(ListModel.ITEM_CLICK,false,false,this._hm9289));
         this.updateItems(count);
      }
      
      protected function _mx15617() : void
      {
         if(!this.items)
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
         var count1:int;
         this.count = count1 = 0;
         _temp_2.count1 = 0;
         var count:uint = uint(this.items.length);
         while(0 < count)
         {
            var count2:Sprite = this.createItem();
            this._pv13193(0);
            this.layout(null);
            var count3:uint = uint(0 + 1);
         }
         if(Boolean(this._vr11636) && Boolean(this.isEnabled))
         {
            this._vr11636.width = null.width * count + this._ks8655 * count;
         }
      }
      
      protected function _wy9968(param1:Sprite) : void
      {
         if(param1.height > this.count1)
         {
            this.count1 = param1.height;
         }
         if(this.count2 < this.offsetX + param1.width)
         {
            this.offsetX = 0;
            this.offsetY += this.count1 + this.count4;
            this.count1 = 0;
         }
         param1.x = this.offsetX;
         param1.y = this.offsetY;
         this.offsetX += param1.width + this.count5;
      }
      
      protected function _if11696(param1:Sprite) : void
      {
         if(param1.width > this.count)
         {
            this.count = param1.width;
         }
         if(this.count3 < this.offsetY + param1.height)
         {
            this.offsetY = 0;
            this.offsetX += this.count + this.count5;
            this.count = 0;
         }
         param1.x = this.offsetX;
         param1.y = this.offsetY;
         this.offsetY += param1.height + this.count4;
      }
      
      protected function _pv13193(param1:uint) : void
      {
         var count:Sprite = this.items[param1] as Sprite;
         if(!count)
         {
            return;
         }
         (count as ListEvents)._os5347 = this.items[param1];
         count.addEventListener(MouseEvent.MOUSE_DOWN,this.onClick1,false,0,true);
         count.addEventListener(MouseEvent.MOUSE_OVER,this._gy9694,false,0,true);
         count.buttonMode = true;
      }
      
      protected function _gy9694(param1:MouseEvent) : void
      {
         if(!this._vr11636)
         {
            this._fd14634.setChildIndex(param1.target as Sprite,this._fd14634.numChildren - 1);
         }
      }
      
      protected function onClick1(param1:MouseEvent) : void
      {
         var count:ListEvents = param1.currentTarget as ListEvents;
         this._hm9289 = count._os5347;
         dispatchEvent(new ListModel(ListModel.ITEM_CLICK,false,false,this._hm9289));
         this.updateItems(count);
      }
      
      private function updateItems(param1:ListEvents) : void
      {
         var count:int = 0;
         var count3:ListEvents = null;
         var count1:ListEvents = param1;
         if(count1)
         {
            count = 0;
            while(count < this.items.length)
            {
               count3 = this.items[count] as ListEvents;
               if(count3 == count1)
               {
                  count3.selectedItem();
                  if(this._vr11636)
                  {
                     this._fd14634.setChildIndex(this._vr11636,this._fd14634.numChildren - 1);
                  }
                  this._fd14634.setChildIndex(count3 as DisplayObject,this._fd14634.numChildren - 1);
               }
               else
               {
                  count3._hs7892();
               }
               count++;
            }
         }
      }
      
      protected function removeItems() : void
      {
         var count2:Sprite = null;
         while(this.items.length > 0)
         {
            count2 = this.items.pop() as Sprite;
            count2.removeEventListener(MouseEvent.MOUSE_DOWN,this.onClick1);
            this._fd14634.removeChild(count2);
         }
      }
      
      protected function move() : void
      {
         this.removeItems();
         this._mx15617();
      }
      
      protected function createItem() : Sprite
      {
         var count2:Sprite = new this._oa1535() as Sprite;
         this._fd14634.addChild(count2);
         this.items.push(count2);
         return count2;
      }
      
      public function get maxWidth() : Number
      {
         return this.count2;
      }
      
      public function set maxWidth(param1:Number) : void
      {
         this.count2 = param1;
      }
      
      public function get maxHeight() : Number
      {
         return this.count3;
      }
      
      public function set maxHeight(param1:Number) : void
      {
         this.count3 = param1;
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
         this.count6 = param1;
      }
      
      public function get data() : Array
      {
         return this.items;
      }
      
      public function set data(param1:Array) : void
      {
         this.items = param1;
         this.move();
      }
      
      public function get selectedItem() : *
      {
         return this._hm9289;
      }
      
      public function get _yr7283() : Number
      {
         return this.count4;
      }
      
      public function set _yr7283(param1:Number) : void
      {
         this.count4 = param1;
      }
      
      public function get _ks8655() : Number
      {
         return this.count5;
      }
      
      public function set _ks8655(param1:Number) : void
      {
         this.count5 = param1;
      }
      
      private function _tt2463() : void
      {
         var count2:Sprite = null;
         var count:uint = 0;
         while(count < this.items.length)
         {
            count2 = this.items[count];
            count2.addEventListener(MouseEvent.MOUSE_DOWN,this.onClick1,false,0,true);
            count2.buttonMode = true;
            count++;
         }
      }
      
      private function move1() : void
      {
         var count2:Sprite = null;
         var count:uint = 0;
         while(count < this.items.length)
         {
            count2 = this.items[count];
            count2.removeEventListener(MouseEvent.MOUSE_DOWN,this.onClick1);
            count2.buttonMode = false;
            count++;
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
            this.move1();
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

