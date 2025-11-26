package src.tv.boombang.application.navigation.gui.windows
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows._ja3764;
   import src.tv.boombang.application.navigation.events.*;
   import src.tv.boombang.application.navigation.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.list.*;
   
   public class _fq13166 extends _ja3764 implements _jk15536
   {
      
      private var _mm16061:_oe1976;
      
      private var _rx14500:_wa1146;
      
      private var _ei14955:MovieClip;
      
      private var _qe10706:_lg6078;
      
      private var _sl12580:_cd9992;
      
      public function _fq13166(param1:MovieClip, param2:String, param3:_cd9992)
      {
         var _loc4_:_lg6078 = null;
         var _loc6_:int = 0;
         var _loc8_:int = 0;
         super(param1,param2);
         this._sl12580 = param3;
         this._mm16061 = new _oe1976(_vr11636);
         this._mm16061.addEventListener(_ye11838._yh7280,this._ea7041,false,0,true);
         var _loc5_:Array = new Array();
         _loc5_.push(this._ax7775("navigationMenu.buttons.areas",_cd9992._as7636,_rs7737._pj7003));
         _loc5_.push(this._ax7775("navigationMenu.buttons.games",_cd9992._ja3630,_rs7737._li12270));
         _loc5_.push(this._ax7775("navigationMenu.buttons.islands",_cd9992._kj11377,_rs7737._li12270));
         _loc5_.push(this._ax7775("navigationMenu.buttons.houses",_cd9992._rv11305,_rs7737._li12270));
         _loc5_.push(this._ax7775("navigationMenu.buttons.search",_cd9992._iy6431,_rs7737._fk2506,true));
         var _loc7_:int = int(_loc5_.length);
         while(_loc8_ < _loc7_)
         {
            _loc4_ = _loc5_[_loc8_];
            if(this._sl12580 == _loc4_._ks12861)
            {
               _loc6_ = _loc8_;
               break;
            }
            _loc8_++;
         }
         this._mm16061._wt2363(_loc5_,_loc6_);
         _xo6614.addChild(this._mm16061);
      }
      
      private function _ax7775(param1:String, param2:_cd9992, param3:String, param4:Boolean = false) : _lg6078
      {
         var _loc5_:_lg6078 = new _lg6078();
         _loc5_.id = param1;
         _loc5_._fr15414 = param3;
         _loc5_._is13063 = param4;
         _loc5_._ks12861 = param2;
         return _loc5_;
      }
      
      private function _ea7041(param1:_ye11838) : void
      {
         if(this._rx14500 != null)
         {
            if(this._rx14500.isLoading)
            {
               return;
            }
            this._rx14500.destroy();
            removeChild(this._rx14500);
            this._rx14500 = null;
         }
         this._qe10706 = param1.data as _lg6078;
         dispatchEvent(new _pw5334(_pw5334._rr2751,null,this._qe10706._ks12861));
         switch(this._qe10706._ks12861)
         {
            case _cd9992._as7636:
               this._rx14500 = new _cu13655((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","ListWindow") as MovieClip,_cd9992._as7636._tv1901);
               this._rx14500.addEventListener(_pw5334._vt105,this._vv12201,false,0,true);
               break;
            case _cd9992._ja3630:
               this._rx14500 = new _cu13655((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","ListWindow") as MovieClip,_cd9992._ja3630._tv1901);
               this._rx14500.addEventListener(_pw5334._vt105,this._vv12201,false,0,true);
               break;
            case _cd9992._kj11377:
               this._rx14500 = new _gm11872((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","IslandsWindow") as MovieClip,_cd9992._kj11377._tv1901);
               this._rx14500.addEventListener(_pw5334._dt4861,this._pa3291,false,0,true);
               this._rx14500.addEventListener(_pw5334._uk11953,this._hl11318,false,0,true);
               this._rx14500.addEventListener(_pw5334._eu6579,this._ul15328,false,0,true);
               break;
            case _cd9992._rv11305:
               this._rx14500 = new _hb8071((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","HousesWindow") as MovieClip,_cd9992._rv11305._tv1901);
               this._rx14500.addEventListener(_pw5334._eu6579,this._ul15328,false,0,true);
               break;
            case _cd9992._iy6431:
               this._rx14500 = new _lq13858((_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","SearchWindow") as MovieClip,_cd9992._iy6431._tv1901);
               this._rx14500.addEventListener(_pw5334._eu6579,this._ul15328,false,0,true);
               this._rx14500.addEventListener(_pw5334._dt4861,this._pa3291,false,0,true);
         }
         if(this._rx14500)
         {
            this._rx14500.addEventListener(_pw5334._om1434,this._sy457,false,0,true);
            this._rx14500.x = 7;
            this._rx14500.y = 37;
            addChild(this._rx14500);
         }
      }
      
      private function _sy457(param1:_pw5334) : void
      {
         this._mm16061._dy867 = !this._rx14500.isLoading;
      }
      
      private function _pa3291(param1:_pw5334) : void
      {
         dispatchEvent(new _pw5334(_pw5334._dt4861,param1.data));
      }
      
      private function _ul15328(param1:_pw5334) : void
      {
         dispatchEvent(new _pw5334(_pw5334._eu6579,param1.data));
      }
      
      private function _vv12201(param1:_pw5334) : void
      {
         dispatchEvent(new _pw5334(_pw5334._vt105,param1.data));
      }
      
      private function _hl11318(param1:_pw5334) : void
      {
         dispatchEvent(new _pw5334(_pw5334._uk11953,param1.data));
      }
      
      override public function destroy() : void
      {
         if(this._rx14500)
         {
            this._rx14500.removeEventListener(_pw5334._dt4861,this._pa3291);
            this._rx14500.removeEventListener(_pw5334._eu6579,this._ul15328);
            this._rx14500.removeEventListener(_pw5334._vt105,this._vv12201);
            this._rx14500.removeEventListener(_pw5334._uk11953,this._hl11318);
            this._rx14500.removeEventListener(_pw5334._om1434,this._sy457);
            this._rx14500.destroy();
            this._rx14500 = null;
         }
         if(_xo6614)
         {
            removeChild(_xo6614);
            _xo6614 = null;
         }
         super.destroy();
      }
   }
}

