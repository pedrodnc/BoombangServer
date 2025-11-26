package src.modules.baneos
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import src.*;
   import src.allData.*;
   import src.allData.texts.*;
   import src.config.*;
   import src.loaders.*;
   import src.logs.*;
   import src.modules.multiplayerGames.*;
   import src.multiuser.*;
   import src.utils.*;
   import src.utils.fichas.*;
   
   public class BaneosModel
   {
      
      private static var textString:String = "multiplayerGames";
      
      private static var textString1:String = "getFichaAvisoGames";
      
      private static var isEnabled:Boolean = false;
      
      private var _hv15199:BaneosController;
      
      public var textString10:int;
      
      public var items:Array;
      
      private var _as8760:ApplicationMain;
      
      private var logs:Logger;
      
      private var _yl947:SocketManager;
      
      private var _em1533:LoadersManager;
      
      private var _dr1773:UserSession;
      
      private var _xm9390:FichasController;
      
      private var count1:int;
      
      private var _fl13298:MovieClip;
      
      private var _fy2151:MovieClip;
      
      public function BaneosModel(param1:ApplicationMain)
      {
         super();
         this._as8760 = param1;
         this.logs = Logger.getInstance();
         this._yl947 = SocketManager.getInstance();
         this._em1533 = LoadersManager.getInstance();
         this._dr1773 = UserSession.getInstance();
         this.count1 = -1;
         this._hv15199 = new BaneosController();
         this._hv15199.addEventListener(BaneosEvents.textString,this._eb15880);
      }
      
      public static function _xf13820() : Boolean
      {
         return isEnabled;
      }
      
      private function _eb15880(param1:BaneosEvents) : void
      {
         if(isEnabled)
         {
            return;
         }
         var count3:int = int(String(param1.items[0]).charCodeAt(0));
         switch(count3)
         {
            case SocketManager.count57:
               if(param1.items.length < 3)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"ControlBaneos.onBaneoEvent, MUS_BANEO_USER",param1.items.toString()));
                  return;
               }
               this._ka3329(BanHandler.count,[int(param1.items[1]) * 60,String(param1.items[2])]);
               return;
               break;
            case SocketManager.count58:
               if(param1.items.length < 2)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"ControlBaneos.onBaneoEvent, MUS_BANEO_DESACTIVADA",param1.items.toString()));
                  return;
               }
               this._ka3329(BanHandler.count5,[String(param1.items[1])]);
               return;
               break;
            case SocketManager.count65:
               this._ka3329(BanHandler.count,[int(param1.items[1]),String(param1.items[2])]);
               return;
            case SocketManager.count36:
               if(this._yl947._kx6292() == SocketManager.count101)
               {
                  this._ka3329(BanHandler.count4,null);
               }
               else
               {
                  this._ka3329(BanHandler.count3,null);
               }
               return;
            case SocketManager.count63:
               this.onClick(param1.items[1]);
               return;
            case SocketManager.count80:
               if(param1.items.length >= 3)
               {
                  if(param1.items[2] == MultiplayergamesController.textString)
                  {
                     return;
                  }
               }
               this._ms13859();
               return;
            case SocketManager.count56:
               if(param1.items.length < 2)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"ControlBaneos.onBaneoEvent, MUS_ADMINISTRACION",param1.items.toString()));
                  return;
               }
               var count:int = int(String(param1.items[1]).charCodeAt(0));
               switch(0)
               {
                  case BaneosController.count:
                     this._ka3329(BanHandler.count1,null);
               }
               return;
               break;
            default:
               return;
         }
      }
      
      public function _ka3329(param1:int, param2:Array) : void
      {
         if(isEnabled)
         {
            return;
         }
         isEnabled = true;
         if(this._em1533 != null && this._em1533._lm5662 != null)
         {
            this._em1533._lm5662.hide();
         }
         this.textString10 = param1;
         this.items = param2;
         this.destroy();
         this._as8760._xd1691();
      }
      
      private function destroy() : void
      {
         switch(this._as8760._dn11747)
         {
            case ApplicationMain.count3:
            case ApplicationMain.count1:
            case ApplicationMain.count2:
               this._as8760._tu4337();
               return;
            case ApplicationMain.count31:
            case ApplicationMain.count5:
            case ApplicationMain.count9:
            case ApplicationMain.count32:
               this._as8760._sr10092();
               return;
            case ApplicationMain.count24:
               this._as8760._hg14456();
               return;
            case ApplicationMain.count15:
            case ApplicationMain.count13:
               this._as8760._gj2216();
               return;
            case ApplicationMain.count28:
            case ApplicationMain.count29:
               this._as8760._cg4768();
               return;
            case ApplicationMain.count6:
            case ApplicationMain.count7:
               this._as8760.move2();
               return;
            default:
               return;
         }
      }
      
      public function _do13190() : void
      {
      }
      
      public function _gk13209() : void
      {
         var count2:String = null;
         var count:Boolean = false;
         var count3:String = null;
         if(Boolean(Configuration.isEnabled7) && !Configuration.isEnabled2)
         {
            count2 = UtilsUtils.getString();
            count = false;
            if(count2 != null)
            {
               for each(count3 in Configuration.items)
               {
                  if(count2.indexOf(count3) >= 0)
                  {
                     count = true;
                     break;
                  }
               }
            }
            else
            {
               count = false;
            }
            if(count && !UtilsUtils._xr1511())
            {
               count = false;
            }
            if((Configuration.urlString9 == Configuration.urlString7 || Configuration.urlString9 == Configuration.urlString4) && Boolean(this._dr1773._wb8182()))
            {
               count = true;
            }
            if(!count)
            {
               this._ka3329(BanHandler.count6,null);
            }
         }
      }
      
      private function _ms13859() : void
      {
         this.destroy();
         var count2:XML = new XML(TextManager._eo5308[textString].toXMLString());
         var count:FichasUtils = new FichasUtils("",[count2.attribute("descAviso")]);
         this._xm9390 = new FichasController(this._as8760._hd5784[textString1](),count);
         this._xm9390._om2386(_xw1367.count9);
         this._xm9390.show(804,357);
      }
      
      public function destroy() : void
      {
         if(this._xm9390 != null)
         {
            this._xm9390.destroy();
            this._xm9390 = null;
         }
      }
      
      public function onClick(param1:String) : void
      {
         var count:int = 0;
         if(this._fl13298 != null)
         {
            if(this._fy2151 != null)
            {
               this._fy2151.removeEventListener(MouseEvent.CLICK,this.onClick1);
               this._fy2151.removeEventListener(MouseEvent.ROLL_OVER,this._dd13936);
               this._fy2151.removeEventListener(MouseEvent.ROLL_OUT,this._lx10386);
            }
            _xw1367.getInstance().move2(this._fl13298,_xw1367.count9);
            this._fl13298 = null;
            this._fy2151 = null;
         }
         this._fl13298 = new MovieClip();
         var count3:Sprite = new Sprite();
         count3.graphics.beginFill(0,0.7);
         count3.graphics.drawRect(0,0,Configuration.count2,Configuration.count3);
         count3.graphics.endFill();
         count3.graphics.beginFill(16763904,1);
         count3.graphics.drawRect(0,Configuration.count3 - 116,Configuration.count2,116);
         count3.graphics.endFill();
         var count1:TextField = new TextField();
         count1.width = Configuration.count2 - 20 - 214;
         count1.height = 116 - 15;
         count1.x = 20;
         count1.y = Configuration.count3 - 116 + 15;
         count1.multiline = true;
         count1.wordWrap = true;
         var count2:TextFormat = count1.getTextFormat();
         count2.font = "VAGRoundedlight";
         count2.size = 18;
         count1.text = param1;
         count1.setTextFormat(count2);
         UtilsUtils._xl9503(count1,param1);
         if(count1.numLines > 1)
         {
            count = count1.getLineLength(0);
            if(count > 0)
            {
               count2 = count1.getTextFormat(0,count);
               count2.font = "VAGRoundedBold1";
               count1.setTextFormat(count2,0,count);
            }
         }
         this._fy2151 = new MovieClip();
         var count7:Sprite = new Sprite();
         this.render(count7,16763904,0);
         this._fy2151.addChild(count7);
         this._fy2151.buttonMode = true;
         this._fy2151.addEventListener(MouseEvent.CLICK,this.onClick1);
         this._fy2151.addEventListener(MouseEvent.ROLL_OVER,this._dd13936);
         this._fy2151.addEventListener(MouseEvent.ROLL_OUT,this._lx10386);
         this._fy2151.x = Configuration.count2 - (this._fy2151.width + 20);
         this._fy2151.y = Configuration.count3 - 116 + 15;
         this._fl13298.addChild(count3);
         this._fl13298.addChild(count1);
         this._fl13298.addChild(this._fy2151);
         _xw1367.getInstance()._uc3178(this._fl13298,_xw1367.count9);
      }
      
      private function _dd13936(param1:MouseEvent) : void
      {
         var count:Sprite = Sprite(this._fy2151.getChildAt(0));
         count.graphics.clear();
         this.render(count,16763904,10393986);
      }
      
      private function _lx10386(param1:MouseEvent) : void
      {
         var count:Sprite = Sprite(this._fy2151.getChildAt(0));
         count.graphics.clear();
         this.render(count,16763904,0);
      }
      
      private function onClick1(param1:MouseEvent) : void
      {
         this._fy2151.removeEventListener(MouseEvent.CLICK,this.onClick1);
         _xw1367.getInstance().move2(this._fl13298,_xw1367.count9);
         this._fl13298 = null;
      }
      
      private function render(param1:Sprite, param2:uint, param3:uint) : void
      {
         param1.graphics.beginFill(param2);
         param1.graphics.lineStyle(3,param3,1,false,LineScaleMode.NORMAL,CapsStyle.SQUARE);
         param1.graphics.drawCircle(9,9,10);
         param1.graphics.endFill();
         param1.graphics.moveTo(9 - 3,9 - 3);
         param1.graphics.lineTo(9 + 3,9 + 3);
         param1.graphics.moveTo(9 - 3,9 + 3);
         param1.graphics.lineTo(9 + 3,9 - 3);
      }
   }
}

