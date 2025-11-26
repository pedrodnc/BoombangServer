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
      
      protected static const textString:String = "mcCloseButton";
      
      protected static const TF_TITULO:String = "tfTitulo";
      
      protected static const textString1:String = "tfTexto";
      
      protected static const textString2:String = "tfHtmlTexto";
      
      protected static const textString3:String = "tfEmbedTexto";
      
      protected static const textString4:String = "mcFichaFondo";
      
      protected var _cw11838:MovieClip;
      
      protected var _li7933:TextField;
      
      protected var _rr3911:CommoncomponentsController;
      
      protected var _tr10766:FichasUtils;
      
      protected var visible:Boolean;
      
      protected var count:int;
      
      protected var _qh1795:Function;
      
      public var _ok8879:MovieClip;
      
      protected var isEnabled:Boolean;
      
      public function FichasController(param1:MovieClip, param2:FichasUtils, param3:Function = null, param4:Boolean = true)
      {
         super();
         this._cw11838 = param1;
         this._tr10766 = param2;
         this._li7933 = TextField(param1[TF_TITULO]);
         this._qh1795 = param3;
         this.isEnabled = param4;
         this.show();
         if(param1[textString])
         {
            this._rr3911 = new CommoncomponentsController(param1[textString],this._nc13036);
         }
         this._ok8879 = MovieClip(param1.getChildByName(textString4));
         if(this._ok8879 != null)
         {
            this._ok8879.addEventListener(MouseEvent.MOUSE_DOWN,this.stop);
         }
         this.visible = false;
         this.count = _xw1367.count5;
      }
      
      public function isVisible() : Boolean
      {
         return this.visible;
      }
      
      public function destroy() : void
      {
         this.authenticateUser2();
         if(this._rr3911 != null)
         {
            this._rr3911.destroy();
            this._rr3911 = null;
         }
         if(this._ok8879 != null)
         {
            this._ok8879.removeEventListener(MouseEvent.MOUSE_DOWN,this.stop);
         }
      }
      
      public function show(param1:int, param2:int) : Boolean
      {
         if(!this.visible)
         {
            this.visible = true;
            if(this.isEnabled)
            {
               _xw1367.getInstance()._uc3178(this._cw11838,this.count);
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
      
      private function stop(param1:MouseEvent) : void
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
      
      public function authenticateUser2() : Boolean
      {
         if(this.visible)
         {
            this.visible = false;
            if(this.isEnabled)
            {
               _xw1367.getInstance().move2(this._cw11838,this.count);
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
         this.authenticateUser2();
      }
      
      protected function show() : void
      {
         var count2:DisplayObject = null;
         var count2:int = 0;
         if(this._li7933 != null)
         {
            this._li7933.mouseEnabled = false;
            if(this._tr10766.textString != null)
            {
               UtilsUtils._xl9503(this._li7933,this._tr10766.textString);
            }
         }
         while(count2 < this._cw11838.numChildren)
         {
            count2 = this._cw11838.getChildAt(count2);
            if(count2 is TextField)
            {
               if(count2.name.indexOf(textString1) >= 0)
               {
                  var count:int = int(count2.name.slice(7,9));
                  TextField(count2).mouseEnabled = false;
                  UtilsUtils._xl9503(TextField(count2),this._tr10766.items[0]);
               }
               if(count2.name.indexOf(textString2) >= 0)
               {
                  var count3:int = int(count2.name.slice(12,14));
                  TextField(count2).mouseEnabled = false;
                  UtilsUtils._bj8346(TextField(count2),this._tr10766.items1[0]);
               }
               if(count2.name.indexOf(textString3) >= 0)
               {
                  var count1:int = int(count2.name.slice(12,14));
                  TextField(count2).mouseEnabled = false;
                  TextField(count2).text = this._tr10766.items[0];
               }
            }
            count2++;
         }
      }
      
      public function _yl6609(param1:Array) : void
      {
         this._tr10766.items = param1;
         this.show();
      }
      
      public function _om2386(param1:int) : void
      {
         this.count = param1;
      }
      
      public function _na10099() : int
      {
         return this.count;
      }
   }
}

