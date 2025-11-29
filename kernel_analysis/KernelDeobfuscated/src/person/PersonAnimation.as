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
      
      public var count25:int;
      
      private var count:int;
      
      public var colors:ColorModel;
      
      public var _ll5517:ColorModel;
      
      private var count2:int;
      
      public var count3:int;
      
      public var count2:int;
      
      public var count5:int;
      
      private var items:Array;
      
      private var items1:Array;
      
      private var count6:int;
      
      public var count7:int;
      
      public var count8:int;
      
      public var count9:int;
      
      public var items2:Array;
      
      public var hobbies:Array;
      
      public var items3:Array;
      
      public var textString1:String = "";
      
      public var items4:Array;
      
      public var count10:int;
      
      public var member:int;
      
      public var id:int = -1;
      
      public var isEnabled:Boolean;
      
      public var _gn15250:Point;
      
      public var orientation:int;
      
      public var _vr14476:BasechatUtils;
      
      public var isEnabled1:Boolean;
      
      public var size:int;
      
      public var textString1:String;
      
      public var count11:int;
      
      public var isEnabled2:Boolean;
      
      private var isEnabled3:Boolean = false;
      
      public var count12:int;
      
      public var count13:int;
      
      public var isEnabled4:Boolean;
      
      public var isEnabled5:Boolean;
      
      public var isEnabled6:Boolean;
      
      public var isEnabled7:Boolean;
      
      public var isEnabled8:Boolean;
      
      public var isEnabled9:Boolean;
      
      public var isEnabled10:Boolean;
      
      public function PersonAnimation()
      {
         this._vr14476 = new BasechatUtils();
         super();
         this.isEnabled4 = true;
         this.isEnabled5 = true;
         this.isEnabled6 = true;
         this.isEnabled7 = true;
         this.isEnabled8 = true;
         this.isEnabled9 = true;
         this.isEnabled10 = true;
      }
      
      public static function _um47155(param1:uint) : ColorTransform
      {
         var count3:uint = 0;
         var count:ColorTransform = new ColorTransform();
         count.color = param1;
         if(param1 == 16763905)
         {
            count.alphaMultiplier = -1;
         }
         else
         {
            count.alphaMultiplier = 1;
         }
         if(param1 == 16763906)
         {
            count3 = uint(Person.colores_random[int(Math.random() * Person.colores_random.length)]);
            count.color = count3;
            return count;
         }
         return count;
      }
      
      public function _yt6727(param1:String) : ColorTransform
      {
         var count:uint = 0;
         switch(param1)
         {
            case "color1":
               count = this.colors.getColor(0);
               break;
            case "color2":
               count = this.colors.getColor(1);
               break;
            case "color3":
               count = this.colors.getColor(2);
               break;
            case "color4":
               count = this.colors.getColor(3);
               break;
            case "color5":
               count = this.colors.getColor(4);
               break;
            case "color6":
               count = this.colors.getColor(5);
               break;
            case "color7":
               count = this.colors.getColor(6);
               break;
            case "color8":
               count = this.colors.getColor(7);
               break;
            case "color9":
               count = this.colors.getColor(8);
               break;
            case "colorGuante":
               count = this._fy14741;
               return _um47155(count);
         }
         return StringUtils._um4715(count);
      }
      
      public function get _fy14741() : uint
      {
         return Person._sl7625(this.count6);
      }
      
      public function get _cj5718() : int
      {
         return this.count;
      }
      
      public function set _cj5718(param1:int) : void
      {
         this.count = param1;
      }
      
      public function _ad8399() : void
      {
         this.count = 0;
      }
      
      public function _wl10859(param1:int) : Boolean
      {
         var count:int = 0;
         var count3:Boolean = false;
         if(this.items1 != null)
         {
            count = 0;
            while(count < this.items1.length)
            {
               if(this.items1[count] == param1)
               {
                  count3 = true;
               }
               count++;
            }
         }
         return count3;
      }
      
      public function get _lq6358() : Array
      {
         return this.items;
      }
      
      public function set _iv11542(param1:Array) : void
      {
         this.items1 = param1;
      }
      
      public function get _iv11542() : Array
      {
         return this.items1;
      }
      
      public function set _lq6358(param1:Array) : void
      {
         this.items = param1;
      }
      
      public function get count1() : int
      {
         return this.count2;
      }
      
      public function set count1(param1:int) : void
      {
         this.count2 = param1;
      }
      
      public function set _iu4082(param1:Boolean) : void
      {
         if(param1 != this.isEnabled3)
         {
            this.isEnabled3 = param1;
            if(this.isEnabled3)
            {
               this.count13 = getTimer();
               this.count12 = getTimer();
            }
         }
      }
      
      public function get _iu4082() : Boolean
      {
         return this.isEnabled3;
      }
      
      public function _ne4166() : void
      {
         this.isEnabled1 = false;
         this.size = 0;
      }
      
      public function render(param1:String) : Boolean
      {
         return false;
      }
      
      public function init(param1:String, param2:int, param3:ColorModel, param4:ColorModel, param5:int, param6:int, param7:int, param8:Array, param9:Array, param10:int, param11:Array, param12:Array, param13:Array, param14:String, param15:Array, param16:int, param17:int, param18:String, param19:int, param20:Boolean, param21:int, param22:int, param23:int, param24:int, param25:int, param26:int, param27:int, param28:int) : void
      {
         this.name = param1;
         this.count25 = param2;
         this.colors = param3;
         this._ll5517 = param4;
         this.count1 = param5;
         this.count3 = param5;
         this.count2 = param6;
         this.items2 = param11;
         this.hobbies = param12;
         this.items3 = param13;
         this.textString1 = param14;
         this.items4 = param15;
         this.count10 = param16;
         this.member = param17;
         this.id = param19;
         this.isEnabled = param20;
         this._gn15250 = new Point(param21,param22);
         this.orientation = param23;
         this.count6 = param24;
         this.count7 = param25;
         this.count8 = param26;
         this.count9 = param27;
         this.count5 = param7;
         this.items = param8;
         this.items1 = param9;
         this.count = param10;
         this.textString1 = param18;
         this.count11 = param28;
         this._vr14476.clear();
      }
      
      public function _ab9299() : void
      {
         this.colors = new ColorModel(PersonModel._iu15912[this.count1]);
      }
      
      public function _tk9775(param1:int, param2:ColorModel) : void
      {
         this.count1 = param1;
         this.colors = param2;
         this._ll5517 = param2;
      }
      
      public function _pn6300(param1:PersonAnimation) : void
      {
         this.colors = new ColorModel(param1.colors.getString());
         this._ll5517 = new ColorModel(param1.colors.getString());
         this.count1 = param1.count1;
         this.count3 = param1.count1;
         this.count5 = param1.count5;
         this.count25 = param1.count25;
         this.count2 = param1.count2;
         this.items2 = param1.items2;
         this.hobbies = param1.hobbies;
         this.items3 = param1.items3;
         this.textString1 = param1.textString1;
         this.items4 = param1.items4;
         this.isEnabled = param1.isEnabled;
         this._gn15250 = param1._gn15250;
         this.orientation = param1.orientation;
         this.count6 = param1.count6;
         this.count7 = param1.count7;
         this.count8 = param1.count8;
         this.count9 = param1.count9;
         this.items = param1._lq6358;
         this.items1 = param1._iv11542;
         this.count = param1._cj5718;
         this.count11 = param1.count11;
      }
      
      public function get _qb5661() : int
      {
         return this.count6;
      }
      
      public function set _qb5661(param1:int) : void
      {
         this.count6 = param1;
      }
   }
}

