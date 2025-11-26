package src.tv.boombang.application.popup
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.notifications._ac14381;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.popup._aq4817;
   
   public class _gw1437 extends _aq4817
   {
      
      private var _kc4744:_om4028;
      
      private var _ly3576:_om4028;
      
      private var _ye13983:_om4028;
      
      private var _re894:_om4028;
      
      private var _rh257:_om4028;
      
      private var _data:_ac14381;
      
      private var _bl10938:String;
      
      private var _ix13272:_qy9375;
      
      public function _gw1437(param1:_ac14381)
      {
         this._data = param1;
         this._bl10938 = _fg1060._dy2407._hs616(this._data._sk8092)._be5941;
         super();
         (_lh7543.get(_vy3822) as _vy3822)._vv13029([this._bl10938],this._lu7260);
      }
      
      protected function _lu7260() : void
      {
         _xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619(this._bl10938,"PopUp");
         if(_xo6614.getChildByName("closeBtn"))
         {
            this._ix13272 = new _qy9375(_xo6614.getChildByName("closeBtn") as MovieClip);
            this._ix13272.addEventListener(MouseEvent.CLICK,this._qn6887,false,0,true);
         }
         if(_xo6614["title"])
         {
            this._kc4744 = new _om4028(_xo6614["title"] as MovieClip,true);
            this._kc4744.txt = "notification.news." + this._data._sk8092 + ".title";
         }
         if(_xo6614["description0"])
         {
            this._ly3576 = new _om4028(_xo6614["description0"] as MovieClip,true);
            this._ly3576.txt = "notification.news." + this._data._sk8092 + ".description0";
         }
         if(_xo6614["description1"])
         {
            this._ye13983 = new _om4028(_xo6614["description1"] as MovieClip,true);
            this._ye13983.txt = "notification.news." + this._data._sk8092 + ".description1";
         }
         if(_xo6614["description2"])
         {
            this._re894 = new _om4028(_xo6614["description2"] as MovieClip,true);
            this._re894.txt = "notification.news." + this._data._sk8092 + ".description2";
         }
         if(_xo6614["description3"])
         {
            this._rh257 = new _om4028(_xo6614["description3"] as MovieClip,true);
            this._rh257.txt = "notification.news." + this._data._sk8092 + ".description3";
         }
         _er5800();
      }
      
      private function _qn6887(param1:MouseEvent) : void
      {
         _ks10725();
      }
   }
}

