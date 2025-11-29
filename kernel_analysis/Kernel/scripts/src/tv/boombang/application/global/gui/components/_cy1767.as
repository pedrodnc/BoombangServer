package src.tv.boombang.application.global.gui.components
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.core.*;
   
   public class _cy1767 extends _cm4000
   {
      
      private var _nq12936:Object;
      
      private var _items:Array;
      
      private var _kx14638:int;
      
      private var _wr4413:String;
      
      private var _ru3748:String;
      
      public function _cy1767(param1:MovieClip, param2:Array = null, param3:String = "", param4:String = "", param5:Number = 145.5)
      {
         super(param1);
         this._ru3748 = param4;
         this._nq12936 = _xo6614["ComboBox"];
         this._nq12936.setSize(param5,this._nq12936.height);
         this._nq12936.addEventListener(Event.CHANGE,this._gc10620,false,0,true);
         var _loc6_:TextFormat = new TextFormat("VAGRoundedBlack1");
         _loc6_.color = 16777215;
         _loc6_.size = 12;
         _loc6_.leftMargin = 5;
         this._nq12936.dropdown.setRendererStyle("textFormat",_loc6_);
         this._nq12936.dropdown.setRendererStyle("embedFonts",true);
         this._nq12936.textField.setStyle("textFormat",_loc6_);
         this._nq12936.textField.setStyle("embedFonts",true);
         this._nq12936.setStyle("embedFonts",true);
         this._nq12936.setStyle("textFormat",_loc6_);
         this._nq12936.setStyle("textPadding",1);
         this._nq12936.rowCount = 10;
         this._wr4413 = param3;
         if(param2)
         {
            this._items = param2;
            this._ib11815();
         }
      }
      
      public function update(param1:Array) : void
      {
         this._items = null;
         this._items = param1;
         this._nq12936.removeAll();
         this._ib11815();
      }
      
      public function _mv11540(param1:Number = -1) : void
      {
         if(param1 != -1)
         {
            this._kx14638 = this._nq12936.selectedIndex = param1;
         }
         else
         {
            this._nq12936.selectedIndex = this._kx14638;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      private function _ib11815() : void
      {
         var _loc1_:Object = null;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._items.length)
         {
            _loc1_ = this._items[_loc3_];
            if(_loc1_.id != "")
            {
               _loc2_ = "";
               if(_loc1_.hasOwnProperty("label"))
               {
                  _loc2_ = _loc1_.label;
               }
               else
               {
                  _loc2_ = _fg1060._mn8930._ad13455(this._ru3748 + _loc1_.id);
               }
               this._nq12936.addItem({
                  "label":_loc2_,
                  "data":_loc1_
               });
               if(this._wr4413 == _loc1_.id)
               {
                  this._kx14638 = _loc3_;
               }
            }
            _loc3_++;
         }
      }
      
      private function _gc10620(param1:Event) : void
      {
         if(this._kx14638 != this._nq12936.selectedIndex)
         {
            this._kx14638 = this._nq12936.selectedIndex;
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      public function get _xs5517() : int
      {
         if(this._kx14638 >= 0 && this._kx14638 < this._nq12936.length)
         {
            return this._nl13210.id;
         }
         return -1;
      }
      
      public function get _nl13210() : Object
      {
         return this.getItemAt(this._kx14638);
      }
      
      public function getItemAt(param1:int) : Object
      {
         return this._nq12936.getItemAt(param1).data;
      }
      
      public function _hr11786() : void
      {
         this._nq12936.sortItemsOn("label","ASC");
      }
      
      public function close() : void
      {
         this._nq12936.close();
      }
      
      override public function destroy() : void
      {
         if(this._nq12936 != null)
         {
            this._nq12936.close();
            this._nq12936.removeEventListener(Event.CHANGE,this._gc10620);
            this._nq12936.removeAll();
         }
         super.destroy();
      }
   }
}

