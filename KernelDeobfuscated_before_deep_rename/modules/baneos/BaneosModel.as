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
      
      private static var _ls13871:String = "multiplayerGames";
      
      private static var _mm1192:String = "getFichaAvisoGames";
      
      private static var _og7403:Boolean = false;
      
      private var _hv15199:BaneosController;
      
      public var _ji5399:int;
      
      public var _il5468:Array;
      
      private var _as8760:ApplicationMain;
      
      private var logs:Logger;
      
      private var _yl947:SocketManager;
      
      private var _em1533:LoadersManager;
      
      private var _dr1773:UserSession;
      
      private var _xm9390:FichasController;
      
      private var _bp1287:int;
      
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
         this._bp1287 = -1;
         this._hv15199 = new BaneosController();
         this._hv15199.addEventListener(BaneosEvents._fd4922,this._eb15880);
      }
      
      public static function _xf13820() : Boolean
      {
         return _og7403;
      }
      
      private function _eb15880(param1:BaneosEvents) : void
      {
         if(_og7403)
         {
            return;
         }
         var _loc3_:int = int(String(param1._lv9976[0]).charCodeAt(0));
         switch(_loc3_)
         {
            case SocketManager._nu9941:
               if(param1._lv9976.length < 3)
               {
                  this.logs._kp3815(new Logs(Logger._ny10327,"ControlBaneos.onBaneoEvent, MUS_BANEO_USER",param1._lv9976.toString()));
                  return;
               }
               this._ka3329(BanHandler._ld10824,[int(param1._lv9976[1]) * 60,String(param1._lv9976[2])]);
               return;
               break;
            case SocketManager._bd13550:
               if(param1._lv9976.length < 2)
               {
                  this.logs._kp3815(new Logs(Logger._ny10327,"ControlBaneos.onBaneoEvent, MUS_BANEO_DESACTIVADA",param1._lv9976.toString()));
                  return;
               }
               this._ka3329(BanHandler._df2854,[String(param1._lv9976[1])]);
               return;
               break;
            case SocketManager._bk11602:
               this._ka3329(BanHandler._ld10824,[int(param1._lv9976[1]),String(param1._lv9976[2])]);
               return;
            case SocketManager._vm11483:
               if(this._yl947._kx6292() == SocketManager._es10590)
               {
                  this._ka3329(BanHandler._ul14945,null);
               }
               else
               {
                  this._ka3329(BanHandler._wo13953,null);
               }
               return;
            case SocketManager._ue15593:
               this._vi2863(param1._lv9976[1]);
               return;
            case SocketManager._ii9970:
               if(param1._lv9976.length >= 3)
               {
                  if(param1._lv9976[2] == MultiplayergamesController._kk6890)
                  {
                     return;
                  }
               }
               this._ms13859();
               return;
            case SocketManager._ke15716:
               if(param1._lv9976.length < 2)
               {
                  this.logs._kp3815(new Logs(Logger._ny10327,"ControlBaneos.onBaneoEvent, MUS_ADMINISTRACION",param1._lv9976.toString()));
                  return;
               }
               var _loc2_:int = int(String(param1._lv9976[1]).charCodeAt(0));
               switch(0)
               {
                  case BaneosController._va5999:
                     this._ka3329(BanHandler._rc2258,null);
               }
               return;
               break;
            default:
               return;
         }
      }
      
      public function _ka3329(param1:int, param2:Array) : void
      {
         if(_og7403)
         {
            return;
         }
         _og7403 = true;
         if(this._em1533 != null && this._em1533._lm5662 != null)
         {
            this._em1533._lm5662.hide();
         }
         this._ji5399 = param1;
         this._il5468 = param2;
         this._tl14705();
         this._as8760._xd1691();
      }
      
      private function _tl14705() : void
      {
         switch(this._as8760._dn11747)
         {
            case ApplicationMain._ic3873:
            case ApplicationMain._yl2070:
            case ApplicationMain._nu13691:
               this._as8760._tu4337();
               return;
            case ApplicationMain._rj4034:
            case ApplicationMain._wc8517:
            case ApplicationMain._et7778:
            case ApplicationMain._gg703:
               this._as8760._sr10092();
               return;
            case ApplicationMain._kb2907:
               this._as8760._hg14456();
               return;
            case ApplicationMain._vn9689:
            case ApplicationMain._gk1119:
               this._as8760._gj2216();
               return;
            case ApplicationMain._if13942:
            case ApplicationMain._xg11593:
               this._as8760._cg4768();
               return;
            case ApplicationMain._mp1582:
            case ApplicationMain._vg13561:
               this._as8760._nb10991();
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
         var _loc1_:String = null;
         var _loc2_:Boolean = false;
         var _loc3_:String = null;
         if(Boolean(Configuration._av4029) && !Configuration._ih15806)
         {
            _loc1_ = UtilsUtils._vy3269();
            _loc2_ = false;
            if(_loc1_ != null)
            {
               for each(_loc3_ in Configuration._ic15653)
               {
                  if(_loc1_.indexOf(_loc3_) >= 0)
                  {
                     _loc2_ = true;
                     break;
                  }
               }
            }
            else
            {
               _loc2_ = false;
            }
            if(_loc2_ && !UtilsUtils._xr1511())
            {
               _loc2_ = false;
            }
            if((Configuration._qs3725 == Configuration._gl650 || Configuration._qs3725 == Configuration._gk8815) && Boolean(this._dr1773._wb8182()))
            {
               _loc2_ = true;
            }
            if(!_loc2_)
            {
               this._ka3329(BanHandler._ld11239,null);
            }
         }
      }
      
      private function _ms13859() : void
      {
         this._ea3740();
         var _loc1_:XML = new XML(TextManager._eo5308[_ls13871].toXMLString());
         var _loc2_:FichasUtils = new FichasUtils("",[_loc1_.attribute("descAviso")]);
         this._xm9390 = new FichasController(this._as8760._hd5784[_mm1192](),_loc2_);
         this._xm9390._om2386(_xw1367._ww5897);
         this._xm9390._db5584(804,357);
      }
      
      public function _ea3740() : void
      {
         if(this._xm9390 != null)
         {
            this._xm9390.destroy();
            this._xm9390 = null;
         }
      }
      
      public function _vi2863(param1:String) : void
      {
         var _loc2_:int = 0;
         if(this._fl13298 != null)
         {
            if(this._fy2151 != null)
            {
               this._fy2151.removeEventListener(MouseEvent.CLICK,this._vj15667);
               this._fy2151.removeEventListener(MouseEvent.ROLL_OVER,this._dd13936);
               this._fy2151.removeEventListener(MouseEvent.ROLL_OUT,this._lx10386);
            }
            _xw1367.getInstance()._na10792(this._fl13298,_xw1367._ww5897);
            this._fl13298 = null;
            this._fy2151 = null;
         }
         this._fl13298 = new MovieClip();
         var _loc3_:Sprite = new Sprite();
         _loc3_.graphics.beginFill(0,0.7);
         _loc3_.graphics.drawRect(0,0,Configuration._wc13865,Configuration._kl10731);
         _loc3_.graphics.endFill();
         _loc3_.graphics.beginFill(16763904,1);
         _loc3_.graphics.drawRect(0,Configuration._kl10731 - 116,Configuration._wc13865,116);
         _loc3_.graphics.endFill();
         var _loc4_:TextField = new TextField();
         _loc4_.width = Configuration._wc13865 - 20 - 214;
         _loc4_.height = 116 - 15;
         _loc4_.x = 20;
         _loc4_.y = Configuration._kl10731 - 116 + 15;
         _loc4_.multiline = true;
         _loc4_.wordWrap = true;
         var _loc5_:TextFormat = _loc4_.getTextFormat();
         _loc5_.font = "VAGRoundedlight";
         _loc5_.size = 18;
         _loc4_.text = param1;
         _loc4_.setTextFormat(_loc5_);
         UtilsUtils._xl9503(_loc4_,param1);
         if(_loc4_.numLines > 1)
         {
            _loc2_ = _loc4_.getLineLength(0);
            if(_loc2_ > 0)
            {
               _loc5_ = _loc4_.getTextFormat(0,_loc2_);
               _loc5_.font = "VAGRoundedBold1";
               _loc4_.setTextFormat(_loc5_,0,_loc2_);
            }
         }
         this._fy2151 = new MovieClip();
         var _loc6_:Sprite = new Sprite();
         this._kl10980(_loc6_,16763904,0);
         this._fy2151.addChild(_loc6_);
         this._fy2151.buttonMode = true;
         this._fy2151.addEventListener(MouseEvent.CLICK,this._vj15667);
         this._fy2151.addEventListener(MouseEvent.ROLL_OVER,this._dd13936);
         this._fy2151.addEventListener(MouseEvent.ROLL_OUT,this._lx10386);
         this._fy2151.x = Configuration._wc13865 - (this._fy2151.width + 20);
         this._fy2151.y = Configuration._kl10731 - 116 + 15;
         this._fl13298.addChild(_loc3_);
         this._fl13298.addChild(_loc4_);
         this._fl13298.addChild(this._fy2151);
         _xw1367.getInstance()._uc3178(this._fl13298,_xw1367._ww5897);
      }
      
      private function _dd13936(param1:MouseEvent) : void
      {
         var _loc2_:Sprite = Sprite(this._fy2151.getChildAt(0));
         _loc2_.graphics.clear();
         this._kl10980(_loc2_,16763904,10393986);
      }
      
      private function _lx10386(param1:MouseEvent) : void
      {
         var _loc2_:Sprite = Sprite(this._fy2151.getChildAt(0));
         _loc2_.graphics.clear();
         this._kl10980(_loc2_,16763904,0);
      }
      
      private function _vj15667(param1:MouseEvent) : void
      {
         this._fy2151.removeEventListener(MouseEvent.CLICK,this._vj15667);
         _xw1367.getInstance()._na10792(this._fl13298,_xw1367._ww5897);
         this._fl13298 = null;
      }
      
      private function _kl10980(param1:Sprite, param2:uint, param3:uint) : void
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

