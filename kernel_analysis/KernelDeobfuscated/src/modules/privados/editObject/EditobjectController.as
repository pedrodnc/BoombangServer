package src.modules.privados.editObject
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.*;
   import src.allData.scene.SceneModel;
   import src.allData.scene.skins.managerObjectSkineables.*;
   import src.allData.scene.skins.nodeTagsSkins.*;
   import src.allData.scene.typeEscenarios.SceneTypeIsland;
   import src.modules.privados.PrivadosController;
   import src.modules.privados.editObject.pastillas.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas.FichasUtils;
   import src.utils.fichas.FichasController;
   
   public class EditobjectController extends FichasController
   {
      
      public static const textString:String = "getMovieClip";
      
      public static const textString1:String = "mcFichaSkinBackGround";
      
      public static const textString2:String = "mcPastillaSkin";
      
      public static const textString3:String = "mcPastillaSkinPart";
      
      public static const textString4:String = "mcPastillaCheckBox";
      
      public static const textString5:String = "mcControlsContainer";
      
      public static const textString6:String = "mcButtonOk";
      
      public static const textString7:String = "mcButtonCancel";
      
      public static const textString8:String = "mcMember";
      
      public static const count:int = 5;
      
      private var _oe6085:MovieClip;
      
      private var _kk13363:MovieClip;
      
      private var _sr7110:CommoncomponentsView;
      
      private var _qk10002:CommoncomponentsController;
      
      private var _mg15141:CommoncomponentsController;
      
      private var _bl11315:SceneTypeIsland;
      
      private var _vp454:PrivadosController;
      
      private var _yw3104:SceneModel;
      
      private var _ec3819:NodetagsskinsController;
      
      private var items:Array;
      
      private var _nj3299:ManagerobjectskineablesController;
      
      private var _cv14097:ManagerobjectskineablesController;
      
      private var count1:int;
      
      private var _qs1150:XML;
      
      private var _im12039:EditobjectModel;
      
      private var _pi16156:Function;
      
      private var _ck9015:PastillasView;
      
      public function EditobjectController(param1:PrivadosController, param2:MovieClip, param3:FichasUtils, param4:Function, param5:MovieClip, param6:SceneTypeIsland, param7:XML, param8:EditobjectModel, param9:Function)
      {
         super(param2,param3,param4);
         this._vp454 = param1;
         this._kk13363 = param5;
         this._bl11315 = param6;
         this._qs1150 = param7;
         this._im12039 = param8;
         this._pi16156 = param9;
         this._oe6085 = param2[textString5];
         this._qk10002 = new CommoncomponentsController(param2[textString6],this._fw4775);
         this._mg15141 = new CommoncomponentsController(param2[textString7],this._wp10139);
         this._sr7110 = new CommoncomponentsView(param2[textString8],this._qu3615,param8._mf15772);
         this.items = new Array();
         MovieClip(param2[textString1]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop);
      }
      
      public function stop(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      public function _ec4755(param1:NodetagsskinsController) : void
      {
         if(param1.member)
         {
            this._ck9015._ec9581();
            this._sr7110.show();
         }
         else
         {
            this._ck9015._qn5067();
            this._sr7110.authenticateUser2();
         }
      }
      
      public function _uo14025(param1:int, param2:int, param3:SceneModel) : Boolean
      {
         if(super.show(param1,param2))
         {
            this._yw3104 = param3;
            this._db5749();
            return true;
         }
         return false;
      }
      
      override public function authenticateUser2() : Boolean
      {
         this.move1();
         return super.authenticateUser2();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         MovieClip(_cw11838[textString1]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop);
         if(this._qk10002 != null)
         {
            this._qk10002.destroy();
            this._qk10002 = null;
         }
         if(this._mg15141 != null)
         {
            this._mg15141.destroy();
            this._mg15141 = null;
         }
         if(this._sr7110 != null)
         {
            this._sr7110.destroy();
            this._sr7110 = null;
         }
      }
      
      private function _vw3929() : void
      {
         var count2:NodetagsskinsController = this._bl11315._pr16032._pi3785(this._yw3104.name);
         var count:ManagerobjectskineablesController = this._bl11315._pr16032._nc6280(count2.id);
         var count3:NodetagsskinsController = count2._lt8614(count.count1);
      }
      
      private function _db5749() : void
      {
         this.items = new Array();
         var count2:NodetagsskinsController = this._bl11315._pr16032._pi3785(this._yw3104.name);
         this._ec3819 = count2.render();
         var count:ManagerobjectskineablesController = this._bl11315._pr16032._nc6280(this._ec3819.id);
         this._nj3299 = count.render();
         this._cv14097 = count.render();
         var count3:NodetagsskinsController = this._ec3819._lt8614(this._nj3299.count1);
         count3 = count3.render();
         count3.name = this._im12039.CURRENT;
         count3.isEnabled = true;
         this.count1 = 0;
         this._ec3819._th14761(count3,0);
         var count1:int = int(this._mg13232(this.count1));
         this._ei10188(this.count1,count1);
         this._ec4755(count3);
      }
      
      private function _mg13232(param1:int) : int
      {
         var count1:int = 0;
         var count:int = count;
         var count3:Array = this._ec3819._cv8567();
         while(count1 < count3.length)
         {
            if(this._qs1150.attribute(count3[count1]).toString() != "")
            {
               count3[count1] = this._qs1150.attribute(count3[count1]);
            }
            count1++;
         }
         this._ck9015 = new PastillasView(this.items.length,this._kk13363[textString](textString2),count3,param1,this._sm16011,"");
         this._oe6085.addChild(this._ck9015);
         this.items.push(this._ck9015);
         this._ck9015.x = (_cw11838.width - this._ck9015.width) / 2;
         this._ck9015.y = count;
         return count + (count + this._ck9015.height);
      }
      
      public function _sm16011(param1:int, param2:int) : void
      {
         this.count1 = param2;
         this.move();
         var count3:NodetagsskinsController = NodetagsskinsController(this._ec3819.templates[this.count1]);
         this._ec4755(count3);
         if(count3.isEnabled)
         {
            this._cv14097 = this._nj3299.render();
         }
         else
         {
            this._cv14097 = ManagerobjectskineablesController._qe13252(this._ec3819,count3.id);
         }
         this._bl11315._vh5033(this._cv14097);
         var count1:int = count * 2 + Pastillas(this.items[0]).height;
         this._ei10188(this.count1,count1);
      }
      
      private function _ei10188(param1:int, param2:int) : int
      {
         var count3:String = null;
         var count1:Pastillas = null;
         var count2:NodetagsskinsController = null;
         var count7:int = 0;
         var items:int = 0;
         var count8:int = 0;
         var count6:int = 0;
         var textString12:int = 0;
         var count:int = param2;
         var count10:NodetagsskinsController = NodetagsskinsController(this._ec3819.templates[param1]);
         while(textString12 < count10.elements.length)
         {
            count2 = NodetagsskinsController(count10.elements[textString12]);
            switch(count2.type)
            {
               case Pastillas._cp10522:
                  count7 = 0;
                  if(param1 == 0)
                  {
                     count8 = int(this._nj3299._fq13299(count2.id));
                     if(count8 != -1)
                     {
                        count7 = count2._vr14801(count8);
                     }
                  }
                  count3 = this._qs1150.attribute(count2._pr9381);
                  count1 = new PastillasView(this.items.length,this._kk13363[textString](textString3),count2._cs15075(),count7,this._ut8844,count3);
                  this._oe6085.addChild(count1);
                  this.items.push(count1);
                  count1.x = (_cw11838.width - count1.width) / 2;
                  count1.y = count;
                  count += count + count1.height;
                  break;
               case Pastillas._wb3038:
                  items = 0;
                  if(param1 == 0)
                  {
                     count6 = int(this._nj3299._fq13299(count2.id));
                     if(count6 != -1)
                     {
                        items = count2._vr14801(count6);
                     }
                  }
                  count3 = this._qs1150.attribute(count2._pr9381);
                  count1 = new PastillasView(this.items.length,this._kk13363[textString](textString4),count2._cs15075(),items,this._ut8844,count3);
                  this._oe6085.addChild(count1);
                  this.items.push(count1);
                  count1.x = (_cw11838.width - count1.width) / 2;
                  count1.y = count;
                  count += count + count1.height;
                  break;
               case Pastillas._nb9799:
                  count1 = new Pastillas(0,new MovieClip(),0,null);
                  this._oe6085.addChild(count1);
                  this.items.push(count1);
            }
            textString12++;
         }
         return count;
      }
      
      private function move() : void
      {
         var count2:Pastillas = null;
         var count:int = this.items.length - 1;
         while(count > 0)
         {
            count2 = Pastillas(this.items[count]);
            count2.destroy();
            this._oe6085.removeChild(count2);
            this.items.splice(count,1);
            count--;
         }
      }
      
      private function move1() : void
      {
         var count2:Pastillas = null;
         var count:int = this.items.length - 1;
         while(count >= 0)
         {
            count2 = Pastillas(this.items[count]);
            count2.destroy();
            this._oe6085.removeChild(count2);
            this.items.splice(count,1);
            count--;
         }
      }
      
      private function _ut8844(param1:int, param2:int) : void
      {
         var count1:int = param1 - 1;
         var count2:NodetagsskinsController = NodetagsskinsController(this._ec3819.templates[this.count1]);
         var count7:NodetagsskinsController = NodetagsskinsController(count2.elements[count1]);
         var items:NodetagsskinsController = NodetagsskinsController(count7.skins[param2]);
         var count8:Array = items._st1257();
         if(count2.isEnabled)
         {
            var count3:int = int(this._nj3299._fq13299(count7.id));
            if(0 == items.id)
            {
               count8 = this._nj3299.getList(count7.id);
            }
         }
         this._cv14097._os7047(count7.id,items.id,count8);
         this._bl11315._vh5033(this._cv14097);
      }
      
      private function _qs9692(param1:int, param2:int) : void
      {
      }
      
      private function _fw4775() : void
      {
         var count2:NodetagsskinsController = this._ec3819._lt8614(this._cv14097.count1);
         if(count2.member && !UserSession.getInstance().member)
         {
            this._qu3615();
            this._wp10139();
         }
         else
         {
            this._bl11315._vh5033(this._cv14097);
            this._vp454.handleSocket18(this._cv14097);
            this.authenticateUser2();
         }
      }
      
      public function _wp10139() : void
      {
         this._bl11315._vh5033(this._nj3299);
         this.authenticateUser2();
      }
      
      private function _qu3615() : void
      {
         this._wp10139();
         this._pi16156();
      }
   }
}

