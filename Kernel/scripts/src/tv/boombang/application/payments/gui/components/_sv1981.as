package src.tv.boombang.application.payments.gui.components
{
   import flash.display.*;
   import src.config.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _sv1981 extends MovieClip implements _jk15536
   {
      
      private var _tg11827:String;
      
      private var _ay1445:String;
      
      private var _pr10098:MovieClip;
      
      private var _qe6495:_eo12332;
      
      private var _fe11698:MovieClip;
      
      private var _ne4523:MovieClip;
      
      private var _ub9111:_om4028;
      
      public function _sv1981(param1:String, param2:String)
      {
         super();
         this._tg11827 = param1;
         this._ay1445 = param2;
         this._pr10098 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf",this._tg11827 + "Icon") as MovieClip;
         if(this._pr10098["content"])
         {
            this._ub9111 = new _om4028(this._pr10098["content"] as MovieClip);
            this._ub9111.txt = "buttons.payments.title." + this._tg11827;
         }
         addChild(this._pr10098);
         var _loc3_:Object = new Object();
         _loc3_._kp2503 = _cc7688._kx13603 + this._ay1445.toLocaleLowerCase() + ".png";
         this._fe11698 = new MovieClip();
         this._ne4523 = new MovieClip();
         this._ne4523.name = "iconImage";
         this._fe11698.addChild(this._ne4523);
         this._qe6495 = new _eo12332(this._fe11698,_loc3_,1,_eo12332.TOP_LEFT);
         addChild(this._qe6495);
      }
      
      public function destroy() : void
      {
         removeChild(this._pr10098);
         if(this._qe6495)
         {
            removeChild(this._qe6495);
            this._qe6495.destroy();
            this._qe6495 = null;
         }
         this._pr10098 = null;
      }
   }
}

