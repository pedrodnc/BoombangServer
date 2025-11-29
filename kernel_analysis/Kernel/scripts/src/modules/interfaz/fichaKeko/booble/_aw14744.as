package src.modules.interfaz.fichaKeko.booble
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.modules.interfaz.fichaKeko._kc6395;
   import src.person._um8624;
   import src.utils.*;
   
   public class _aw14744
   {
      
      private static const _pd9423:String = "getClassMovieClip";
      
      private static const _gr15347:String = "mcBoobleAlert";
      
      private static const _fc15137:String = "mcBoobleFrase";
      
      private static const _pr15142:String = "mcBoobleFriend";
      
      private static const _qx1142:String = "mcBoobleHelp";
      
      public static const _bc9194:int = 0;
      
      public static const _pf13597:int = 1;
      
      public static const _ys7868:int = 2;
      
      public static const _yr2101:int = 3;
      
      public static const _la11185:int = 4;
      
      public static const _mw8494:int = 5;
      
      public static const _wv3617:String = "mcBoobleUser";
      
      private static const _qr13413:int = 7;
      
      private var _kf7619:_rn3949;
      
      private var _pk7384:Boolean;
      
      private var _bg6153:int;
      
      private var _pq10826:int;
      
      private var _il1007:String;
      
      private var _ds2475:MovieClip;
      
      private var _cc9090:MovieClip;
      
      private var _ts642:_kc6395;
      
      private var _on9953:_gu2082;
      
      private var _ky9387:MovieClip;
      
      private var _uu1792:MovieClip;
      
      private var _nr6054:MovieClip;
      
      private var _rq6279:MovieClip;
      
      private var _fm8672:int;
      
      private var _gb2823:int;
      
      private var _km12896:String;
      
      private var _pq1088:String;
      
      private var _up7427:int;
      
      public function _aw14744(param1:MovieClip, param2:MovieClip, param3:_rn3949)
      {
         super();
         this._kf7619 = param3;
         this._ds2475 = param1;
         this._pk7384 = false;
         this._bg6153 = 0;
         this._cc9090 = param2;
         this._up7427 = 0;
         this._nr6054 = param2[_pd9423](_gr15347);
         this._ky9387 = param2[_pd9423](_fc15137);
         this._rq6279 = param2[_pd9423](_pr15142);
         this._uu1792 = param2[_pd9423](_qx1142);
         param1.addEventListener(Event.ENTER_FRAME,this.loop);
         this._nm15782();
         this._tj8775();
      }
      
      private function loop(param1:Event) : void
      {
         if(!this._pk7384)
         {
            return;
         }
         ++this._bg6153;
         if(this._bg6153 >= 3)
         {
            this._bg6153 = 0;
            this._pk7384 = false;
            this._nm15782();
            switch(this._pq10826)
            {
               case _bc9194:
                  this._on9953 = new _tt13525(this._ds2475,this._ky9387,this._kf7619);
                  return;
               case _pf13597:
                  this._on9953 = new _kh13783(this._gb2823,this._ds2475,this._uu1792,this._kf7619);
                  return;
               case _ys7868:
                  this._on9953 = new _vs7032(this._fm8672,this._ds2475,this._nr6054,this._tj8775,this._kf7619);
                  return;
               case _yr2101:
                  this._on9953 = new _ag6440(this._km12896,this._ds2475,this._rq6279,this._kf7619);
                  return;
               case _mw8494:
                  this._on9953 = new _kh13783(this._gb2823,this._ds2475,this._uu1792,this._kf7619,this._pq1088);
                  return;
            }
         }
      }
      
      public function _dg10756(param1:_um8624, param2:Boolean, param3:_kc6395) : void
      {
         this._kf7619._lp13903 = param1;
         this._kf7619._qo15312 = param2;
         this._kf7619._ts642 = param3;
         this._tj8775();
      }
      
      public function _gw14702() : void
      {
         if(this._pq10826 == _bc9194 && this._on9953 is _tt13525)
         {
            _tt13525(this._on9953)._bc10423();
            _tt13525(this._on9953)._gw14702();
         }
      }
      
      public function _dq14212(param1:String) : void
      {
         this._km12896 = param1;
         this._te2930(_yr2101,"");
      }
      
      public function _qg5125(param1:String) : void
      {
         this._gb2823 = _kh13783._pw2430;
         this._pq1088 = param1;
         this._te2930(_mw8494,"");
      }
      
      public function _bt10174(param1:int) : void
      {
         this._gb2823 = param1;
         this._te2930(_pf13597,"");
      }
      
      public function _ak11554(param1:int) : void
      {
         if(param1 == _vs7032._rk906)
         {
            ++this._up7427;
            if(this._up7427 >= _qr13413)
            {
               this._up7427 = 0;
               if(this._pq10826 == _ys7868 && this._on9953 is _vs7032 && _vs7032(this._on9953)._gl10591() == _vs7032._rk906)
               {
                  return;
               }
            }
         }
         if(param1 == _vs7032._ja7340)
         {
            if(this._pq10826 == _ys7868 && this._on9953 is _vs7032 && _vs7032(this._on9953)._gl10591() == _vs7032._rk906)
            {
               return;
            }
         }
         this._fm8672 = param1;
         this._te2930(_ys7868,"");
      }
      
      public function _tj8775() : void
      {
         this._te2930(_bc9194,"");
      }
      
      public function _tw7636() : void
      {
         this._te2930(_la11185,"");
      }
      
      private function _te2930(param1:int, param2:String) : void
      {
         this._pq10826 = param1;
         this._il1007 = param2;
         this._pk7384 = true;
         this._bg6153 = 0;
         this._mq12367();
         this._nm15782();
      }
      
      private function _mq12367() : void
      {
         if(this._on9953 != null)
         {
            this._on9953.destroy();
            this._on9953 = null;
         }
      }
      
      public function destroy() : void
      {
         if(this._ds2475 != null)
         {
            this._ds2475.removeEventListener(Event.ENTER_FRAME,this.loop);
         }
         this._mq12367();
      }
      
      private function _nm15782() : void
      {
         _xv14798.cleanChildsMovieclip(this._ds2475);
      }
   }
}

