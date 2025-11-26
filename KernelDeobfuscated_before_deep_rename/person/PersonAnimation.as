package src.person
{
   import flash.geom.*;
   import flash.utils.*;
   import src.allData.color.*;
   import src.modules.interfaz.baseChat.*;
   import src.utils.*;
   
   public class PersonAnimation
   {
      
      public var name:String;
      
      public var _jr9311:int;
      
      private var _km11956:int;
      
      public var colors:ColorModel;
      
      public var _ll5517:ColorModel;
      
      private var _sv15608:int;
      
      public var _ly10773:int;
      
      public var _tq5133:int;
      
      public var _xp3365:int;
      
      private var _po10247:Array;
      
      private var _lv7594:Array;
      
      private var _uf16023:int;
      
      public var _lg11278:int;
      
      public var _ph14059:int;
      
      public var _bc5053:int;
      
      public var _en11081:Array;
      
      public var hobbies:Array;
      
      public var _cq10213:Array;
      
      public var _lk2235:String = "";
      
      public var _ho1277:Array;
      
      public var _vm2039:int;
      
      public var member:int;
      
      public var id:int = -1;
      
      public var _nw13075:Boolean;
      
      public var _gn15250:Point;
      
      public var orientation:int;
      
      public var _vr14476:BasechatUtils;
      
      public var _bw12295:Boolean;
      
      public var size:int;
      
      public var _uu4611:String;
      
      public var _ta15622:int;
      
      public var _ev848:Boolean;
      
      private var _gk1841:Boolean = false;
      
      public var _nl738:int;
      
      public var _jo9729:int;
      
      public var _bo414:Boolean;
      
      public var _mr3266:Boolean;
      
      public var _lc2476:Boolean;
      
      public var _wf5053:Boolean;
      
      public var _vl6015:Boolean;
      
      public var _le185:Boolean;
      
      public var _bj11164:Boolean;
      
      public function PersonAnimation()
      {
         this._vr14476 = new BasechatUtils();
         super();
         this._bo414 = true;
         this._mr3266 = true;
         this._lc2476 = true;
         this._wf5053 = true;
         this._vl6015 = true;
         this._le185 = true;
         this._bj11164 = true;
      }
      
      public static function _um47155(param1:uint) : ColorTransform
      {
         var _loc3_:uint = 0;
         var _loc2_:ColorTransform = new ColorTransform();
         _loc2_.color = param1;
         if(param1 == 16763905)
         {
            _loc2_.alphaMultiplier = -1;
         }
         else
         {
            _loc2_.alphaMultiplier = 1;
         }
         if(param1 == 16763906)
         {
            _loc3_ = uint(Person.colores_random[int(Math.random() * Person.colores_random.length)]);
            _loc2_.color = _loc3_;
            return _loc2_;
         }
         return _loc2_;
      }
      
      public function _yt6727(param1:String) : ColorTransform
      {
         var _loc2_:uint = 0;
         switch(param1)
         {
            case "color1":
               _loc2_ = this.colors.getColor(0);
               break;
            case "color2":
               _loc2_ = this.colors.getColor(1);
               break;
            case "color3":
               _loc2_ = this.colors.getColor(2);
               break;
            case "color4":
               _loc2_ = this.colors.getColor(3);
               break;
            case "color5":
               _loc2_ = this.colors.getColor(4);
               break;
            case "color6":
               _loc2_ = this.colors.getColor(5);
               break;
            case "color7":
               _loc2_ = this.colors.getColor(6);
               break;
            case "color8":
               _loc2_ = this.colors.getColor(7);
               break;
            case "color9":
               _loc2_ = this.colors.getColor(8);
               break;
            case "colorGuante":
               _loc2_ = this._fy14741;
               return _um47155(_loc2_);
         }
         return StringUtils._um4715(_loc2_);
      }
      
      public function get _fy14741() : uint
      {
         return Person._sl7625(this._uf16023);
      }
      
      public function get _cj5718() : int
      {
         return this._km11956;
      }
      
      public function set _cj5718(param1:int) : void
      {
         this._km11956 = param1;
      }
      
      public function _ad8399() : void
      {
         this._km11956 = 0;
      }
      
      public function _wl10859(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         if(this._lv7594 != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this._lv7594.length)
            {
               if(this._lv7594[_loc2_] == param1)
               {
                  _loc3_ = true;
               }
               _loc2_++;
            }
         }
         return _loc3_;
      }
      
      public function get _lq6358() : Array
      {
         return this._po10247;
      }
      
      public function set _iv11542(param1:Array) : void
      {
         this._lv7594 = param1;
      }
      
      public function get _iv11542() : Array
      {
         return this._lv7594;
      }
      
      public function set _lq6358(param1:Array) : void
      {
         this._po10247 = param1;
      }
      
      public function get _jn11596() : int
      {
         return this._sv15608;
      }
      
      public function set _jn11596(param1:int) : void
      {
         this._sv15608 = param1;
      }
      
      public function set _iu4082(param1:Boolean) : void
      {
         if(param1 != this._gk1841)
         {
            this._gk1841 = param1;
            if(this._gk1841)
            {
               this._jo9729 = getTimer();
               this._nl738 = getTimer();
            }
         }
      }
      
      public function get _iu4082() : Boolean
      {
         return this._gk1841;
      }
      
      public function _ne4166() : void
      {
         this._bw12295 = false;
         this.size = 0;
      }
      
      public function _lr8657(param1:String) : Boolean
      {
         return false;
      }
      
      public function init(param1:String, param2:int, param3:ColorModel, param4:ColorModel, param5:int, param6:int, param7:int, param8:Array, param9:Array, param10:int, param11:Array, param12:Array, param13:Array, param14:String, param15:Array, param16:int, param17:int, param18:String, param19:int, param20:Boolean, param21:int, param22:int, param23:int, param24:int, param25:int, param26:int, param27:int, param28:int) : void
      {
         this.name = param1;
         this._jr9311 = param2;
         this.colors = param3;
         this._ll5517 = param4;
         this._jn11596 = param5;
         this._ly10773 = param5;
         this._tq5133 = param6;
         this._en11081 = param11;
         this.hobbies = param12;
         this._cq10213 = param13;
         this._lk2235 = param14;
         this._ho1277 = param15;
         this._vm2039 = param16;
         this.member = param17;
         this.id = param19;
         this._nw13075 = param20;
         this._gn15250 = new Point(param21,param22);
         this.orientation = param23;
         this._uf16023 = param24;
         this._lg11278 = param25;
         this._ph14059 = param26;
         this._bc5053 = param27;
         this._xp3365 = param7;
         this._po10247 = param8;
         this._lv7594 = param9;
         this._km11956 = param10;
         this._uu4611 = param18;
         this._ta15622 = param28;
         this._vr14476.clear();
      }
      
      public function _ab9299() : void
      {
         this.colors = new ColorModel(PersonModel._iu15912[this._jn11596]);
      }
      
      public function _tk9775(param1:int, param2:ColorModel) : void
      {
         this._jn11596 = param1;
         this.colors = param2;
         this._ll5517 = param2;
      }
      
      public function _pn6300(param1:PersonAnimation) : void
      {
         this.colors = new ColorModel(param1.colors.getString());
         this._ll5517 = new ColorModel(param1.colors.getString());
         this._jn11596 = param1._jn11596;
         this._ly10773 = param1._jn11596;
         this._xp3365 = param1._xp3365;
         this._jr9311 = param1._jr9311;
         this._tq5133 = param1._tq5133;
         this._en11081 = param1._en11081;
         this.hobbies = param1.hobbies;
         this._cq10213 = param1._cq10213;
         this._lk2235 = param1._lk2235;
         this._ho1277 = param1._ho1277;
         this._nw13075 = param1._nw13075;
         this._gn15250 = param1._gn15250;
         this.orientation = param1.orientation;
         this._uf16023 = param1._uf16023;
         this._lg11278 = param1._lg11278;
         this._ph14059 = param1._ph14059;
         this._bc5053 = param1._bc5053;
         this._po10247 = param1._lq6358;
         this._lv7594 = param1._iv11542;
         this._km11956 = param1._cj5718;
         this._ta15622 = param1._ta15622;
      }
      
      public function get _qb5661() : int
      {
         return this._uf16023;
      }
      
      public function set _qb5661(param1:int) : void
      {
         this._uf16023 = param1;
      }
   }
}

