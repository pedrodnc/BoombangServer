package src.tv.boombang.application.npc.gui.window.games.windows
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.steps.*;
   import src.utils.*;
   
   public class _bi8119 extends _du6524 implements _jk15536
   {
      
      public static const _sr3780:String = "GameWindowEventPlay";
      
      private var _vm4880:_va5249;
      
      private var _ed7197:_va5249;
      
      private var _hs1120:_va5249;
      
      private var _ck5194:int;
      
      private var _fs2129:MovieClip;
      
      public function _bi8119(param1:MovieClip, param2:String, param3:int, param4:int)
      {
         super(param1,param2,param3);
         this._ck5194 = param4;
         this._ed7197 = new _va5249(_xo6614["btn1"],"button.back");
         this._ed7197._im767(20,10);
         this._ed7197.addEventListener(MouseEvent.CLICK,this._bs9785,false,0,true);
         _qi5262.push(this._ed7197);
         this._vm4880 = new _va5249(_xo6614["btn2"],"button.pay");
         this._vm4880._im767(20,10);
         this._vm4880.addEventListener(MouseEvent.CLICK,this._sw16087,false,0,true);
         _qi5262.push(this._vm4880);
         this._eh15270();
      }
      
      override public function destroy() : void
      {
         if(this._fs2129)
         {
            _xo6614.removeChild(this._fs2129);
         }
         this._ed7197.removeEventListener(MouseEvent.CLICK,this._bs9785);
         this._vm4880.removeEventListener(MouseEvent.CLICK,this._sw16087);
         this._ed7197.destroy();
         this._vm4880.destroy();
         super.destroy();
      }
      
      public function set _hm9300(param1:String) : void
      {
         this._vm4880.text = param1;
         this._eh15270();
      }
      
      public function set _so8426(param1:String) : void
      {
         this._fs2129 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","GamesGoldCoin") as MovieClip;
         _xo6614.addChild(this._fs2129);
         _yq8362._bj8346(this._fs2129["txt"] as TextField,param1);
         this._eh15270();
      }
      
      public function set _ow1047(param1:String) : void
      {
         this._fs2129 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","GamesSilverCoin") as MovieClip;
         _xo6614.addChild(this._fs2129);
         _yq8362._bj8346(this._fs2129["txt"] as TextField,param1);
         this._eh15270();
      }
      
      override protected function _eh15270() : void
      {
         super._eh15270();
         if(this._fs2129)
         {
            this._fs2129.scaleX = this._fs2129.scaleY = _xo6614["btn2"].height / this._fs2129.height;
            this._fs2129.x = _xo6614["btn2"].x + _xo6614["btn2"].width + 5;
            this._fs2129.y = _xo6614["btn2"].y;
         }
      }
      
      private function _bs9785(param1:MouseEvent) : void
      {
         _nk11935(_pm4313._vr15134);
      }
      
      private function _sw16087(param1:MouseEvent) : void
      {
         var _loc2_:Object = {};
         _loc2_.id = this._ck5194;
         _nk11935(_sr3780,_loc2_);
      }
   }
}

