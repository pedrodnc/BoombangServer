package src.tv.boombang.application.rankings.gui.components
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.rankings.events.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class _oi12333 extends EventDispatcher implements _jk15536
   {
      
      private var _xo6614:MovieClip;
      
      private var _aa15783:_cy1767;
      
      private var _kd8244:_va5249;
      
      private var _lg9103:_va5249;
      
      private var _ut11943:int;
      
      private var _vb15674:int;
      
      private var _hi4381:int;
      
      private var _dx10834:int;
      
      public function _oi12333(param1:MovieClip)
      {
         super();
         this._xo6614 = param1;
         this._kd8244 = new _va5249(this._xo6614["prevBtn"],"button.previous");
         this._kd8244._vr14785 = 17774;
         this._lg9103 = new _va5249(this._xo6614["nextBtn"],"button.next");
         this._lg9103._vr14785 = 17774;
         this._aa15783 = new _cy1767(this._xo6614["pagesCombo"]);
         this._lg9103.addEventListener(MouseEvent.CLICK,this._uq13384,false,0,true);
         this._kd8244.addEventListener(MouseEvent.CLICK,this._hp3105,false,0,true);
         this._aa15783.addEventListener(Event.CHANGE,this._oj15857,false,0,true);
      }
      
      public function update(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc9_:int = 0;
         this._hi4381 = param1;
         this._dx10834 = param3;
         this._vb15674 = Math.ceil(this._hi4381 / this._dx10834);
         var _loc7_:Array = new Array();
         var _loc8_:int = int(this._hi4381);
         while(_loc9_ < this._vb15674)
         {
            _loc4_ = new Object();
            _loc5_ = _loc9_ * param3 + 1;
            if(_loc8_ >= param3)
            {
               _loc8_ -= param3;
               _loc6_ = _loc5_ + param3 - 1;
            }
            else
            {
               _loc6_ = _loc5_ + _loc8_ - 1;
            }
            _loc4_.id = _loc5_ + "/" + _loc6_;
            _loc4_.index = _loc5_;
            if(param2 >= _loc5_ && param2 <= _loc6_)
            {
               this._ut11943 = _loc9_ + 1;
            }
            _loc7_.push(_loc4_);
            _loc9_++;
         }
         this._aa15783.update(_loc7_);
         this._aa15783._mv11540(this._ut11943 - 1);
         this._gr9175();
      }
      
      private function _oj15857(param1:Event) : void
      {
         this._mv11540(this._aa15783._nl13210.index);
      }
      
      private function _hp3105(param1:MouseEvent) : void
      {
         if(this._ut11943 > 1)
         {
            this._tn12236(this._ut11943 - 1);
         }
      }
      
      private function _uq13384(param1:MouseEvent) : void
      {
         if(this._ut11943 < this._vb15674)
         {
            this._tn12236(this._ut11943 + 1);
         }
      }
      
      private function _tn12236(param1:int) : void
      {
         this._ut11943 = param1;
         this._mv11540(this._aa15783.getItemAt(this._ut11943 - 1).index);
      }
      
      private function _mv11540(param1:int) : void
      {
         dispatchEvent(new _oe14918(_oe14918._ci14784,param1));
      }
      
      private function _gr9175() : void
      {
         if(this._vb15674 <= 1)
         {
            this._kd8244.visible = false;
            this._lg9103.visible = false;
            return;
         }
         if(this._ut11943 <= 1)
         {
            this._kd8244.visible = false;
         }
         else
         {
            this._kd8244.visible = true;
         }
         if(this._ut11943 >= this._vb15674)
         {
            this._lg9103.visible = false;
         }
         else
         {
            this._lg9103.visible = true;
         }
      }
      
      public function destroy() : void
      {
         this._aa15783.removeEventListener(Event.CHANGE,this._oj15857);
         this._kd8244.removeEventListener(MouseEvent.CLICK,this._hp3105);
         this._lg9103.removeEventListener(MouseEvent.CLICK,this._uq13384);
         this._kd8244.destroy();
         this._lg9103.destroy();
         this._aa15783.destroy();
      }
   }
}

