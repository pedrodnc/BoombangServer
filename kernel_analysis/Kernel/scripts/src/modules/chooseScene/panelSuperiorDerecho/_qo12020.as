package src.modules.chooseScene.panelSuperiorDerecho
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import src.*;
   import src.allData.*;
   import src.allData.country.*;
   import src.config.*;
   
   public class _qo12020
   {
      
      private static const _cc6870:String = "XX-eng";
      
      private var _sw12409:MovieClip;
      
      private var _qm12364:Boolean;
      
      private var _qh1795:Function;
      
      private var _cl12799:int;
      
      public function _qo12020(param1:MovieClip, param2:Function)
      {
         super();
         this._sw12409 = param1;
         this._qh1795 = param2;
         this._cl12799 = _xw1367._wa4051;
         if(this._sw12409 != null)
         {
            this._sw12409.visible = false;
            this._it12443();
         }
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
      }
      
      private function _it12443() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:FrameLabel = null;
         if(_hv12530.getInstance()._my547 != null)
         {
            _loc1_ = _hv12530.getInstance()._my547.toUpperCase();
            if(_loc1_.toUpperCase() == _mu10856._pu2140)
            {
               _loc1_ = "ES-" + (int(Math.random() * 2) + 1).toString();
            }
            if(_loc1_ == _mu10856._we10670)
            {
               _loc1_ = "";
            }
            if(_loc1_ == _mu10856._tb8355)
            {
               _loc1_ = "";
            }
            _loc2_ = null;
            for each(_loc3_ in this._sw12409.currentLabels)
            {
               if(_loc3_.name.toUpperCase() == _loc1_)
               {
                  _loc2_ = _loc3_.name;
                  break;
               }
            }
            if(_loc2_ == null)
            {
               switch(_cc7688._qs3725)
               {
                  case _cc7688._gl650:
                     _loc2_ = _cc6870;
               }
            }
            if(_loc2_ != null)
            {
               this._sw12409.gotoAndStop(_loc2_);
               this._qm12364 = true;
            }
            else
            {
               this._qm12364 = false;
            }
         }
         else
         {
            this._qm12364 = false;
         }
      }
      
      public function _db5584(param1:int, param2:int) : Boolean
      {
         if(this._sw12409 != null && this._qm12364 == true)
         {
            if(this._sw12409.visible == false)
            {
               _xw1367.getInstance()._uc3178(this._sw12409,this._cl12799);
               this._sw12409.visible = true;
               this._sw12409.x = param1;
               this._sw12409.y = param2;
               return true;
            }
         }
         return false;
      }
      
      public function _hu12389() : Boolean
      {
         if(this._sw12409 != null && this._sw12409.visible == true)
         {
            _xw1367.getInstance()._na10792(this._sw12409,this._cl12799);
            this._sw12409.visible = false;
            if(this._qh1795 != null)
            {
               this._qh1795();
            }
            return true;
         }
         return false;
      }
   }
}

