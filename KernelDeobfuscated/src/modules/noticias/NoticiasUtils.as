package src.modules.noticias
{
   import flash.display.MovieClip;
   import flash.external.*;
   import flash.utils.*;
   import src.modules.antitimos.fichas.*;
   import src.modules.noticias.templates.*;
   import src.multiuser.*;
   import src.utils.fichas.*;
   
   public class NoticiasUtils extends MovieClip
   {
      
      private static var _go12237:Dictionary;
      
      public static const textString:String = "getMovieClip";
      
      public static const textString1:String = "_mcFichaSelec";
      
      public static const textString2:String = "_mcFichaNoticia_";
      
      private static const textString3:String = "mcNewNews";
      
      private static const textString4:String = "mostrarNews";
      
      private static const textString5:String = "ocultarNews";
      
      public static const count:int = -1;
      
      public static const count1:int = 1;
      
      public static const count2:int = 2;
      
      public static const count3:int = 3;
      
      public static const count4:int = 1;
      
      public static const count5:int = 2;
      
      public static const count6:int = 3;
      
      private static const count7:int = 690;
      
      private static const count8:int = 8;
      
      private static const count9:int = 1;
      
      private static const count10:int = 4;
      
      private static var isEnabled:Boolean = false;
      
      public static const count11:int = 0;
      
      public static const count12:int = 1;
      
      public static const count13:int = 2;
      
      public static const count14:int = 3;
      
      private static const count15:int = 1000;
      
      private static const count16:int = 1000 * 60 * 30;
      
      private var _kd3760:MovieClip;
      
      private var textString3:int = -1;
      
      private var _sl11877:NoticiasView;
      
      private var _ye10777:TemplatesView;
      
      private var _xb2002:NoticiasController;
      
      private var _mw12019:MovieClip;
      
      private var isEnabled1:Boolean;
      
      private var _mb398:FichasController;
      
      private var _qh1795:Function;
      
      private var count18:int;
      
      private var count19:int;
      
      private var _ut11943:uint = 0;
      
      private var _vp13389:uint = 1;
      
      private var _gc8670:uint = 0;
      
      private var count20:int;
      
      private var count21:int;
      
      public function NoticiasUtils(param1:MovieClip)
      {
         super();
         if(param1 != null)
         {
            this._kd3760 = param1;
         }
         if(_go12237 == null)
         {
            _go12237 = new Dictionary();
         }
         this._xb2002 = new NoticiasController();
         this._xb2002.addEventListener(NoticiasEvents.textString1,this.handleSocket,false,0,true);
         this._xb2002.addEventListener(NoticiasEvents.textString2,this.stop1,false,0,true);
         this._xb2002.addEventListener(NoticiasEvents.textString3,this.stop2,false,0,true);
         this.count20 = getTimer();
         this.count21 = getTimer();
      }
      
      public function get status() : int
      {
         return this.textString3;
      }
      
      public function destroy() : void
      {
         this.destroy();
         this._xb2002.removeEventListener(NoticiasEvents.textString1,this.handleSocket);
         this._xb2002.removeEventListener(NoticiasEvents.textString2,this.stop1);
         this._xb2002.removeEventListener(NoticiasEvents.textString3,this.stop2);
         this._xb2002.destroy();
         this._xb2002 = null;
      }
      
      public function destroy() : Boolean
      {
         if(this._mb398 != null)
         {
            this._mb398.destroy();
            this._mb398 = null;
            return true;
         }
         return false;
      }
      
      public function show(param1:int, param2:int) : Boolean
      {
         if(!this._lx15673)
         {
            return false;
         }
         this.isEnabled1 = true;
         this.count18 = param1;
         this.count19 = param2;
         this.destroy();
         this._ut11943 = 0;
         this._xo11249(count3);
         return true;
      }
      
      public function authenticateUser2() : Boolean
      {
         if(this._mw12019 != null)
         {
            this._mw12019[textString3].gotoAndStop(textString5);
         }
         if(this.destroy())
         {
            if(this._qh1795 != null)
            {
               this._qh1795();
            }
            return true;
         }
         return false;
      }
      
      public function _sq6775(param1:MovieClip) : void
      {
         this._mw12019 = param1;
         this.isEnabled1 = false;
         this._xa7741(count5,0);
      }
      
      private function _jn2708() : void
      {
         var count2:MovieClip = this._kd3760[textString](textString1);
         var count:FichasUtils = new FichasUtils(null,[""]);
         this._mb398 = new FichasView(count2,count,null,null,this.authenticateUser2);
         if(this._sl11877 != null)
         {
            this._sl11877._mn15453(count2);
            if(this._ut11943 == 0)
            {
               this._sl11877._bd12836();
            }
            this._mb398.show(count7,count8);
         }
      }
      
      private function _dj8488() : void
      {
         var count2:MovieClip = this._kd3760[textString](textString2 + this._ye10777.count1);
         var count:FichasUtils = new FichasUtils(null,[""]);
         this._mb398 = new FichasView(count2,count,null,null,this.authenticateUser2);
         if(this._ye10777 != null)
         {
            this._ye10777._xo7981(count2);
            this._mb398.show(count7,count8);
         }
      }
      
      private function _xa7741(param1:int, param2:int) : void
      {
         if(_go12237[param2] != null && (_go12237[param2] as NoticiasView)._kg8871 == param1 && this.count21 != this.count20 && getTimer() < this.count21 + count16)
         {
            this._bk922(_go12237[param2]);
         }
         else
         {
            if(getTimer() > this.count21 + count16)
            {
               _go12237 = new Dictionary();
            }
            this._xb2002.handleSocket(param1,param2);
         }
      }
      
      private function _bk922(param1:NoticiasView, param2:Boolean = false) : void
      {
         if(this._sl11877 != null)
         {
            this._sl11877._cj7282();
            this._sl11877 = null;
         }
         this._sl11877 = param1;
         if(this._mw12019 != null && param2 || Boolean(isEnabled))
         {
            this._mw12019[textString3].gotoAndPlay(textString4);
            isEnabled = true;
         }
         else
         {
            this._mw12019[textString3].gotoAndStop(textString5);
         }
         if(this.isEnabled1)
         {
            isEnabled = false;
            this._xo11249(count1);
         }
      }
      
      private function handleSocket(param1:NoticiasEvents) : void
      {
         var items:int = 0;
         param1.stopImmediatePropagation();
         var count:Array = param1.items;
         var count3:int = int(count.shift());
         var count1:Boolean = Boolean(int(count.shift()));
         var count2:uint = uint(count.shift());
         var count7:Array = new Array(count2);
         while(items < count2)
         {
            count7[items] = SocketManager.getList1(count.shift());
            items++;
         }
         var count8:NoticiasView = new NoticiasView(count3,count2,count7,this.show,this._ce12242,this._sr8330);
         _go12237[this._ut11943] = count8;
         this._bk922(_go12237[this._ut11943],count1);
      }
      
      private function _ce12242() : void
      {
         ++this._ut11943;
         this._xa7741(count5,this._ut11943);
      }
      
      private function _sr8330() : void
      {
         if(this._ut11943 > 0)
         {
            --this._ut11943;
         }
         else
         {
            this._ut11943 = 0;
         }
         this._xa7741(count5,this._ut11943);
      }
      
      private function show(param1:int, param2:int) : void
      {
         ExternalInterface.call("openBlog");
      }
      
      private function stop1(param1:NoticiasEvents) : void
      {
         param1.stopImmediatePropagation();
         var count:Array = param1.items;
         var count3:Templates = new Templates();
         count3._kg8871 = int(count.shift());
         count3._tq12374 = int(count.shift());
         count3.textString = String(count.shift());
         count3.texto = String(count.shift());
         count3._ak10786 = String(count.shift());
         count3.count1 = int(count.shift());
         var count1:String = count.shift();
         if(count1 != null && count1.length > 0)
         {
            count3._xt2092 = SocketManager.getList1(count1);
         }
         if(this._ye10777 != null)
         {
            this._ye10777.destroy();
            this._ye10777 = null;
         }
         count3._vw8300 = this._vv9267;
         this._ye10777 = Templates._kw11300(count3);
         this._xo11249(count2);
      }
      
      private function _vv9267() : void
      {
         if(!this._lx15673)
         {
            return;
         }
         this._xo11249(count3);
      }
      
      private function stop2(param1:NoticiasEvents) : void
      {
         param1.stopImmediatePropagation();
         var count:Array = param1.items;
         if(count.length <= 0)
         {
            return;
         }
         switch(int(count.shift()))
         {
            case count14:
               return;
            case count12:
               if(this._sl11877 != null && this._ut11943 > 0)
               {
                  --this._ut11943;
                  this._sl11877._ue12701();
               }
               return;
            case count11:
               return;
            case count13:
               return;
            default:
               return;
         }
      }
      
      public function _xo11249(param1:int) : void
      {
         this.destroy();
         this.textString3 = param1;
         switch(param1)
         {
            case count:
               this._ut11943 = 0;
               return;
            case count1:
               this._jn2708();
               return;
            case count2:
               this._dj8488();
               return;
            case count3:
               this._xa7741(count5,this._ut11943);
               return;
            default:
               return;
         }
      }
      
      private function get _lx15673() : Boolean
      {
         if(getTimer() > this.count20 + count15)
         {
            this.count20 = getTimer();
            return true;
         }
         return false;
      }
   }
}

