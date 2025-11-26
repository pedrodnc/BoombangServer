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
   
   public class _ut10448 extends MovieClip
   {
      
      protected var _br9328:MovieClip;
      
      protected var _fb15132:Bitmap;
      
      private var _kw12683:MovieClip;
      
      protected var _nm6639:int;
      
      protected var _pl15318:int;
      
      protected var _ej376:int;
      
      protected var _tb5694:_px10602;
      
      protected var _qr7703:_il6324;
      
      protected var _db13109:Boolean;
      
      protected var _xn11477:Point;
      
      protected var _ji8333:Point;
      
      protected var _cj15411:uint = 0;
      
      public function _ut10448(param1:_px10602, param2:_il6324, param3:int, param4:int = 0, param5:int = 0)
      {
         super();
         this._db13109 = false;
         this._qr7703 = param2;
         this._br9328 = new MovieClip();
         addEventListener(Event.ENTER_FRAME,this._ir4212);
         this._nm6639 = param4;
         this._pl15318 = param5;
         this._ej376 = param3;
         this._db13109 = false;
         this._tb5694 = param1;
         this._fb15132 = this._tb5694._rd1942(this._tb5694._sl11700._cg6545[this._tb5694._vw12711] * param2._go7360);
         this._br9328.addChild(this._fb15132);
         this._br9328.locz = this._tb5694._sl11700._ja12821[this._tb5694._vw12711];
         this._br9328.x = mouseX;
         this._br9328.y = mouseY;
         if(this._tb5694._iy10701 == 0)
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
         _xw1367.getInstance()._uc3178(this._br9328,_xw1367._iw3373,false,_xw1367._gu7895);
      }
      
      public function _ho5101() : void
      {
         this._kw12683 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","Process");
         var _loc1_:Array = new Array(0.309,0.609,0.082,0,0,0.309,0.609,0.082,0,0,0.309,0.609,0.082,0,0,0,0,0,1,0);
         var _loc2_:ColorMatrixFilter = new ColorMatrixFilter(_loc1_);
         this._fb15132.filters = [_loc2_];
         this._br9328.addChild(this._kw12683);
      }
      
      public function destroy() : void
      {
         removeEventListener(Event.ENTER_FRAME,this._ir4212);
         _xw1367.getInstance()._na10792(this._br9328,_xw1367._iw3373);
         _xv14798.cleanChildsMovieclip(this._br9328);
      }
      
      protected function _ir4212(param1:Event) : void
      {
         var _loc2_:Object = this._er10160();
         this._sg10179(_loc2_._jo12299,_loc2_._qu12668);
         var _loc3_:Boolean = Boolean(this._fc5470());
         this._nl5511();
         var _loc4_:Boolean = Boolean(this._xr735());
         if(!_loc4_ && !_loc3_ && Boolean(this._qr7703._qe12871(this._tb5694._sl11700._vf11740[this._tb5694._vw12711],this._xn11477,this._tb5694._iy10701,this._tb5694._sl11700._fv13476)))
         {
            this._br9328.alpha = 1;
            this._br9328.x = this._ji8333.x;
            this._br9328.y = this._ji8333.y;
            this._db13109 = true;
         }
         else
         {
            this._br9328.alpha = 0.5;
            this._br9328.x = _loc2_._jo12299;
            this._br9328.y = _loc2_._qu12668;
            this._db13109 = false;
         }
      }
      
      protected function _er10160() : Object
      {
         var _loc1_:Object = {};
         _loc1_._jo12299 = this._br9328.stage.mouseX + this._nm6639;
         _loc1_._qu12668 = this._br9328.stage.mouseY + this._pl15318;
         return _loc1_;
      }
      
      protected function _sg10179(param1:int, param2:int) : void
      {
         this._xn11477 = _il6324._bi7400(new Point(param1,param2));
         this._ji8333 = _il6324.getPlotXY(this._xn11477);
      }
      
      protected function _fc5470() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._ej376 == _xl11610._jc11265)
         {
            if(_hl15578(this._tb5694).x == this._ji8333.x && _hl15578(this._tb5694).y == this._ji8333.y)
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
      
      protected function _nl5511() : void
      {
         if(Boolean(_gb14411.getInstance()._rl15912.visible) && !_gb14411.getInstance()._rl15912.hitTestPoint(this._ji8333.x,this._ji8333.y))
         {
            _gb14411.getInstance()._rl15912.visible = false;
         }
      }
      
      protected function _xr735() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:_hl15578 = null;
         var _loc3_:Boolean = false;
         if((this._tb5694._sl11700._vf11740[this._tb5694._vw12711] as Array).length <= 1)
         {
            _loc1_ = 0;
            for each(_loc2_ in this._qr7703.objects)
            {
               if(_loc2_ != this._tb5694 && _loc2_.x == this._ji8333.x && _loc2_.y == this._ji8333.y)
               {
                  _loc1_++;
               }
            }
            if(_loc1_ > this._qr7703._ja1725())
            {
               _loc3_ = true;
            }
         }
         return _loc3_;
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
         return this._db13109;
      }
      
      public function get _rt14669() : uint
      {
         return this._cj15411;
      }
      
      public function get _hw14129() : int
      {
         return this._tb5694._hw14129;
      }
   }
}

