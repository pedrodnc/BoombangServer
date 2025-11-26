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
      
      private var _my10689:PopupUtils;
      
      private var items:Array;
      
      private var isEnabled:Boolean;
      
      private var _io10780:Popup;
      
      private var _wi11308:Dictionary;
      
      public function PopUpManagerImpl(param1:_pq7961)
      {
         super();
         if(param1 == null)
         {
            throw new Errors("is a SINGLETON!!!");
         }
         this._wi11308 = new Dictionary();
         this.items = new Array();
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
         return this.isEnabled;
      }
      
      public function createPopUp(param1:DisplayObjectContainer, param2:InterfacesView, param3:Boolean = false, param4:uint = 0) : void
      {
         var count2:Popup = new Popup();
         count2.parent = param1;
         count2.pop = param2;
         count2._xh10653 = param3;
         count2._ob3182 = param4;
         this._wi11308[count2.pop] = count2;
         this.items.push(count2);
         if(!this.isEnabled)
         {
            this.flush();
         }
      }
      
      public function removePopUp(param1:InterfacesView) : void
      {
         var count:Popup = this._wi11308[param1];
         if(count == null)
         {
            return;
         }
         var count3:DisplayObjectContainer = count.parent;
         if(Boolean(count3) && count3.contains(count.pop as DisplayObject))
         {
            count3.removeChild(count.pop as DisplayObject);
            this.move(count3 as Sprite);
         }
         count.destroy();
         delete this._wi11308[param1];
         System.gc();
         if(this.items.length > 0)
         {
            this.flush();
         }
         else
         {
            this.isEnabled = true;
         }
      }
      
      public function centerPopUp(param1:InterfacesView) : void
      {
         var count:Popup = this._wi11308[param1];
         var count3:DisplayObjectContainer = count.parent;
         param1.view.x = Math.round(-param1.view.width / 2);
         param1.view.y = Math.round(-param1.view.height / 2);
         (param1 as DisplayObject).x = Math.round(count3.stage.stageWidth / 2);
         (param1 as DisplayObject).y = Math.round(count3.stage.stageHeight / 2);
      }
      
      private function flush() : void
      {
         ManagerbannersController.getInstance().hide();
         this.isEnabled = true;
         if(this._io10780)
         {
            if(this._io10780.parent.contains(this._io10780.pop as DisplayObject))
            {
               this._io10780.parent.removeChild(this._io10780.pop as DisplayObject);
            }
            this._io10780.destroy();
            this._io10780 = null;
         }
         this._io10780 = this.items.shift() as Popup;
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
            this._my10689 = new PopupUtils(param2);
         }
         param1.addChild(this._my10689);
      }
      
      private function move(param1:Sprite) : void
      {
         if(this._my10689)
         {
            param1.removeChild(this._my10689);
            this._my10689 = null;
         }
      }
      
      public function removeAll() : void
      {
         var count2:Object = null;
         for(count2 in this._wi11308)
         {
            this.removePopUp(count2 as InterfacesView);
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
