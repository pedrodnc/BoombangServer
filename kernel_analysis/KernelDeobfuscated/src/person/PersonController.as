package src.person
{
   import flash.display.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import src.*;
   import src.allData.*;
   import src.allData.color.ColorModel;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.SceneObject;
   import src.logs.*;
   import src.modules.interfaz.InterfazManager;
   import src.modules.interfaz.fichaKeko.interacciones.*;
   import src.person.animations.*;
   import src.person.pociones.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.datatypes.movement.MovementModel;
   import src.utils.*;
   
   public class PersonController extends SceneObject
   {
      
      public static const count:int = 2;
      
      public static const count1:int = 3;
      
      public static const count2:int = 4;
      
      public static const count3:int = 5;
      
      public static const count4:int = 6;
      
      public static const count5:int = 7;
      
      public static const count6:int = 8;
      
      public static const count7:int = 9;
      
      public static const count8:int = 10;
      
      public static const count9:int = 11;
      
      public static const count10:int = 12;
      
      public static const count11:int = 13;
      
      public static const count12:int = 14;
      
      public static const count13:int = 15;
      
      public static const count14:int = 16;
      
      private const _fq11133:uint = 16737792;
      
      private const _en10708:uint = 10027199;
      
      private const _ey157:uint = 16763904;
      
      private const textString:String = "mcVotesKeko";
      
      private const textString1:String = "mcOnomatopeya";
      
      private const textString:String = "play";
      
      private var _jf6199:uint;
      
      private var _mj9923:Animations;
      
      private var _me14044:PersonAnimation;
      
      private var isEnabled:Boolean;
      
      private var _state:int;
      
      private var count15:int;
      
      private var _pa10256:PersonModel;
      
      private var _vj14087:SceneType;
      
      private var isEnabled1:Boolean;
      
      private var _yv6807:PersonEvents;
      
      private var _tv3848:MovieClip;
      
      private var _dk14093:MovieClip;
      
      private var _os7165:MovieClip;
      
      private var _xu1711:MovieClip;
      
      private var _yg491:MovieClip;
      
      private var _xc6216:MovieClip;
      
      private var _ti5036:MovieClip;
      
      private var _hi2472:MovieClip;
      
      private var items:Array;
      
      private var count16:int;
      
      private var count17:int;
      
      private var _tm7422:Logger;
      
      private var count18:int;
      
      private var _ba14007:PersonEvents;
      
      private var _wp13295:InterfazManager;
      
      private var _ad3566:UIPanel;
      
      public function PersonController(param1:PersonAnimation, param2:SceneType, param3:Boolean)
      {
         super();
         this._me14044 = param1;
         this.isEnabled = param3;
         this._pa10256 = PersonModel.getInstance();
         this._vj14087 = param2;
         this.items = PersonModel._qc8808[param1.count1];
         this.count18 = -1;
         this._tm7422 = Logger.getInstance();
         this._vw4235();
      }
      
      public function get isSelected() : Boolean
      {
         return this.isEnabled1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this.isEnabled1 = param1;
         if(this._yv6807)
         {
            this._yv6807.selected = param1;
         }
      }
      
      public function _gj9864(param1:PersonController) : Boolean
      {
         var count:Point = this._me14044._gn15250;
         var count3:Point = param1._me14044._gn15250;
         return count.x == count3.x + 1 && count.y == count3.y + 1 || count.x == count3.x - 1 && count.y == count3.y - 1;
      }
      
      public function loop() : void
      {
         if(this._mj9923 != null)
         {
            this._mj9923.loop();
         }
         if(this._ad3566 != null)
         {
            this._ad3566.x = x;
            this._ad3566.y = y + 20;
         }
         if(this.isEnabled)
         {
            _xw1367.getInstance()._ut10346(new Point(x,y));
         }
      }
      
      private function _rf5803(param1:int) : void
      {
         this.destroy();
         this.count16 = param1;
         this._state = count;
         this._mj9923 = new Animations(this._me14044,this._tv3848,this.count16,PersonModel._sp1959,this._rf5803);
      }
      
      private function _nu12681() : void
      {
         var count2:Point = SceneType.getPlotXY(this._me14044._gn15250);
         this.x = count2.x;
         this.y = count2.y;
         this._tv3848.x = 0;
         this._tv3848.y = 0;
         this._dk14093.x = 0;
         this._dk14093.y = 0;
      }
      
      public function _rk14068() : void
      {
         if(this._ba14007 != null)
         {
            this._ba14007._qm1808();
         }
      }
      
      public function destroy() : void
      {
         if(this._mj9923 != null)
         {
            this._mj9923.destroy();
            this._mj9923 = null;
         }
         this._nu12681();
      }
      
      public function _yt3158() : MovieClip
      {
         var count2:MovieClip = null;
         if(this._mj9923 != null)
         {
            count2 = this._mj9923._mf2390();
            count2.mouseEnabled = false;
            count2.mouseChildren = false;
         }
         return count2;
      }
      
      public function _vl13266() : int
      {
         return this._ba14007._ep13455;
      }
      
      public function destroy1() : void
      {
         if(this._ba14007 != null)
         {
            this._ba14007.destroy();
         }
         this.destroy();
         if(this._yv6807 != null)
         {
            this._yv6807.destroy();
            this._yv6807.removeEventListener(MouseEvent.MOUSE_OVER,this._to10453);
            this._yv6807.removeEventListener(MouseEvent.MOUSE_OUT,this._to10453);
            this._yv6807 = null;
         }
         if(this._ad3566 != null)
         {
            _xw1367.getInstance().move2(this._ad3566,_xw1367.count10);
            this._ad3566.destroy();
            this._ad3566 = null;
         }
         this._tv3848 = null;
         this._dk14093 = null;
      }
      
      public function _os12895(param1:int, param2:int, param3:Array) : void
      {
         this._nu12681();
         this._rf5803(this._me14044.orientation);
         this._ba14007._ql9411(param1,param2,param3,1);
      }
      
      public function _al12408(param1:int) : void
      {
         if(this._me14044.count11 != -1)
         {
            this._nu12681();
            this._rf5803(this._me14044.orientation);
            this._ba14007._al12408(param1);
         }
      }
      
      public function _dl12997(param1:InterfazManager) : void
      {
         this._wp13295 = param1;
         this._ba14007._hs4850(param1);
      }
      
      public function _jc6052() : void
      {
         if(this._me14044.count11 != -1)
         {
            if(this._me14044.count11 == PocionesModel._di14258 || this._me14044.count11 == PocionesModel._oi13669)
            {
               this._me14044.count11 = -1;
               return;
            }
            this._ba14007._ql9411(this._me14044.count11,this._me14044.count11,[],PocionesModel._eq4750);
         }
         else
         {
            this._me14044.isEnabled4 = true;
            this._me14044.isEnabled5 = true;
            this._me14044.isEnabled6 = true;
            this._me14044.isEnabled7 = true;
            this._me14044.isEnabled8 = true;
            this._me14044.isEnabled9 = true;
            this._me14044.isEnabled10 = true;
         }
      }
      
      public function _yc2612(param1:String) : void
      {
         if(this._su11409())
         {
            return;
         }
         if(this._state != count)
         {
            return;
         }
         this.destroy();
         this._state = count1;
         this._rk14068();
         this.destroy();
         this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,this.count16,PersonModel._iu9590,this._rf5803,param1);
      }
      
      public function _hv9874(param1:MovementModel) : void
      {
         this.destroy();
         this._state = count2;
         this._rk14068();
         this.destroy();
         this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,PersonModel._ei6715,this._rf5803,this,param1);
      }
      
      public function _dx16108() : void
      {
         this._sk14601(PersonModel._ec13605);
      }
      
      public function _qw8700() : void
      {
         this._sk14601(PersonModel._gh4713);
      }
      
      public function _sk14601(param1:int) : void
      {
         var count:int = 0;
         if(this._su11409())
         {
            return;
         }
         switch(param1)
         {
            case PersonModel._ek5093:
            case PersonModel._es3562:
            case PersonModel._rk4717:
            case PersonModel._kg3070:
            case PersonModel._dl10072:
            case PersonModel._ur9005:
            case PersonModel._aq5881:
            case PersonModel._ib10191:
            case PersonModel._rm14308:
            case PersonModel._gc7475:
            case PersonModel._rm16010:
            case PersonModel._ua15232:
               this._dq6221(param1 - PersonModel._ek5093 + 1);
               return;
            case PersonModel._gd13066:
            case PersonModel._hh6084:
            case PersonModel._lx10506:
            case PersonModel._ft11477:
            case PersonModel._pq3567:
            case PersonModel._li10585:
            case PersonModel._lo13715:
               count = int(this._mj9923._go9677());
               this.destroy();
               this._state = count3;
               this._rk14068();
               this.destroy();
               this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,this.count16,param1,this._rf5803,count);
               return;
            case PersonModel._ec13605:
            case PersonModel._gh4713:
               this.destroy();
               this._state = count3;
               this._rk14068();
               this.destroy();
               this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,this.count16,param1,this._rf5803);
               return;
            case PersonModel._we2906:
               if(this._yi6398())
               {
                  this.destroy();
                  this._state = count4;
                  this._rk14068();
                  this.destroy();
                  this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,this.count16,param1,this._rf5803,this._xc6216);
               }
               return;
            default:
               this._tm7422._kp3815(new Logs(Logger.count,"Person.setEmoticon","idAction incorrect=" + param1));
               return;
         }
      }
      
      public function _ke8853(param1:int) : void
      {
         this.destroy();
         this._me14044._cj5718 = param1;
         this._rf5803(this._me14044.orientation);
         this._wp12919();
      }
      
      public function _sj12712() : void
      {
         this._ke8853(0);
      }
      
      private function _vo12892() : void
      {
         this._yg491 = PersonController._ju6982("Humo");
         StringUtils.stop1(this._yg491);
         this._dk14093.addChild(this._yg491);
         this._yg491.x = 0;
         this._yg491.y = 0;
      }
      
      public function _wp12919() : void
      {
         this._yg491.gotoAndPlay(this.textString);
      }
      
      public function _bt12289(param1:int, param2:ColorModel, param3:Boolean) : void
      {
         this.destroy();
         this._me14044.count1 = param1;
         this._me14044.colors = param2;
         this._rf5803(this._me14044.orientation);
         if(param3)
         {
            this._wp12919();
         }
      }
      
      public function _qj6199(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean) : void
      {
         var items:int = 0;
         this._me14044._gn15250 = new Point(param1,param2);
         this.destroy();
         this._state = count12;
         this._rk14068();
         this.destroy();
         if(param3 > param1)
         {
            items = int(PersonModel._md2772);
         }
         else
         {
            items = int(PersonModel._xk5541);
         }
         switch(param5)
         {
            case Interacciones._oh5695:
               this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,items,PersonModel._og8879,this._me5134);
               if(items == PersonModel._xk5541)
               {
                  this._jb4508();
               }
               return;
            case Interacciones._ij14791:
               this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,items,PersonModel._pw1399,this._me5134);
               return;
            case Interacciones.count3:
               if(param6)
               {
                  this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,items,PersonModel._se15099,this._me5134);
               }
               else
               {
                  this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,items,PersonModel._dq20,this._me5134);
               }
               return;
            default:
               return;
         }
      }
      
      private function _me5134(param1:int) : void
      {
         this._rf5803(param1);
         if(this.isEnabled)
         {
            this._nj8599();
         }
      }
      
      public function _es4463(param1:int, param2:int, param3:int, param4:int, param5:int) : void
      {
         this._me14044._gn15250 = new Point(param3,param4);
         this.destroy();
         this._state = count6;
         this._rk14068();
         this.destroy();
         if(param3 > param5)
         {
            this.count16 = PersonModel._my520[this._me14044.count1];
         }
         else
         {
            this.count16 = PersonModel._se2811[this._me14044.count1];
         }
         this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,this.count16,PersonModel._ya12466,this._me5134);
      }
      
      public function _yy3392(param1:int, param2:int, param3:int, param4:int, param5:int) : void
      {
         this._me14044._gn15250 = new Point(param3,param4);
         this.destroy();
         this._state = count7;
         this._rk14068();
         this.destroy();
         if(param3 > param5)
         {
            this.count16 = PersonModel._gc925[this._me14044.count1];
         }
         else
         {
            this.count16 = PersonModel._hy3511[this._me14044.count1];
         }
         this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,this.count16,PersonModel._cn5856,this._me5134);
      }
      
      public function _sl11959() : void
      {
         this.destroy();
         this._state = count7;
         this._rk14068();
         this.destroy();
         this.count16 = PersonModel._hy3511[this._me14044.count1];
         this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,this.count16,PersonModel._cn5856,this._me5134);
      }
      
      private function _kx1064() : void
      {
         this._os7165 = PersonController._ju6982("Coco");
         StringUtils.stop1(this._os7165);
         this._dk14093.addChild(this._os7165);
         this._os7165.x = 0;
         this._os7165.y = 0;
      }
      
      public function _rw12419(param1:int) : void
      {
         this.destroy();
         this._state = count8;
         this._rk14068();
         this.destroy();
         this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,this.count16,PersonModel._oj5574,this._me5134,this,this._os7165,param1);
      }
      
      public function _xj5785() : void
      {
         this.destroy();
         this._state = count5;
         this._rk14068();
         this.destroy();
         this._mj9923 = new AnimationsModel(this._me14044,this._vj14087,this._tv3848,this.count16,PersonModel._wp1607,this._me5134);
      }
      
      public function _lt4457() : Boolean
      {
         if((this._state == count || this._state == count1) && Boolean(UserSession.getInstance().isEnabled10))
         {
            return true;
         }
         return false;
      }
      
      public function _ip6834(param1:Point) : int
      {
         var count:int = 0;
         var count3:int = 0;
         var count1:Point = SceneType.getPlotXY(this._me14044._gn15250);
         var count2:Point = SceneType.getPlotXY(param1);
         if(count1.x == count2.x)
         {
            count = 0;
         }
         else if(count2.x > count1.x)
         {
            count = 1;
         }
         else
         {
            count = 2;
         }
         if(count1.y == count2.y)
         {
            count3 = 0;
         }
         else if(count2.y > count1.y)
         {
            count3 = 1;
         }
         else
         {
            count3 = 2;
         }
         return this._pa10256._ip6834(count,count3);
      }
      
      public function _cu5001(param1:int, param2:int, param3:int) : void
      {
         if(this._su11409())
         {
            return;
         }
         this._me14044._gn15250 = new Point(param2,param3);
         this._rf5803(param1);
      }
      
      private function _lg13966() : void
      {
         this._xc6216 = PersonController._ju6982("Corazon");
         StringUtils.stop1(this._xc6216);
         this._dk14093.addChild(this._xc6216);
         this._xc6216.x = 0;
         this._xc6216.y = -110;
      }
      
      private function _dh506() : void
      {
         this._ti5036 = PersonController._ju6982("Votos");
         StringUtils.stop1(this._ti5036);
         this._dk14093.addChild(this._ti5036);
         this._ti5036.x = 0;
         this._ti5036.y = -110;
      }
      
      public function _vs3267(param1:int) : void
      {
         this._ti5036[this.textString + 1].gotoAndPlay(this.textString);
         this._ti5036[this.textString + 2].gotoAndPlay(this.textString);
         this._ti5036[this.textString + 3].gotoAndPlay(this.textString);
         var count:ColorTransform = new ColorTransform();
         count.color = PersonModel._qm14410[param1];
         this._ti5036[this.textString + 2].transform.colorTransform = count;
         count.blueMultiplier = -1;
         count.redMultiplier = -1;
         count.greenMultiplier = -1;
         this._ti5036[this.textString + 1].transform.colorTransform = count;
      }
      
      private function _qg8427() : void
      {
         this._xu1711 = PersonController._ju6982("Onomatopeyas");
         StringUtils.stop1(this._xu1711);
         this._dk14093.addChild(this._xu1711);
         this._xu1711.x = 0;
         this._xu1711.y = -90;
      }
      
      public function _dq6221(param1:int) : void
      {
         this.count18 = param1;
         MovieClip(this._xu1711[this.textString1 + this.count18]).gotoAndPlay(this.textString);
      }
      
      private function _ms5194() : void
      {
         this._hi2472 = PersonController._ju6982("CorazonBesosSanValentin");
         StringUtils.stop1(this._hi2472);
         this._dk14093.addChild(this._hi2472);
         this._hi2472.x = 0;
         this._hi2472.y = -70;
      }
      
      public function _jb4508() : void
      {
         if(this._hi2472 == null)
         {
            this._ms5194();
         }
         this._hi2472.gotoAndPlay(this.textString);
         this._hi2472.x = -40;
      }
      
      public function _am12322(param1:int, param2:int, param3:int) : void
      {
         var count1:Point = SceneType.getPlotXY(new Point(param1,param2));
         this.x = count1.x;
         this.y = count1.y;
         this._me14044._gn15250 = new Point(param1,param2);
         this._rf5803(param3);
      }
      
      public function _su11409() : Boolean
      {
         if(this._state == count5 || this._state == count6 || this._state == count7 || this._state == count8 || this._state == count12)
         {
            return true;
         }
         return false;
      }
      
      public function _yi6398() : Boolean
      {
         if(this._state == count || this._state == count1)
         {
            return true;
         }
         return false;
      }
      
      public function _nj8599() : void
      {
         dispatchEvent(new PersonEvents(PersonEvents._aa5196,PersonEvents._jg8566));
      }
      
      public function _fl1743() : Boolean
      {
         if(this._state == count5 || this._state == count6 || this._state == count7 || this._state == count8)
         {
            return false;
         }
         return true;
      }
      
      public function _gh13396() : Boolean
      {
         if(this._state == count6 || this._state == count7)
         {
            return true;
         }
         return false;
      }
      
      public function stop() : void
      {
         this._yv6807.stop();
      }
      
      public function stop1() : void
      {
         this._yv6807.stop1();
      }
      
      public function stop2() : void
      {
         this._yv6807.stop2();
      }
      
      protected function _vb8756(param1:MouseEvent) : void
      {
         this.filters = [];
         if(this._ad3566)
         {
            this._ad3566.visible = false;
         }
      }
      
      protected function _to10453(param1:MouseEvent) : void
      {
         this.filters = [new GlowFilter(this._jf6199,1,4,4,20)];
         if(this._ad3566)
         {
            this._ad3566.visible = true;
         }
      }
      
      private function _vw4235() : void
      {
         if(this._me14044.textString1.indexOf("[1]") >= 0)
         {
            this._jf6199 = 13290186;
         }
         else if(this._me14044.textString1.indexOf("[2]") >= 0)
         {
            this._jf6199 = 16711680;
         }
         else if(this._me14044.textString1.indexOf("[3]") >= 0)
         {
            this._jf6199 = this._en10708;
         }
         else if(this._me14044.textString1.indexOf("[4]") >= 0)
         {
            this._jf6199 = 3947580;
         }
         else if(this._me14044.name == "" || this._me14044.name == "")
         {
            this._jf6199 = 15173137;
         }
         else if(this._me14044.count10 == 11)
         {
            this._jf6199 = 11513775;
         }
         else if(this._me14044.count10 == 10)
         {
            this._jf6199 = 10354688;
         }
         else if(this._me14044.count10 == 9)
         {
            this._jf6199 = 1474628;
         }
         else if(this._me14044.count10 == 8)
         {
            this._jf6199 = 1677512;
         }
         else if(this._me14044.count10 == 7)
         {
            this._jf6199 = 12804608;
         }
         else if(this._me14044.count10 == 6)
         {
            this._jf6199 = 13050777;
         }
         else if(this._me14044.name == "" || this._me14044.name == "" || this._me14044.name == "")
         {
            this._jf6199 = 15173137;
         }
         else if(this._me14044.count10 >= 12)
         {
            this._jf6199 = this._ey157;
         }
         else if(this._me14044.member == 1)
         {
            this._jf6199 = this._en10708;
         }
         else if(this._me14044.member == 2)
         {
            this._jf6199 = 3947580;
         }
         else
         {
            this._jf6199 = this._fq11133;
         }
         this._dk14093 = new MovieClip();
         this._yv6807 = new PersonEvents(this._jf6199);
         this._yv6807.addEventListener(MouseEvent.MOUSE_OVER,this._to10453,false,0,true);
         this._yv6807.addEventListener(MouseEvent.MOUSE_OUT,this._vb8756,false,0,true);
         addChild(this._yv6807);
         this._tv3848 = new MovieClip();
         this._tv3848.mouseEnabled = false;
         this._tv3848.mouseChildren = false;
         this._dk14093.addChild(this._tv3848);
         var count2:MovieClip = new MovieClip();
         addChild(count2);
         addChild(this._dk14093);
         this._dk14093.x = 0;
         this._dk14093.y = 0;
         var count:MovieClip = new MovieClip();
         addChild(count);
         var count3:MovieClip = new MovieClip();
         addChild(count3);
         this._ba14007 = new PersonEvents(this,this._tv3848,this._yv6807,count,count3,count2,this._me14044,this._pa10256,this._bt12289);
         this._kx1064();
         this._lg13966();
         this._dh506();
         this._qg8427();
         this._vo12892();
         this._rf5803(this._me14044.orientation);
         this._nu12681();
         this.width *= this._vj14087.count8;
         this.height *= this._vj14087.count8;
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this._ad3566 = new UIPanel();
         this._ad3566.text = this._me14044.name;
         this._ad3566.fontSize = 11;
         this._ad3566._xe10297 = UITextField.TOP;
         this._ad3566.padding = 0;
         this._ad3566.backgroundColor = this._jf6199;
         this._ad3566.textColor = 16777215;
         this._ad3566.mouseEnabled = false;
         this._ad3566.mouseChildren = false;
         this._ad3566.visible = false;
         this._ad3566._sl14850();
         _xw1367.getInstance()._uc3178(this._ad3566,_xw1367.count10,false);
      }
      
      public function _na13725(param1:Number, param2:Number) : Number
      {
         var count3:Point = null;
         var count1:Number = NaN;
         if(this._dk14093 != null)
         {
            count3 = this._dk14093.localToGlobal(new Point(0,0));
            return Math.sqrt(Math.pow(param1 - count3.x,2) + Math.pow(param2 - count3.y,2));
         }
         return Number.MAX_VALUE;
      }
      
      public function attack(param1:Number, param2:Number) : Boolean
      {
         if(this._dk14093 != null)
         {
            if(this._dk14093.hitTestPoint(param1,param2,true))
            {
               return true;
            }
         }
         return false;
      }
      
      public function _ey9519() : Point
      {
         if(this._dk14093 != null)
         {
            return this._dk14093.localToGlobal(new Point(0,0));
         }
         return null;
      }
      
      public function _mt10880() : int
      {
         return this.count16;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function get _md8722() : PersonAnimation
      {
         return this._me14044;
      }
      
      public function set _md8722(param1:PersonAnimation) : void
      {
         this._me14044 = param1;
      }
      
      public function get _cp3023() : Boolean
      {
         return this.isEnabled;
      }
      
      public function set _cp3023(param1:Boolean) : void
      {
         this.isEnabled = param1;
      }
   }
}

