package src.modules.chooseScene.managerBanners
{
   import flash.display.*;
   import flash.events.*;
   import src.*;
   import src.config.*;
   import src.loaders.*;
   import src.modules.chooseScene._ij15863;
   import src.modules.chooseScene._tj14068;
   import src.utils.*;
   import src.utils.boombang.*;
   
   public class _db15471
   {
      
      private static var _kw5420:int = 1;
      
      private static var _ky7171:int = 2;
      
      private static var _ds6409:int = 3;
      
      private static var _vo724:int = 4;
      
      private static var _ll7834:int = 5;
      
      private static var state:int = _kw5420;
      
      private var _ku6448:MovieClip;
      
      private var _hn3536:MovieClip;
      
      private var _um5403:_tj14068;
      
      private var _vc10957:_ij15863;
      
      private var _em1533:_sa9254;
      
      private var _wa14498:int;
      
      private var _cx7785:String;
      
      private var _fa12603:String;
      
      private var _dc14577:Boolean;
      
      private var _lt8321:Boolean;
      
      public function _db15471(param1:_tj14068, param2:_ij15863)
      {
         super();
         this._um5403 = param1;
         this._vc10957 = param2;
         this._dc14577 = false;
         this._em1533 = _sa9254.getInstance();
         this._lt8321 = false;
      }
      
      public function init() : void
      {
         if(state == _kw5420)
         {
            this._vc10957._ch15741();
         }
      }
      
      public function _eu2368() : void
      {
         this._lt8321 = true;
      }
      
      public function destroy() : void
      {
         this._hu12389();
         this._ku6448 = null;
         if(state == _ky7171 || state == _ds6409 || state == _ll7834)
         {
            state = _kw5420;
         }
      }
      
      public function load(param1:int, param2:String, param3:String) : void
      {
         this._wa14498 = param1;
         this._cx7785 = param2;
         this._fa12603 = param3;
         this._em1533._qx1635();
         this._em1533.addElement(_mk16025._ua7291);
         this._em1533._rj4318(_mk16025._ua7291,param3);
         this._em1533.start();
         state = _ky7171;
      }
      
      public function _db5584() : void
      {
         if(this._lt8321)
         {
            return;
         }
         _xw1367.getInstance()._uc3178(this._ku6448,_xw1367._wa4051,true);
         this._ku6448.x = _cc7688._wc13865 - 11 - 300;
         this._ku6448.y = 10;
         if(this._hn3536 is BaseBanner)
         {
            BaseBanner(this._hn3536)._BaseBannerInit();
            BaseBanner(this._hn3536)._BaseBannerSetPropsBanner(this._wa14498,this._cx7785,this._fa12603,"");
         }
         else
         {
            this._ku6448.addEventListener(MouseEvent.MOUSE_DOWN,this._ne9868);
            this._ku6448.tabEnabled = false;
            if(this._cx7785 != null)
            {
               this._ku6448.buttonMode = true;
            }
            else
            {
               this._ku6448.buttonMode = false;
            }
         }
         this._dc14577 = true;
      }
      
      public function _hu12389() : void
      {
         if(this._dc14577)
         {
            _xw1367.getInstance()._na10792(this._ku6448,_xw1367._wa4051);
            if(this._hn3536 is BaseBanner)
            {
               BaseBanner(this._hn3536)._BaseBannerDestroy();
            }
            else
            {
               this._ku6448.removeEventListener(MouseEvent.MOUSE_DOWN,this._ne9868);
            }
            this._dc14577 = false;
         }
      }
      
      private function _ne9868(param1:MouseEvent) : void
      {
         if(this._wa14498 == 966)
         {
            _kg15251.openPopup(this._cx7785);
            this._vc10957._hb2985(this._wa14498);
         }
         else if(this._wa14498 == 1002)
         {
            _ef10972._iu2197();
         }
         else
         {
            _kg15251.openPopup(this._cx7785);
            this._vc10957._hb2985(this._wa14498);
            this._um5403._jv4274();
         }
         state = _vo724;
      }
      
      public function loop() : void
      {
         var _loc1_:int = 0;
         switch(state)
         {
            case _ky7171:
               if(this._em1533._tg7298())
               {
                  this._ku6448 = new MovieClip();
                  this._hn3536 = MovieClip(this._em1533._xb9567(_mk16025._ua7291));
                  if(this._hn3536 != null)
                  {
                     this._ku6448.addChild(this._hn3536);
                     this._em1533._qx1635();
                     if(!this._lt8321)
                     {
                        this._um5403._id13318();
                     }
                     state = _ds6409;
                  }
                  else
                  {
                     state = _ll7834;
                  }
               }
               return;
            case _ds6409:
               if(this._hn3536 is BaseBanner)
               {
                  _loc1_ = BaseBanner(this._hn3536)._BaseBannerGetCodePress();
                  switch(_loc1_)
                  {
                     case BaseBanner.CODE_PRESS_CLOSE:
                        this._um5403._jv4274();
                        state = _ll7834;
                        break;
                     case BaseBanner.CODE_PRESS_CLICK_BANNER:
                        this._ne9868(null);
                  }
               }
               return;
            default:
               return;
         }
      }
   }
}

