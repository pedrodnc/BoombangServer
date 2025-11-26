package src.modules.multiplayerGames
{
   import flash.display.MovieClip;
   import src.logs.*;
   import src.modules._hq14072;
   import src.modules.enterScene._yc4848;
   import src.modules.interfaz._je14031;
   import src.modules.multiplayerGames.dataGame.*;
   import src.modules.multiplayerGames.games.cocos.*;
   import src.modules.multiplayerGames.games.lianas.*;
   import src.modules.multiplayerGames.games.ring.*;
   import src.modules.multiplayerGames.games.shuriken.*;
   
   public class _qp15086 extends _qs5969
   {
      
      private var _bg10612:_hv11591;
      
      private var _lg13977:MovieClip;
      
      private var _xx6456:int;
      
      private var enterScene:_yc4848;
      
      private var _lp469:_je14031;
      
      private var _hv390:int;
      
      private var _qo6460:int;
      
      private var position:int;
      
      private var _vo1138:int;
      
      private var _ar6606:int;
      
      private var _ob3192:int;
      
      public function _qp15086(param1:_xl8523, param2:_yc4848, param3:MovieClip, param4:_je14031)
      {
         super(param1);
         this._lg13977 = param3;
         this.enterScene = param2;
         this._xx6456 = param2._qu12972;
         this._lp469 = param4;
         this._lp469._dc14886._ra3631(false);
         this.start();
      }
      
      override public function loop() : void
      {
         if(this._bg10612 != null)
         {
            this._bg10612.loop();
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._bg10612 != null)
         {
            this._bg10612.destroy();
         }
      }
      
      override public function _bw11981(param1:_hq14072) : void
      {
         var _loc7_:Array = param1._lv9976;
         var _loc8_:uint = uint(String(_loc7_[1]).charCodeAt(0));
         switch(_loc8_)
         {
            case _xl8523._fw3416:
               if(param1._lv9976.length < 3)
               {
                  logs._kp3815(new _ex15859(_qn13596._ny10327,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_CUENTA_REGRESIVA",param1._lv9976.toString()));
                  return;
               }
               var _loc6_:int = int(param1._lv9976[2]);
               this._bg10612._pv2591(0);
               return;
               break;
            case _xl8523._dw4538:
               if(param1._lv9976.length < 3)
               {
                  logs._kp3815(new _ex15859(_qn13596._ny10327,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_CUENTA_REGRESIVA_GAMEPLAY",param1._lv9976.toString()));
                  return;
               }
               _loc6_ = int(param1._lv9976[2]);
               this._bg10612._gu11268(0);
               return;
               break;
            case _xl8523._pr10056:
               if(param1._lv9976.length < 3)
               {
                  logs._kp3815(new _ex15859(_qn13596._ny10327,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_CUENTA_REGRESIVA_FIN_JUEGO",param1._lv9976.toString()));
                  return;
               }
               _loc6_ = int(param1._lv9976[2]);
               this._bg10612._bp14961(0);
               return;
               break;
            case _xl8523._jo10076:
               this._bg10612._ny11122();
               return;
            case _xl8523._lu3692:
               if(param1._lv9976.length < 3)
               {
                  logs._kp3815(new _ex15859(_qn13596._ny10327,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_DESCALIFICAR_USR",param1._lv9976.toString()));
                  return;
               }
               var _loc2_:int = int(param1._lv9976[2]);
               return;
               break;
            case _xl8523._vl9023:
               if(param1._lv9976.length < 6)
               {
                  logs._kp3815(new _ex15859(_qn13596._ny10327,"MultiplayerGamesModule.reciebeMsg SUBCODE_MGAMES_END_GAME",param1._lv9976.toString()));
                  return;
               }
               var _loc3_:int = int(param1._lv9976[2]);
               _loc2_ = int(param1._lv9976[3]);
               var _loc4_:String = param1._lv9976[4];
               var _loc5_:String = param1._lv9976[5];
               this._bg10612._rj8693(0,0,null,null);
               return;
               break;
            case _xl8523._fs14835:
               this._bg10612._ge13177();
               return;
            case _xl8523._qy11845:
               this._bg10612._wr2590(0);
               return;
            case _xl8523._xd6971:
               this._bg10612._bh436();
               return;
            case _xl8523._hf10378:
               this._bg10612._wb9197();
               return;
            case _xl8523._at6311:
               this._bg10612._rx14324();
               return;
            case _xl8523._ih13792:
               this._bg10612._eu7069();
               return;
            case _xl8523._cf9462:
               switch(param1._lv9976[2].charCodeAt(0))
               {
                  case _xl8523._ac1096:
               }
               return;
            case _xl8523._fa2209:
               switch(param1._lv9976[2].charCodeAt(0))
               {
                  case _xl8523._jy5145:
                     this._hv390 = int(param1._lv9976[3]);
                     this._qo6460 = int(param1._lv9976[4]);
                     this.position = int(param1._lv9976[5]);
                     (this._bg10612 as _wk12820)._fi10318(this._hv390,this._qo6460,this.position);
                     break;
                  case _xl8523._xf3515:
                     this._hv390 = int(param1._lv9976[3]);
                     (this._bg10612 as _wk12820)._lr131(this._hv390);
                     break;
                  case _xl8523._ir3761:
                     this._vo1138 = int(param1._lv9976[3]);
                     this._hv390 = int(param1._lv9976[4]);
                     this._ar6606 = int(param1._lv9976[5]);
                     this._ob3192 = int(param1._lv9976[6]);
                     (this._bg10612 as _wk12820)._in5812(this._vo1138,this._hv390,this._ar6606,this._ob3192);
               }
               return;
            case _xl8523._rb6849:
               switch(param1._lv9976[2])
               {
                  case _xl8523._ia2599:
               }
               return;
            case _xl8523._bt15137:
               this._bg10612._me13018(param1._lv9976[2]);
               return;
            default:
               return;
         }
      }
      
      public function start() : void
      {
         switch(this._xx6456)
         {
            case _oc1650._hx13454:
               this._bg10612 = new _ct8172(this._lg13977,_tv9779,this.enterScene,this._lp469);
               return;
            case _oc1650._qf5633:
               this._bg10612 = new _iv2502(this._lg13977,_tv9779,this.enterScene,this._lp469);
               return;
            case _oc1650._de12066:
               this._bg10612 = new _vu1787(this._lg13977,_tv9779,this.enterScene,this._lp469);
               return;
            case _oc1650._ik10140:
               this._bg10612 = new _wk12820(this._lg13977,_tv9779,this.enterScene,this._lp469);
               return;
            default:
               return;
         }
      }
   }
}

