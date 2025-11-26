package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _ee13487 extends _cm4000
   {
      
      private var _rb9512:Object;
      
      private var _pe6301:MovieClip;
      
      private var _ag11732:_xg1747;
      
      private var _label:String;
      
      private var _pv10274:String;
      
      private var _id:String;
      
      private var _index:int;
      
      public function _ee13487(param1:String, param2:String = "", param3:String = null)
      {
         if(param3 == null)
         {
            param3 = "CustomRadioButton";
         }
         super((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf",param3) as MovieClip);
         this._label = param1;
         this._pv10274 = param2;
         if(_xo6614["labelTxt"])
         {
            this._ag11732 = new _xg1747(_xo6614["labelTxt"] as MovieClip);
            this._ag11732.txt = this._label;
            this._ag11732._xq11642();
         }
         this._pe6301 = _xo6614["area"];
         this._pe6301.addEventListener(MouseEvent.CLICK,this._st14759,false,0,true);
         this._pe6301.buttonMode = true;
         this._pe6301.mouseChildren = false;
         if(_xo6614["radioButton"])
         {
            this._rb9512 = _xo6614["radioButton"];
            this._rb9512.label = "";
            this._rb9512.mouseEnabled = false;
            _xo6614.setChildIndex(this._pe6301,_xo6614.numChildren - 1);
         }
         addChild(_xo6614);
      }
      
      private function _st14759(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(param1.target.name == "area")
         {
            if(Boolean(this._rb9512) && !this._rb9512.selected)
            {
               this._bq7340 = true;
            }
         }
      }
      
      public function set _bq7340(param1:Boolean) : void
      {
         this._rb9512.selected = param1;
         if(param1)
         {
            dispatchEvent(new Event("onSelected"));
         }
      }
      
      public function set label(param1:String) : void
      {
         if(this._label)
         {
            this._label = param1;
            this._ag11732.txt = this._label;
            this._ag11732._xq11642();
         }
      }
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function get _ga12867() : String
      {
         return this._pv10274;
      }
      
      public function get _gy11024() : Object
      {
         return this._rb9512;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function set index(param1:int) : void
      {
         this._index = param1;
      }
      
      public function set _uf3495(param1:uint) : void
      {
         this._ag11732.color = param1;
      }
      
      override public function destroy() : void
      {
         this._pe6301.removeEventListener(MouseEvent.CLICK,this._st14759);
         this._ag11732.destroy();
         this._rb9512 = null;
         this._pe6301 = null;
         this._ag11732 = null;
         super.destroy();
      }
   }
}

