package src.allData.scene.typeEscenarios
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.utils.*;
   import src.*;
   import src.allData.*;
   import src.allData.color.ColorModel;
   import src.allData.color.ColorModel;
   import src.allData.scene.*;
   import src.allData.scene.skins.*;
   import src.allData.scene.skins.managerObjectSkineables.*;
   import src.allData.scene.skins.nodeTagsSkins.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.modules.enterScene.Enterscene;
   import src.tv.boombang.core.datatypes.navigationMenu.NavigationmenuModel;
   import src.utils.*;
   
   public class SceneTypeIsland extends SceneType
   {
      
      public static const textString:String = "mcEmpty";
      
      public var count:int;
      
      public var count1:int;
      
      public var _wy10098:ColorModel;
      
      public var isEnabled:Boolean;
      
      public var items:Array;
      
      public var items1:Array;
      
      public var _pr16032:ManagerobjectskineablesController;
      
      private var _ey10368:MovieClip;
      
      public var isEnabled1:Boolean;
      
      public var items2:Array;
      
      public var _fl5981:Enterscene;
      
      public function SceneTypeIsland(param1:NavigationmenuModel, param2:int, param3:ColorModel, param4:Boolean, param5:int, param6:MovieClip, param7:XML, param8:Enterscene)
      {
         this._wy10098 = param3;
         this.isEnabled = param4;
         this.count1 = param5;
         this._fl5981 = param8;
         super(param1,param2,param6,param7);
         this._yt7170();
      }
      
      override public function init() : void
      {
         super.init();
         this.isEnabled1 = this.count1 == UserSession.getInstance().id || UserSession.getInstance().count10 >= 13;
         this.items = SceneModel._ts14659(_ir13656);
         this.isEnabled2 = SceneModel._do12934(_ir13656) == 1;
         this.isEnabled1 = false;
         this._ey10368 = new MovieClip();
         this._ey10368.graphics.beginFill(16711680,0);
         this._ey10368.graphics.drawRect(0,0,1012,715);
         this._ey10368.graphics.endFill();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.move();
      }
      
      override public function _pr4733() : void
      {
         var count2:SceneModel = null;
         var count3:int = 0;
         var count:int = int(this.items.length);
         while(count3 < count)
         {
            count2 = SceneModel(this.items[count3]);
            switch(count2.type)
            {
               case SkinsModel.count:
                  this.show(count2);
                  break;
               case SkinsModel.count1:
                  this._md7967(count2);
            }
            count3++;
         }
      }
      
      private function show(param1:SceneModel) : void
      {
         var count3:ColorTransform = new ColorTransform();
         var count1:MovieClip = MovieClip(_wy2643.getChildByName(param1.name));
         var count2:_xw1367 = _xw1367.getInstance();
         var count7:DisplayObject = DisplayObject(count1.getChildAt(0));
         count7.x -= param1._cd7708.x;
         count7.y -= param1._cd7708.y;
         count1.x += param1._cd7708.x;
         count1.y += param1._cd7708.y;
         if(param1._un11300 != -1)
         {
            var count:uint = this._wy10098._jk5923(param1._un11300);
            count3.color = 0;
            count3.blueMultiplier = -1;
            count3.redMultiplier = -1;
            count3.greenMultiplier = -1;
            count1.transform.colorTransform = count3;
         }
         count2._uc3178(count1,param1._ok7591,false,_xw1367.count15);
      }
      
      private function _fa6276(param1:SceneModel) : void
      {
         var count:_xw1367 = _xw1367.getInstance();
         var count3:MovieClip = count._qd11184(param1.name,param1._ok7591);
         count.move2(count3,param1._ok7591);
         _wy2643.addChild(count3);
      }
      
      override public function _qk13047() : void
      {
         var count2:int = 0;
         var count:int = 0;
         var count3:SceneModel = null;
         if(this.items != null)
         {
            count2 = int(this.items.length);
            count = 0;
            while(count < count2)
            {
               count3 = SceneModel(this.items[count]);
               switch(count3.type)
               {
                  case SkinsModel.count:
                     this._fa6276(count3);
                     break;
                  case SkinsModel.count1:
                     this._te4670(count3);
               }
               count++;
            }
         }
      }
      
      public function _yt7170() : void
      {
         this.items2 = SceneModel._ej14723(_ir13656);
         this.items1 = SceneModel._hn13069(_ir13656,this.items2);
         if(this._fl5981 != null)
         {
            this._pr16032 = new ManagerobjectskineablesController(this.items1,this.items2,this._fl5981.items,this._fl5981.items1,this._fl5981.items2,this._fl5981.items3,this._fl5981.items4,this._fl5981.items5);
         }
      }
      
      private function _md7967(param1:SceneModel) : void
      {
         var count:NodetagsskinsController = null;
         var count3:int = 0;
         var count2:int = 0;
         var count1:Array = this._pr16032._dg5017(param1.name,true);
         param1._cw15200 = count1;
         while(count2 < count1.length)
         {
            count = count1[count2];
            count3 = 0;
            while(count3 < count._kr1527.length)
            {
               this._jb16039(NodetagsskinsModel(count._kr1527[count3]));
               count3++;
            }
            count2++;
         }
      }
      
      private function _jb16039(param1:NodetagsskinsModel) : void
      {
         var count:uint = 0;
         if(param1.name == textString)
         {
            return;
         }
         var count3:ColorTransform = new ColorTransform();
         var count1:MovieClip = MovieClip(_wy2643.getChildByName(param1.name));
         var count2:_xw1367 = _xw1367.getInstance();
         var count7:DisplayObject = DisplayObject(count1.getChildAt(0));
         count7.x -= param1._cd7708.x;
         count7.y -= param1._cd7708.y;
         count1.x += param1._cd7708.x;
         count1.y += param1._cd7708.y;
         if(param1._un11300 != -1)
         {
            count = param1._mn6947.color;
            count3.color = count;
            count3.blueMultiplier = -1;
            count3.redMultiplier = -1;
            count3.greenMultiplier = -1;
            count1.transform.colorTransform = count3;
         }
         count2._uc3178(count1,param1._ok7591,false,_xw1367.count15);
      }
      
      private function _te4670(param1:SceneModel) : void
      {
         var count:NodetagsskinsController = null;
         var count3:int = 0;
         var count1:NodetagsskinsModel = null;
         var count7:int = 0;
         var count2:Array = this._pr16032._dg5017(param1.name,true);
         while(count7 < count2.length)
         {
            count = count2[count7];
            count3 = 0;
            while(count3 < count._kr1527.length)
            {
               count1 = NodetagsskinsModel(count._kr1527[count3]);
               if(count1.name != textString)
               {
                  this._fa6276(count1);
               }
               count3++;
            }
            count7++;
         }
      }
      
      public function _vh5033(param1:ManagerobjectskineablesController) : void
      {
         _do10975();
         this._qk13047();
         this._pr16032._vh5033(param1.render());
         this._pr4733();
         _cy13400();
         this.move();
         this._xl522();
      }
      
      public function _tv1478(param1:Enterscene) : void
      {
         var count:ManagerobjectskineablesController = null;
         var count3:int = 0;
         _do10975();
         this._qk13047();
         while(count3 < param1.items.length)
         {
            count = new ManagerobjectskineablesController(param1.items[count3],param1.items1[count3],param1.items2[count3],param1.items3[count3],param1.items4[count3],param1.items5[count3]);
            this._pr16032._vh5033(count);
            count3++;
         }
         this._pr4733();
         _cy13400();
      }
      
      override public function _kd2897() : void
      {
         this.count = SceneModel._cv5854(_ir13656);
         if(this.count != -1)
         {
            this.count5 = this._wy10098._dd15313(this.count) / 100 + 0.35;
            if(count5 < 0)
            {
               count5 = 1;
            }
            if(count5 > 1)
            {
               count5 = 1;
            }
            if(count5 < 0.55)
            {
               count5 = 0.55;
            }
         }
         else
         {
            count5 = 1;
         }
      }
      
      public function getList() : Array
      {
         return this._wy10098._xs11657();
      }
      
      public function _dc804(param1:MovieClip, param2:XML, param3:int, param4:ColorModel) : void
      {
         this._wy2643 = param1;
         this._ir13656 = param2;
         this._nr6929._fq658 = param3;
         this._wy10098 = param4;
         this.items = SceneModel._ts14659(param2);
      }
      
      override public function getString() : String
      {
         return "private";
      }
      
      public function _dd13470(param1:ColorModel) : void
      {
         var count:SceneModel = null;
         var count3:MovieClip = null;
         var count8:int = 0;
         var count2:ColorTransform = new ColorTransform();
         var count7:int = int(this.items.length);
         var items:_xw1367 = _xw1367.getInstance();
         while(count8 < count7)
         {
            count = SceneModel(this.items[count8]);
            count3 = items._qd11184(count.name,count._ok7591);
            if(count._un11300 != -1)
            {
               this._wy10098 = param1;
               var count1:uint = this._wy10098._jk5923(count._un11300);
               count2.color = 0;
               count2.blueMultiplier = -1;
               count2.redMultiplier = -1;
               count2.greenMultiplier = -1;
               count3.transform.colorTransform = count2;
            }
            count8++;
         }
         this._kd2897();
      }
      
      public function _cp2768(param1:ColorModel) : void
      {
         var count:SceneModel = null;
         var count8:int = 0;
         var count2:ColorTransform = new ColorTransform();
         var count7:int = int(this.items.length);
         var items:_xw1367 = _xw1367.getInstance();
         this._wy10098._vo5864(param1);
         while(count8 < count7)
         {
            count = SceneModel(this.items[count8]);
            if(count._un11300 == param1._un11300)
            {
               var count3:MovieClip = items._qd11184(count.name,count._ok7591);
            }
            count8++;
         }
      }
      
      public function _af805(param1:NodetagsskinsController, param2:ColorModel) : void
      {
         var count3:NodetagsskinsModel = null;
         var items:int = 0;
         var count2:ColorTransform = new ColorTransform();
         var count7:_xw1367 = _xw1367.getInstance();
         while(items < param1._kr1527.length)
         {
            count3 = NodetagsskinsModel(param1._kr1527[items]);
            if(count3._mn6947 != null)
            {
               if(count3._mn6947._un11300 == param2._un11300)
               {
                  var count1:MovieClip = count7._qd11184(count3.name,count3._ok7591);
                  if(count1 != null)
                  {
                     count3._mn6947 = param2;
                     count2.color = param2.color;
                     count2.blueMultiplier = -1;
                     count2.redMultiplier = -1;
                     count2.greenMultiplier = -1;
                     null.transform.colorTransform = count2;
                  }
               }
            }
            items++;
         }
      }
      
      override public function _ih5473() : Boolean
      {
         return isEnabled1 == true && this._co7364() == false;
      }
      
      override public function _co7364() : Boolean
      {
         if(isEnabled2)
         {
            return true;
         }
         return false;
      }
      
      public function _xl522() : void
      {
         if(this.isEnabled1 == false && this._ih5473())
         {
            _xw1367.getInstance()._uc3178(this._ey10368,_xw1367.count4,true);
            this._ey10368.addEventListener(MouseEvent.MOUSE_DOWN,this._sk10515);
            this.isEnabled1 = true;
         }
      }
      
      public function move() : void
      {
         if(this.isEnabled1)
         {
            _xw1367.getInstance().move2(this._ey10368,_xw1367.count4);
            this._ey10368.removeEventListener(MouseEvent.MOUSE_DOWN,this._sk10515);
            this.isEnabled1 = false;
         }
      }
      
      private function _sk10515(param1:MouseEvent) : void
      {
         if(!this.isEnabled1)
         {
            return;
         }
         if(!isEnabled1)
         {
            return;
         }
         if(this._rj4831(param1,_xw1367.count4))
         {
            param1.stopImmediatePropagation();
            return;
         }
         if(this._ql10750(param1,_xw1367.count13))
         {
            param1.stopImmediatePropagation();
            return;
         }
         if(this._ql10750(param1,_xw1367.count15))
         {
            param1.stopImmediatePropagation();
            return;
         }
         if(this._rj4831(param1,_xw1367.count2))
         {
            param1.stopImmediatePropagation();
            return;
         }
      }
      
      private function _rj4831(param1:MouseEvent, param2:int) : Boolean
      {
         var count3:MovieClip = null;
         var count2:SceneModel = null;
         var count7:Array = null;
         var items:int = 0;
         var count8:NodetagsskinsController = null;
         var count6:int = 0;
         var count:NodetagsskinsModel = null;
         var count10:int = int(this.items.length);
         var textString12:int = count10 - 1;
         while(textString12 >= 0)
         {
            count2 = SceneModel(this.items[textString12]);
            switch(count2.type)
            {
               case SkinsModel.count:
                  count3 = this._rf4964(count2,param2,param1.stageX,param1.stageY);
                  if(count3 != null)
                  {
                     _hl8190._ds11773(count3,count2);
                     return true;
                  }
                  break;
               case SkinsModel.count1:
                  count7 = count2._cw15200;
                  items = int(count7.length - 1);
                  while(items >= 0)
                  {
                     count8 = count7[items];
                     count6 = int(count8._kr1527.length - 1);
                     while(count6 >= 0)
                     {
                        count = NodetagsskinsModel(count8._kr1527[count6]);
                        count3 = this._rf4964(count,param2,param1.stageX,param1.stageY);
                        if(count3 != null)
                        {
                           _hl8190._sg12039(count2,count8);
                           this._pr16032._in13689(count8);
                           return true;
                        }
                        count6--;
                     }
                     items--;
                  }
            }
            textString12--;
         }
         return false;
      }
      
      private function _rf4964(param1:SceneModel, param2:int, param3:int, param4:int) : MovieClip
      {
         var count2:MovieClip = null;
         var count7:Boolean = false;
         var items:_xw1367 = _xw1367.getInstance();
         if(param1._un11300 != -1 && param1._ok7591 == param2)
         {
            count2 = items._qd11184(param1.name,param1._ok7591);
            count7 = Boolean(StringUtils.show(count2,new Point(param3,param4)));
            if(count7)
            {
               return count2;
            }
         }
         return null;
      }
      
      private function _ql10750(param1:MouseEvent, param2:int) : Boolean
      {
         var count1:MovieClip = null;
         var count2:Sprite = _xw1367.getInstance()._pf16091();
         StringUtils._tx2457(count2);
         var count7:int = count2.numChildren;
         var items:int = count7 - 1;
         while(items >= 0)
         {
            count1 = MovieClip(count2.getChildAt(items));
            switch(count1.count6)
            {
               case _xw1367.count13:
                  if(count1.count6 == param2)
                  {
                     if(!_hl8190._do11186())
                     {
                        var count3:Boolean = Boolean(this.render(param1,count1));
                     }
                  }
                  break;
               case _xw1367.count15:
                  if(count1.count6 == param2)
                  {
                     count3 = Boolean(this._rj4831(param1,_xw1367.count3));
                  }
            }
            items--;
         }
         return false;
      }
      
      private function render(param1:MouseEvent, param2:MovieClip) : Boolean
      {
         var count7:int = 0;
         var count2:int = int(objects.length);
         while(count7 < count2)
         {
            if(SceneObjectRenderer(objects[count7]).graphics == param2)
            {
               var count3:SceneObjectRenderer = SceneObjectRenderer(objects[count7]);
               var count1:Boolean = Boolean(StringUtils.render4(null.graphics,new Point(param1.stageX,param1.stageY),null._sl11700.items4[null.count4]));
               if(count1)
               {
                  _hl8190._lc1990(param1,null);
                  return true;
               }
            }
            count7++;
         }
         return false;
      }
      
      public function _qr5670() : void
      {
         var count2:int = 0;
         var count:int = 0;
         var count3:int = 0;
         var count1:int = 0;
         var count2:NodetagsskinsController = null;
         var count7:NodetagsskinsController = null;
         var items:NodetagsskinsController = null;
         var count8:NodetagsskinsController = null;
         var count6:NodetagsskinsController = null;
         var count:Array = null;
         var count10:String = null;
         var textString12:String = null;
         var count16:Dictionary = new Dictionary();
         count2 = 1;
         while(count2 < 2)
         {
            count2 = NodetagsskinsController(this.items1[count2]);
            count2++;
         }
         count2 = 1;
         while(count2 < 2)
         {
            count2 = NodetagsskinsController(this.items1[count2]);
            count = 0;
            while(count < count2.templates.length)
            {
               count7 = NodetagsskinsController(count2.templates[count]);
               count++;
            }
            count2++;
         }
         count2 = 1;
         while(count2 < 2)
         {
            count2 = NodetagsskinsController(this.items1[count2]);
            count = 0;
            while(count < count2.templates.length)
            {
               count7 = NodetagsskinsController(count2.templates[count]);
               count3 = 0;
               while(count3 < count7.elements.length)
               {
                  count8 = NodetagsskinsController(count7.elements[count3]);
                  if(count16[count8.id] == null)
                  {
                     count16[count8.id] = count8.id;
                  }
                  count3++;
               }
               count++;
            }
            count2++;
         }
         count2 = 0;
         while(count2 < this.items2.length)
         {
            items = NodetagsskinsController(this.items2[count2]);
            count = items._st1257();
            count2++;
         }
         count2 = 1;
         while(count2 < 2)
         {
            count2 = NodetagsskinsController(this.items1[count2]);
            count = 0;
            while(count < count2.templates.length)
            {
               count7 = NodetagsskinsController(count2.templates[count]);
               count10 = "";
               count3 = 0;
               while(count3 < count7.elements.length)
               {
                  count8 = NodetagsskinsController(count7.elements[count3]);
                  count10 += count8.id + ",";
                  count3++;
               }
               count++;
            }
            count2++;
         }
         count2 = 1;
         while(count2 < 2)
         {
            count2 = NodetagsskinsController(this.items1[count2]);
            count = 0;
            while(count < count2.templates.length)
            {
               count7 = NodetagsskinsController(count2.templates[count]);
               count3 = 0;
               while(count3 < count7.elements.length)
               {
                  count8 = NodetagsskinsController(count7.elements[count3]);
                  textString12 = "";
                  count1 = 0;
                  while(count1 < count8.skins.length)
                  {
                     count6 = NodetagsskinsController(count8.skins[count1]);
                     textString12 += count6.id + ",";
                     count1++;
                  }
                  count3++;
               }
               count++;
            }
            count2++;
         }
      }
   }
}

