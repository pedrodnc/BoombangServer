package src.tv.boombang.application.objects.drag
{
   import flash.display.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import src.*;
   import src.allData.mochila.*;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class DragController extends MovieClip
   {
      
      protected var _br9328:MovieClip;
      
      protected var _fb15132:Bitmap;
      
      private var _kw12683:MovieClip;
      
      protected var count:int;
      
      protected var count1:int;
      
      protected var count2:int;
      
      protected var _tb5694:SceneObjectProperties;
      
      protected var _qr7703:SceneType;
      
      protected var isEnabled:Boolean;
      
      protected var _xn11477:Point;
      
      protected var _ji8333:Point;
      
      protected var _cj15411:uint = 0;
      
      public function DragController(param1:SceneObjectProperties, param2:SceneType, param3:int, param4:int = 0, param5:int = 0)
      {
         super();
         this.isEnabled = false;
         this._qr7703 = param2;
         this._br9328 = new MovieClip();
         addEventListener(Event.ENTER_FRAME,this._ir4212);
         this.count = param4;
         this.count1 = param5;
         this.count2 = param3;
         this.isEnabled = false;
         this._tb5694 = param1;
         this._fb15132 = this._tb5694._rd1942(this._tb5694._sl11700.items4[this._tb5694.count4] * param2.count8);
         this._br9328.addChild(this._fb15132);
         this._br9328.locz = this._tb5694._sl11700.items6[this._tb5694.count4];
         this._br9328.x = mouseX;
         this._br9328.y = mouseY;
         if(this._tb5694.count4 == 0)
         {
            this._br9328.scaleX = 1;
         }
         else
         {
            this._br9328.scaleX = -1;
         }
         this._qd10757();
      }
      
      protected function _qd10757() : void
      {
         _xw1367.getInstance()._uc3178(this._br9328,_xw1367.count8,false,_xw1367.count14);
      }
      
      public function _ho5101() : void
      {
         this._kw12683 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf","Process");
         var count2:Array = new Array(0.309,0.609,0.082,0,0,0.309,0.609,0.082,0,0,0.309,0.609,0.082,0,0,0,0,0,1,0);
         var count:ColorMatrixFilter = new ColorMatrixFilter(count2);
         this._fb15132.filters = [count];
         this._br9328.addChild(this._kw12683);
      }
      
      public function destroy() : void
      {
         removeEventListener(Event.ENTER_FRAME,this._ir4212);
         _xw1367.getInstance().move2(this._br9328,_xw1367.count8);
         StringUtils.cleanChildsMovieclip(this._br9328);
      }
      
      protected function _ir4212(param1:Event) : void
      {
         var count:Object = this._er10160();
         this._sg10179(count._jo12299,count._qu12668);
         var count3:Boolean = Boolean(this.render());
         this.attack();
         var count1:Boolean = Boolean(this.render());
         if(!count1 && !count3 && Boolean(this._qr7703._qe12871(this._tb5694._sl11700.items5[this._tb5694.count4],this._xn11477,this._tb5694.count4,this._tb5694._sl11700.items7)))
         {
            this._br9328.alpha = 1;
            this._br9328.x = this._ji8333.x;
            this._br9328.y = this._ji8333.y;
            this.isEnabled = true;
         }
         else
         {
            this._br9328.alpha = 0.5;
            this._br9328.x = count._jo12299;
            this._br9328.y = count._qu12668;
            this.isEnabled = false;
         }
      }
      
      protected function _er10160() : Object
      {
         var count2:Object = {};
         count2._jo12299 = this._br9328.stage.mouseX + this.count;
         count2._qu12668 = this._br9328.stage.mouseY + this.count1;
         return count2;
      }
      
      protected function _sg10179(param1:int, param2:int) : void
      {
         this._xn11477 = SceneType._bi7400(new Point(param1,param2));
         this._ji8333 = SceneType.getPlotXY(this._xn11477);
      }
      
      protected function render() : Boolean
      {
         var count2:Boolean = false;
         if(this.count2 == DragModel._jc11265)
         {
            if(SceneObjectRenderer(this._tb5694).x == this._ji8333.x && SceneObjectRenderer(this._tb5694).y == this._ji8333.y)
            {
               count2 = true;
            }
         }
         return count2;
      }
      
      protected function attack() : void
      {
         if(Boolean(MochilaModel.getInstance()._rl15912.visible) && !MochilaModel.getInstance()._rl15912.hitTestPoint(this._ji8333.x,this._ji8333.y))
         {
            MochilaModel.getInstance()._rl15912.visible = false;
         }
      }
      
      protected function render() : Boolean
      {
         var count2:int = 0;
         var count:SceneObjectRenderer = null;
         var count3:Boolean = false;
         if((this._tb5694._sl11700.items5[this._tb5694.count4] as Array).length <= 1)
         {
            count2 = 0;
            for each(count in this._qr7703.objects)
            {
               if(count != this._tb5694 && count.x == this._ji8333.x && count.y == this._ji8333.y)
               {
                  count2++;
               }
            }
            if(count2 > this._qr7703._ja1725())
            {
               count3 = true;
            }
         }
         return count3;
      }
      
      public function get _pg158() : Point
      {
         return this._xn11477;
      }
      
      public function get _ai997() : Point
      {
         return this._ji8333;
      }
      
      public function get _sh5247() : Boolean
      {
         return this.isEnabled;
      }
      
      public function get _rt14669() : uint
      {
         return this._cj15411;
      }
      
      public function get count2() : int
      {
         return this._tb5694.count2;
      }
   }
}

