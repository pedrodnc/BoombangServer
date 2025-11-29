package src.person
{
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import src.*;
   import src.allData.scene.typeEscenarios._il6324;
   import src.logs.*;
   import src.modules.interfaz._je14031;
   
   public class _tl4091 extends EventDispatcher
   {
      
      private var logs:_qn13596;
      
      private var _sb10952:int;
      
      public var _pf8204:Array;
      
      public var _qm13976:Array;
      
      public function _tl4091()
      {
         var _loc2_:int = 0;
         super();
         this.logs = _qn13596.getInstance();
         this._pf8204 = new Array();
         var _loc1_:int = int(_ga7956._sj2270);
         while(_loc2_ < _loc1_)
         {
            this._pf8204.push(null);
            _loc2_++;
         }
         this._qm13976 = new Array();
      }
      
      public function destroy() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         this._yr5377();
         while(_loc1_ < _ga7956._sj2270)
         {
            this._qi1595(_loc1_,false,null);
            _loc1_++;
         }
         while(_loc2_ < this._qm13976.length)
         {
            _bo13989(this._qm13976[_loc2_]).destroy();
            _loc2_++;
         }
         this._qm13976 = new Array();
      }
      
      public function _px36(param1:_um8624, param2:_il6324, param3:Boolean) : _ta2443
      {
         var _loc4_:int = param1._jr9311;
         this._qi1595(_loc4_,false,null);
         this._pf8204[_loc4_] = new _ta2443(param1,param2,param3);
         var _loc5_:_xw1367 = _xw1367.getInstance();
         _loc5_._uc3178(_ta2443(this._pf8204[_loc4_]),_xw1367._jf1741,true,_xw1367._ej11244);
         return _ta2443(this._pf8204[_loc4_]);
      }
      
      public function _qi1595(param1:int, param2:Boolean, param3:_il6324) : void
      {
         var _loc4_:MovieClip = null;
         if(this._pf8204[param1] == null)
         {
            return;
         }
         var _loc6_:_xw1367 = _xw1367.getInstance();
         var _loc7_:_ta2443 = _ta2443(this._pf8204[param1]);
         _loc6_._na10792(_loc7_,_xw1367._jf1741);
         if(param2)
         {
            if(_loc7_._gh13396())
            {
               _loc4_ = _loc7_._yt3158();
               if(_loc4_ != null)
               {
                  var _loc5_:_bo13989 = new _bo13989(_loc4_,param3,_loc7_.x,_loc7_.y,_loc7_.state);
                  this._qm13976.push(null);
               }
            }
         }
         _loc7_._ys15659();
         this._pf8204[param1] = null;
      }
      
      public function loop() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = int(_ga7956._sj2270);
         while(_loc2_ < _loc1_)
         {
            if(this._pf8204[_loc2_] != null)
            {
               _ta2443(this._pf8204[_loc2_]).loop();
            }
            _loc2_++;
         }
         var _loc3_:int = int(this._qm13976.length);
         var _loc4_:int = _loc3_ - 1;
         while(_loc4_ >= 0)
         {
            if(_bo13989(this._qm13976[_loc4_])._pl2360())
            {
               _bo13989(this._qm13976[_loc4_]).destroy();
               this._qm13976.splice(_loc4_,1);
            }
            _loc4_--;
         }
      }
      
      public function _tk4905(param1:int) : Boolean
      {
         if(this._pf8204[param1] == null)
         {
            this.logs._kp3815(new _sy12041(_qn13596._dj10628,"AllPersons.createListenerMyPeron","idPos inexistente, idPos=" + param1));
            return false;
         }
         this._sb10952 = param1;
         _ta2443(this._pf8204[this._sb10952]).addEventListener(_ir15723._aa5196,this._uu8993);
         return true;
      }
      
      public function _mc6491(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < _ga7956._sj2270)
         {
            if(this._pf8204[_loc2_] != null)
            {
               if(_ta2443(this._pf8204[_loc2_])._md8722.id == param1)
               {
                  return _loc2_;
               }
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function _xc6184(param1:int) : _ta2443
      {
         var _loc2_:int = this._mc6491(param1);
         if(_loc2_ == -1)
         {
            return null;
         }
         return _ta2443(this._pf8204[_loc2_]);
      }
      
      public function _dc15714(param1:_je14031) : void
      {
         var _loc2_:_ta2443 = null;
         for each(_loc2_ in this._pf8204)
         {
            if(_loc2_ != null)
            {
               _loc2_._dl12997(param1);
               _loc2_._jc6052();
            }
         }
      }
      
      public function _yr5377() : void
      {
         if(this._pf8204[this._sb10952] == null)
         {
            return;
         }
         _ta2443(this._pf8204[this._sb10952]).removeEventListener(_ir15723._aa5196,this._uu8993);
      }
      
      private function _uu8993(param1:_ir15723) : void
      {
         dispatchEvent(new _ir15723(_ir15723._aa5196,param1._al309));
      }
   }
}

