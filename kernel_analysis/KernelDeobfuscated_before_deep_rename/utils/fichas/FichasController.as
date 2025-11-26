package src.utils.fichas
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import flash.text.*;
   import src.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class FichasController extends EventDispatcher
   {
      
      protected static const _yw14303:String = "mcCloseButton";
      
      protected static const TF_TITULO:String = "tfTitulo";
      
      protected static const _pm13398:String = "tfTexto";
      
      protected static const _xu14631:String = "tfHtmlTexto";
      
      protected static const _nb8505:String = "tfEmbedTexto";
      
      protected static const _yl7636:String = "mcFichaFondo";
      
      protected var _cw11838:MovieClip;
      
      protected var _li7933:TextField;
      
      protected var _rr3911:CommoncomponentsController;
      
      protected var _tr10766:FichasUtils;
      
      protected var visible:Boolean;
      
      protected var _cl12799:int;
      
      protected var _qh1795:Function;
      
      public var _ok8879:MovieClip;
      
      protected var _eb13130:Boolean;
      
      public function FichasController(param1:MovieClip, param2:FichasUtils, param3:Function = null, param4:Boolean = true)
      {
         super();
         this._cw11838 = param1;
         this._tr10766 = param2;
         this._li7933 = TextField(param1[TF_TITULO]);
         this._qh1795 = param3;
         this._eb13130 = param4;
         this._je7979();
         if(param1[_yw14303])
         {
            this._rr3911 = new CommoncomponentsController(param1[_yw14303],this._nc13036);
         }
         this._ok8879 = MovieClip(param1.getChildByName(_yl7636));
         if(this._ok8879 != null)
         {
            this._ok8879.addEventListener(MouseEvent.MOUSE_DOWN,this._rf15581);
         }
         this.visible = false;
         this._cl12799 = _xw1367._wa4051;
      }
      
      public function isVisible() : Boolean
      {
         return this.visible;
      }
      
      public function destroy() : void
      {
         this._hu12389();
         if(this._rr3911 != null)
         {
            this._rr3911.destroy();
            this._rr3911 = null;
         }
         if(this._ok8879 != null)
         {
            this._ok8879.removeEventListener(MouseEvent.MOUSE_DOWN,this._rf15581);
         }
      }
      
      public function _db5584(param1:int, param2:int) : Boolean
      {
         if(!this.visible)
         {
            this.visible = true;
            if(this._eb13130)
            {
               _xw1367.getInstance()._uc3178(this._cw11838,this._cl12799);
            }
            this._cw11838.visible = true;
            this._cw11838.x = param1;
            this._cw11838.y = param2;
            if(this.isVisible())
            {
               ExternalInterface.call("showBadges");
            }
            return true;
         }
         return false;
      }
      
      private function _rf15581(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
      }
      
      public function _ie7655() : MovieClip
      {
         return this._cw11838;
      }
      
      public function _tg7746(param1:int) : void
      {
         this._cw11838.x = param1;
      }
      
      public function _ii11517(param1:int) : void
      {
         this._cw11838.y = param1;
      }
      
      public function _pj8617() : int
      {
         return this._cw11838.x;
      }
      
      public function _ew826() : int
      {
         return this._cw11838.y;
      }
      
      public function _hu12389() : Boolean
      {
         if(this.visible)
         {
            this.visible = false;
            if(this._eb13130)
            {
               _xw1367.getInstance()._na10792(this._cw11838,this._cl12799);
            }
            this._cw11838.visible = false;
            if(this._qh1795 != null)
            {
               this._qh1795();
            }
            return true;
         }
         return false;
      }
      
      protected function _nc13036() : void
      {
         this._hu12389();
      }
      
      protected function _je7979() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc5_:int = 0;
         if(this._li7933 != null)
         {
            this._li7933.mouseEnabled = false;
            if(this._tr10766._sj3261 != null)
            {
               UtilsUtils._xl9503(this._li7933,this._tr10766._sj3261);
            }
         }
         while(_loc5_ < this._cw11838.numChildren)
         {
            _loc1_ = this._cw11838.getChildAt(_loc5_);
            if(_loc1_ is TextField)
            {
               if(_loc1_.name.indexOf(_pm13398) >= 0)
               {
                  var _loc2_:int = int(_loc1_.name.slice(7,9));
                  TextField(_loc1_).mouseEnabled = false;
                  UtilsUtils._xl9503(TextField(_loc1_),this._tr10766._nd6595[0]);
               }
               if(_loc1_.name.indexOf(_xu14631) >= 0)
               {
                  var _loc3_:int = int(_loc1_.name.slice(12,14));
                  TextField(_loc1_).mouseEnabled = false;
                  UtilsUtils._bj8346(TextField(_loc1_),this._tr10766._bs12391[0]);
               }
               if(_loc1_.name.indexOf(_nb8505) >= 0)
               {
                  var _loc4_:int = int(_loc1_.name.slice(12,14));
                  TextField(_loc1_).mouseEnabled = false;
                  TextField(_loc1_).text = this._tr10766._nd6595[0];
               }
            }
            _loc5_++;
         }
      }
      
      public function _yl6609(param1:Array) : void
      {
         this._tr10766._nd6595 = param1;
         this._je7979();
      }
      
      public function _om2386(param1:int) : void
      {
         this._cl12799 = param1;
      }
      
      public function _na10099() : int
      {
         return this._cl12799;
      }
   }
}

