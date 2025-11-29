package src.tv.boombang.library.popup
{
   import flash.display.*;
   import flash.system.*;
   import flash.utils.*;
   import src.modules.chooseScene.managerBanners.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.errors.*;
   
   public class PopUpManagerImpl implements IPopUpManager
   {
      
      private static var _instance:PopUpManagerImpl;
      
      private var _my10689:_mu12387;
      
      private var _xj14225:Array;
      
      private var _dv14579:Boolean;
      
      private var _io10780:_tw2454;
      
      private var _wi11308:Dictionary;
      
      public function PopUpManagerImpl(param1:_pq7961)
      {
         super();
         if(param1 == null)
         {
            throw new _bc6516("is a SINGLETON!!!");
         }
         this._wi11308 = new Dictionary();
         this._xj14225 = new Array();
      }
      
      public static function getInstance() : PopUpManagerImpl
      {
         if(_instance == null)
         {
            _instance = new PopUpManagerImpl(new _pq7961());
         }
         return _instance;
      }
      
      public function get _yy14935() : Boolean
      {
         return this._dv14579;
      }
      
      public function createPopUp(param1:DisplayObjectContainer, param2:_ff15513, param3:Boolean = false, param4:uint = 0) : void
      {
         var _loc5_:_tw2454 = new _tw2454();
         _loc5_.parent = param1;
         _loc5_.pop = param2;
         _loc5_._xh10653 = param3;
         _loc5_._ob3182 = param4;
         this._wi11308[_loc5_.pop] = _loc5_;
         this._xj14225.push(_loc5_);
         if(!this._dv14579)
         {
            this.flush();
         }
      }
      
      public function removePopUp(param1:_ff15513) : void
      {
         var _loc2_:_tw2454 = this._wi11308[param1];
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:DisplayObjectContainer = _loc2_.parent;
         if(Boolean(_loc3_) && _loc3_.contains(_loc2_.pop as DisplayObject))
         {
            _loc3_.removeChild(_loc2_.pop as DisplayObject);
            this._dd2004(_loc3_ as Sprite);
         }
         _loc2_.destroy();
         delete this._wi11308[param1];
         System.gc();
         if(this._xj14225.length > 0)
         {
            this.flush();
         }
         else
         {
            this._dv14579 = true;
         }
      }
      
      public function centerPopUp(param1:_ff15513) : void
      {
         var _loc2_:_tw2454 = this._wi11308[param1];
         var _loc3_:DisplayObjectContainer = _loc2_.parent;
         param1.view.x = Math.round(-param1.view.width / 2);
         param1.view.y = Math.round(-param1.view.height / 2);
         (param1 as DisplayObject).x = Math.round(_loc3_.stage.stageWidth / 2);
         (param1 as DisplayObject).y = Math.round(_loc3_.stage.stageHeight / 2);
      }
      
      private function flush() : void
      {
         _gx6661.getInstance().hide();
         this._dv14579 = true;
         if(this._io10780)
         {
            if(this._io10780.parent.contains(this._io10780.pop as DisplayObject))
            {
               this._io10780.parent.removeChild(this._io10780.pop as DisplayObject);
            }
            this._io10780.destroy();
            this._io10780 = null;
         }
         this._io10780 = this._xj14225.shift() as _tw2454;
         if(this._io10780._xh10653)
         {
            this._ve5574(this._io10780.parent as Sprite,this._io10780._ob3182);
         }
         this._io10780.parent.addChild(this._io10780.pop as DisplayObject);
      }
      
      private function _ve5574(param1:Sprite, param2:uint) : void
      {
         if(!this._my10689)
         {
            this._my10689 = new _mu12387(param2);
         }
         param1.addChild(this._my10689);
      }
      
      private function _dd2004(param1:Sprite) : void
      {
         if(this._my10689)
         {
            param1.removeChild(this._my10689);
            this._my10689 = null;
         }
      }
      
      public function removeAll() : void
      {
         var _loc1_:Object = null;
         for(_loc1_ in this._wi11308)
         {
            this.removePopUp(_loc1_ as _ff15513);
         }
      }
   }
}

class _pq7961
{
   
   public function _pq7961()
   {
      super();
   }
}
