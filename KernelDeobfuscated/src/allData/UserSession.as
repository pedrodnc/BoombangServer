package src.allData
{
   import com.hurlant.crypto.*;
   import com.hurlant.crypto.prng.*;
   import com.hurlant.crypto.symmetric.ICipher;
   import flash.utils.*;
   import src.allData.color.*;
   import src.modules.concursos.*;
   import src.modules.login.*;
   import src.person.PersonAnimation;
   import src.tv.boombang.application.social.datatypes.DatatypesModel;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.datatypes.events.EventsModel;
   
   public class UserSession extends PersonAnimation
   {
      
      private static var _instance:UserSession;
      
      public static const _kr15451:uint = 0;
      
      public static const _ma6151:uint = 1;
      
      public static const _lb6305:uint = 2;
      
      public static const isEnabled:Boolean = false;
      
      public static const isEnabled1:Boolean = true;
      
      public static const urlString:String = "c78f2b2996d";
      
      private var urlString1:String;
      
      private var urlString2:String;
      
      private var _creditosOro:int;
      
      private var _creditosDiamante:int;
      
      private var count:int;
      
      private var count1:int;
      
      private var count2:int;
      
      private var count3:int;
      
      private var count4:int;
      
      private var count5:int;
      
      private var count6:int;
      
      private var isEnabled2:Boolean;
      
      private var isEnabled3:Boolean;
      
      private var count7:int;
      
      private var count8:int;
      
      private var count9:int;
      
      private var count10:int;
      
      private var urlString3:String = "";
      
      private var items:Array;
      
      private var urlString4:String;
      
      private var urlString5:String;
      
      private var urlString6:String;
      
      private var urlString7:String;
      
      private var urlString8:String;
      
      private var isEnabled4:Boolean = false;
      
      public var urlString9:String = "";
      
      public var _ds9725:Object;
      
      private var isEnabled5:Boolean;
      
      private var isEnabled6:Boolean = false;
      
      private var count11:int = 0;
      
      private var urlString10:String;
      
      private var count12:int;
      
      private var isEnabled7:Boolean = false;
      
      private var isEnabled8:Boolean = false;
      
      private var isEnabled9:Boolean = false;
      
      private var count13:Number;
      
      private var items1:Array;
      
      private var _jx11097:Dictionary;
      
      public function UserSession(param1:_rw9443)
      {
         this.items = new Array();
         this.items1 = new Array();
         super();
      }
      
      public static function getInstance() : UserSession
      {
         if(_instance == null)
         {
            _instance = new UserSession(new _rw9443());
         }
         return _instance;
      }
      
      public function _ch7698(param1:EventsModel) : void
      {
         if(!this._jx11097)
         {
            this._jx11097 = new Dictionary();
         }
         this._jx11097[param1.id] = param1;
      }
      
      public function _ef4675(param1:int) : EventsModel
      {
         if(Boolean(this._jx11097) && Boolean(this._jx11097[param1]))
         {
            return this._jx11097[param1];
         }
         return null;
      }
      
      public function _fd11666(param1:DatatypesModel, param2:Boolean) : void
      {
         if(this.items1 == null)
         {
            this.items1 = new Array();
         }
         var count3:int = int(this.items1.indexOf(param1));
         if(param2)
         {
            if(count3 < 0)
            {
               this.items1.push(param1);
            }
         }
         else if(count3 >= 0)
         {
            delete this.items1[count3];
         }
      }
      
      public function get _jr10446() : Number
      {
         return this.count13;
      }
      
      public function set _jr10446(param1:Number) : void
      {
         this.count13 = param1;
      }
      
      public function _tf16034(param1:DatatypesModel) : Boolean
      {
         return this.items1.indexOf(param1) >= 0;
      }
      
      public function get _vj6269() : Boolean
      {
         return this.isEnabled7;
      }
      
      public function set _vj6269(param1:Boolean) : void
      {
         this.isEnabled7 = param1;
      }
      
      public function get _je8982() : int
      {
         return this.count11;
      }
      
      public function set _je8982(param1:int) : void
      {
         this.count11 = param1;
      }
      
      public function get _ki11521() : String
      {
         return this.urlString10;
      }
      
      public function set _ki11521(param1:String) : void
      {
         this.urlString10 = param1;
      }
      
      public function get _uf6036() : int
      {
         return this.count12;
      }
      
      public function set _uf6036(param1:int) : void
      {
         this.count12 = param1;
      }
      
      public function get _vj6555() : Boolean
      {
         return this.isEnabled6;
      }
      
      public function set _vj6555(param1:Boolean) : void
      {
         this.isEnabled6 = param1;
      }
      
      public function get _fr149() : Boolean
      {
         return this.isEnabled5;
      }
      
      public function set _fr149(param1:Boolean) : void
      {
         this.isEnabled5 = param1;
      }
      
      public function get isEnabled() : String
      {
         return this.urlString1;
      }
      
      public function set isEnabled(param1:String) : void
      {
         this.urlString1 = param1;
      }
      
      public function get _am6464() : String
      {
         return this.urlString2;
      }
      
      public function set _am6464(param1:String) : void
      {
         this.urlString2 = param1;
      }
      
      public function get _dx11054() : int
      {
         return this._creditosOro;
      }
      
      public function set _dx11054(param1:int) : void
      {
         this._creditosOro = param1;
      }
      
      public function get creditosDiamante() : int
      {
         return this._creditosDiamante;
      }
      
      public function set creditosDiamante(param1:int) : void
      {
         this._creditosDiamante = param1;
      }
      
      public function get _ea4493() : int
      {
         return this.count;
      }
      
      public function set _ea4493(param1:int) : void
      {
         this.count = param1;
      }
      
      public function get _pm10848() : int
      {
         return this.count1;
      }
      
      public function set _pm10848(param1:int) : void
      {
         this.count1 = param1;
      }
      
      public function get _uq11439() : int
      {
         return this.count2;
      }
      
      public function set _uq11439(param1:int) : void
      {
         this.count2 = param1;
      }
      
      public function get day() : int
      {
         return this.count3;
      }
      
      public function set day(param1:int) : void
      {
         this.count3 = param1;
      }
      
      public function get month() : int
      {
         return this.count4;
      }
      
      public function set month(param1:int) : void
      {
         this.count4 = param1;
      }
      
      public function get year() : int
      {
         return this.count5;
      }
      
      public function set year(param1:int) : void
      {
         this.count5 = param1;
      }
      
      public function get _yr4676() : int
      {
         return this.count6;
      }
      
      public function set _yr4676(param1:int) : void
      {
         this.count6 = param1;
      }
      
      public function get _ma12295() : Boolean
      {
         return this.isEnabled2;
      }
      
      public function set _ma12295(param1:Boolean) : void
      {
         this.isEnabled2 = param1;
      }
      
      public function get antitimos() : Boolean
      {
         return this.isEnabled3;
      }
      
      public function set antitimos(param1:Boolean) : void
      {
         this.isEnabled3 = param1;
      }
      
      public function get _tc16118() : int
      {
         return this.count7;
      }
      
      public function set _tc16118(param1:int) : void
      {
         this.count7 = param1;
      }
      
      public function get _ec10230() : int
      {
         return this.count8;
      }
      
      public function set _ec10230(param1:int) : void
      {
         this.count8 = param1;
      }
      
      public function get _lf431() : int
      {
         return this.count9;
      }
      
      public function set _lf431(param1:int) : void
      {
         this.count9 = param1;
      }
      
      public function get _xj13389() : int
      {
         return this.count10;
      }
      
      public function set _xj13389(param1:int) : void
      {
         this.count10 = param1;
      }
      
      public function setDate(param1:String) : void
      {
         var count:Array = param1.split("-");
         this.year = int(count[0]);
         this.month = int(count[1]);
         this.day = int(count[2]);
      }
      
      public function get _uh10885() : String
      {
         return this.urlString3;
      }
      
      public function set _uh10885(param1:String) : void
      {
         this.urlString3 = param1;
      }
      
      public function set _ry9019(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         this.urlString4 = param1;
      }
      
      public function get _ry9019() : String
      {
         return this.urlString4;
      }
      
      public function set _dk13651(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         this.urlString5 = param1;
      }
      
      public function get _dk13651() : String
      {
         return this.urlString5;
      }
      
      public function set _qq2512(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         this.urlString6 = param1;
      }
      
      public function get _qq2512() : String
      {
         return this.urlString6;
      }
      
      public function set _qw1539(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         this.urlString7 = param1;
      }
      
      public function get _qw1539() : String
      {
         return this.urlString7;
      }
      
      public function set _bc4854(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         if(Boolean(int(param1)))
         {
            this._fr149 = true;
         }
         this.urlString8 = param1;
      }
      
      public function get _bc4854() : String
      {
         return this.urlString8;
      }
      
      public function set _oq2035(param1:Boolean) : void
      {
         this.isEnabled4 = param1;
      }
      
      public function get _oq2035() : Boolean
      {
         return this.isEnabled4;
      }
      
      public function _tu10532() : Boolean
      {
         var count2:String = null;
         var count:String = null;
         if(this._ds9725 == null)
         {
            return true;
         }
         var count3:ByteArray = this._ds9725._gso("login" + RuntimeParams._ns12055,"usr") as ByteArray;
         if(count3 == null)
         {
            return false;
         }
         var count1:ByteArray = new ByteArray();
         count3.readBytes(count1,0,16);
         var count2:ByteArray = new ByteArray();
         count3.readBytes(count2);
         var count7:ICipher = Crypto.getCipher("aes-ecb",count1,Crypto.getPad("pkcs5"));
         count7._vx09345(count2);
         count2.position = 0;
         if(count2.bytesAvailable > 0)
         {
            count = count2.readUTF();
         }
         if(count2.bytesAvailable > 0)
         {
            count2 = count2.readUTF();
         }
         if(count != null)
         {
            this.name = count;
         }
         if(count2 != null)
         {
            this.isEnabled = count2;
         }
         return true;
      }
      
      public function _xm23(param1:Boolean, param2:Boolean) : void
      {
         if(this._ds9725 == null)
         {
            return;
         }
         var count3:ByteArray = new ByteArray();
         var count1:Random = new Random();
         count1.nextBytes(count3,16);
         var count2:ByteArray = new ByteArray();
         if(param1)
         {
            count2.writeUTF(name);
            if(param2)
            {
               count2.writeUTF(this.isEnabled);
            }
         }
         var count7:ICipher = Crypto.getCipher("aes-ecb",count3,Crypto.getPad("pkcs5"));
         count7._qw34210(count2);
         var items:ByteArray = new ByteArray();
         items.writeBytes(count3);
         items.writeBytes(count2);
         this._ds9725._sso("login" + RuntimeParams._ns12055,"usr",items);
      }
      
      public function _on1372() : void
      {
         var count2:Array = null;
         if(this._ds9725 == null)
         {
            return;
         }
         var count:Array = this._ds9725._gso("dms","usr") as Array;
         this._uh10885 = "";
         if(count != null)
         {
            for each(count2 in count)
            {
               if(String(count2[0]).toUpperCase() == name.toUpperCase())
               {
                  this._uh10885 = String(count2[1]);
               }
            }
         }
      }
      
      public function _ie1610() : void
      {
         var count2:Array = null;
         var count:int = 0;
         var count1:Array = null;
         var count3:Array = this._ds9725._gso("dms","usr") as Array;
         if(count3 != null)
         {
            for each(count2 in count3)
            {
               if(String(count2[0]).toUpperCase() == name.toUpperCase())
               {
                  count1 = count2;
                  break;
               }
            }
         }
         else
         {
            count3 = new Array();
         }
         if(count1 == null)
         {
            count1 = new Array();
            count1.push(name);
            count3.push(count1);
         }
         if(this._uh10885 != null)
         {
            count1[1] = this._uh10885;
         }
         else
         {
            count = int(count3.indexOf(count1));
            count3.splice(count,1);
         }
         this._ds9725._sso("dms","usr",count3);
      }
      
      public function _ty2041() : void
      {
         if(this._ds9725 == null)
         {
            return;
         }
         this._ds9725._sso("cc","id",id);
      }
      
      public function _wi12313() : Boolean
      {
         var count2:int = 0;
         if(this._ds9725 == null)
         {
            return true;
         }
         if(id != -1)
         {
            count2 = int(this._ds9725._gso("cc","id"));
            return count2 == id;
         }
         return true;
      }
      
      public function _ru16169() : void
      {
      }
      
      public function authenticateUser(param1:Boolean = true) : void
      {
         var count:LoginModel = new LoginModel();
         name = "";
         this.isEnabled = "";
         if(param1)
         {
            count1 = 1;
            colors = new ColorModel("");
            _ll5517 = new ColorModel("");
         }
         this.day = 22;
         this.month = 2;
         this.year = 1995;
         this._dx11054 = 0;
         textString1 = count.textString36;
         this._yr4676 = 2;
         hobbies = [count.textString37,count.textString37,count.textString37];
         items2 = [count.textString37,count.textString37,count.textString37];
         this._lf431 = 1800;
      }
      
      public function _ml14381(param1:int) : int
      {
         var count:Concursos = this._kx3266(param1);
         if(count != null)
         {
            return count._qx12738;
         }
         return 0;
      }
      
      public function _kx3266(param1:int) : Concursos
      {
         var count:int = 0;
         while(count < this.items.length)
         {
            if(Concursos(this.items[count]).id == param1)
            {
               return Concursos(this.items[count]);
            }
            count++;
         }
         return null;
      }
      
      public function _bj2239(param1:int, param2:int) : void
      {
         this.items.push(new Concursos(param1,param2));
      }
      
      public function _th15114(param1:int, param2:int) : void
      {
         if(this._kx3266(param1) == null)
         {
            this._bj2239(param1,param2);
         }
      }
      
      public function _bn2124(param1:int, param2:int) : void
      {
         var count3:Concursos = this._kx3266(param1);
         if(count3 != null && param2 >= 0)
         {
            count3._rh12122 = param2;
         }
      }
      
      public function _wb8182() : Boolean
      {
         return this._dk13651 == "cad3f34bc67f27268cfad368b1e01a9e";
      }
      
      public function _ih7381() : int
      {
         var count2:Concursos = null;
         var count:int = 0;
         var count3:int = 0;
         while(count3 < this.items.length)
         {
            count2 = Concursos(this.items[count3]);
            if(count2.id >= 25 && count2.id <= 30)
            {
               count += count2._qx12738;
            }
            count3++;
         }
         return count;
      }
   }
}

class _rw9443
{
   
   public function _rw9443()
   {
      super();
   }
}
