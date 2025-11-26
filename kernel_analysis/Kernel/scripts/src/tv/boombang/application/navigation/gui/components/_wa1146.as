package src.tv.boombang.application.navigation.gui.components
{
   import flash.display.*;
   import flash.events.MouseEvent;
   import src.allData.*;
   import src.multiuser.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.navigation.events.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.tv.boombang.core.errors.*;
   
   public class _wa1146 extends MovieClip implements _jk15536
   {
      
      protected var _xo6614:MovieClip;
      
      protected var _content:Sprite;
      
      protected var _progress:MovieClip;
      
      protected var _qi2267:Object;
      
      protected var _items:Array;
      
      protected var _vc2110:Array;
      
      protected var _tw12356:int;
      
      protected var _gv13912:Array;
      
      protected var _gk12156:_om4028;
      
      protected var _jm13609:Boolean = false;
      
      protected var _xa14315:Boolean = false;
      
      public function _wa1146(param1:MovieClip, param2:int)
      {
         super();
         this._xo6614 = param1;
         this._tw12356 = param2;
         this._qi2267 = this._xo6614["scrollPane"];
         this._progress = this._xo6614["preloader"];
         this._gk12156 = new _om4028(this._xo6614["searchResultText"] as MovieClip);
         this._gk12156.visible = false;
         this._progress.visible = true;
         this._qi2267.visible = false;
         addChild(this._xo6614);
      }
      
      protected function _nx3753(param1:int) : void
      {
         if(param1 == 0)
         {
            this._gk12156.visible = true;
            this._gk12156.txt = "navigationMenu.search.result0";
         }
         else
         {
            this._gk12156.visible = false;
         }
      }
      
      protected function _rw2194(param1:_pw5334 = null) : void
      {
         if(!this.isLoading)
         {
            this._wp3955();
            this.isLoading = true;
            _co12486._mm13979(this._tv1901);
         }
      }
      
      protected function _dx15654(param1:Array, param2:int) : Array
      {
         var _loc3_:Array = null;
         var _loc4_:_kn4108 = null;
         var _loc7_:int = 0;
         var _loc5_:Array = new Array();
         var _loc6_:int = param2;
         while(_loc7_ < param1.length)
         {
            _loc3_ = _jl5367._go4983(param1[_loc7_]);
            _loc4_ = _kn4108.parse(_loc3_,_loc6_);
            _loc5_.push(_loc4_);
            _loc7_++;
         }
         return _loc5_;
      }
      
      public function _mx2448(param1:Array) : void
      {
         throw new _bc6516("this should be override");
      }
      
      public function _vd5721(param1:Array, param2:int, param3:_rj12650, param4:_hj3512) : void
      {
         throw new _bc6516("this should be override");
      }
      
      protected function _ie12514(param1:_re14376) : void
      {
         var _loc2_:int = 0;
         if(this._gv13912)
         {
            if(this._gv13912.length > 1)
            {
               _loc2_ = 0;
               while(_loc2_ < this._gv13912.length)
               {
                  if(param1 == this._gv13912[_loc2_])
                  {
                     this._gv13912[_loc2_].selected = true;
                  }
                  else
                  {
                     this._gv13912[_loc2_].selected = false;
                  }
                  _loc2_++;
               }
            }
         }
      }
      
      protected function _ap2047(param1:_pw5334) : void
      {
         if(param1.type == _pw5334._eu6579)
         {
            dispatchEvent(new _pw5334(_pw5334._eu6579,param1.data));
         }
         else if(param1.type == _pw5334._eh6046)
         {
            dispatchEvent(new _pw5334(_pw5334._vt105,param1.data));
         }
         _co12486._pl13792(param1.data._kb5211.id,param1.data._eb11619);
      }
      
      protected function _qh13554(param1:_pw5334) : void
      {
         dispatchEvent(new _pw5334(_pw5334._dt4861,param1.data));
      }
      
      protected function _dp15792(param1:MouseEvent) : void
      {
         if(!this.isLoading)
         {
            this._wp3955();
            this.isLoading = true;
            if(!this._xo6614.contains(this._progress))
            {
               this._xo6614.addChild(this._progress);
            }
            this._progress.visible = true;
            _co12486._eg5711(this._tv1901,_hv12530.getInstance().id);
            this._ie12514(param1.target as _re14376);
         }
      }
      
      protected function _ic5609(param1:_pw5334) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         _co12486._gk11918(_hv12530.getInstance().id,param1.data._vn12441);
         if(this._xa14315)
         {
            if(this._items)
            {
               _loc2_ = new Array();
               _loc3_ = 0;
               while(_loc3_ < this._items.length)
               {
                  if(param1.target != this._items[_loc3_])
                  {
                     _loc2_.push(this._items[_loc3_]);
                  }
                  else
                  {
                     this._items[_loc3_].destroy();
                     this._content.removeChild(this._items[_loc3_]);
                  }
                  _loc3_++;
               }
               this._items = null;
               this._items = _loc2_;
               this.update();
            }
         }
      }
      
      protected function _cl8914(param1:_pw5334) : void
      {
         _co12486._cf16128(_hv12530.getInstance().id,param1.data._vn12441);
      }
      
      protected function _wp3955() : void
      {
         if(this._content)
         {
            this._content = null;
         }
         this._items = new Array();
         this._content = new Sprite();
      }
      
      protected function update() : void
      {
         this._qi2267.source = this._content;
         this._qi2267.refreshPane();
         this._qi2267.update();
         this._progress.visible = false;
         if(Boolean(this._xo6614) && Boolean(this._xo6614.contains(this._progress)))
         {
            this._xo6614.removeChild(this._progress);
         }
         this._qi2267.visible = true;
         this._qc8281();
      }
      
      protected function _qc8281() : void
      {
         var _loc1_:_in2808 = null;
         var _loc2_:_in2808 = null;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         while(_loc4_ < this._items.length)
         {
            _loc1_ = this._items[_loc4_ - 1];
            _loc2_ = this._items[_loc4_];
            _loc3_ = this._items.height * _loc4_ + 2 * _loc4_;
            if(_loc1_)
            {
               _loc3_ = _loc1_.y + _loc1_.height;
            }
            _loc2_.y = _loc3_;
            _loc4_++;
         }
         this._qi2267.refreshPane();
      }
      
      public function get _tv1901() : int
      {
         return this._tw12356;
      }
      
      public function set _tv1901(param1:int) : void
      {
         this._tw12356 = param1;
      }
      
      public function get isLoading() : Boolean
      {
         return this._jm13609;
      }
      
      public function set isLoading(param1:Boolean) : void
      {
         this._jm13609 = param1;
         dispatchEvent(new _pw5334(_pw5334._om1434));
      }
      
      public function destroy() : void
      {
         removeChild(this._xo6614);
         this._xo6614 = null;
      }
   }
}

