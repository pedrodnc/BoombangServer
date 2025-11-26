package src.modules.irAlli
{
   import flash.events.EventDispatcher;
   import src.logs.*;
   import src.modules.*;
   import src.modules.enterScene._yc4848;
   import src.multiuser.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   
   public class _bi6199 extends EventDispatcher implements _pk5732
   {
      
      public static const _ai7182:int = 0;
      
      private var _ju13599:int;
      
      private var _id7327:_yi13016;
      
      private var logs:_qn13596;
      
      private var _ut4147:_kn4108;
      
      private var _kf11372:int;
      
      private var _hw14129:int;
      
      private var state:Boolean;
      
      public function _bi6199()
      {
         super();
         this._ut4147 = new _kn4108();
         this._id7327 = new _yi13016();
         this._id7327.addEventListener(_fx10821._ph1174,this._bw11981);
         this._jd12664 = _ai7182;
         this.logs = _qn13596.getInstance();
         this.state = false;
      }
      
      public function init(param1:Object = null) : void
      {
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
      }
      
      public function get _jd12664() : int
      {
         return this._ju13599;
      }
      
      public function set _jd12664(param1:int) : void
      {
         this._ju13599 = param1;
      }
      
      public function get _ud1642() : _bi12161
      {
         return this._id7327;
      }
      
      public function set _ud1642(param1:_bi12161) : void
      {
         this._id7327 = new _yi13016();
      }
      
      public function getState() : Boolean
      {
         return this.state;
      }
      
      public function _rp14326() : int
      {
         return this._kf11372;
      }
      
      public function _du13716(param1:_yc4848) : void
      {
         if(this.state)
         {
            param1._iw5858(this._ut4147,"",this._hw14129);
            this.state = false;
         }
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc3_[0]).charCodeAt(0));
         switch(_loc2_)
         {
            case _jl5367._ct9708:
               if(_loc3_.length < 8)
               {
                  this.logs._kp3815(new _ex15859(_qn13596._ny10327,"IrAlliModule.reciebeMsg",_loc3_.toString()));
                  return;
               }
               this._ut4147 = new _kn4108();
               this._ut4147._ls5877 = _hj3512._bn928(int(_loc3_[1]));
               this._ut4147._kb5211 = _rj12650._bn928(int(_loc3_[2]));
               this._ut4147._vn12441 = int(_loc3_[3]);
               this._ut4147._un6586 = int(_loc3_[4]);
               this._ut4147._eb11619 = int(_loc3_[5]);
               this._ut4147._fq658 = int(_loc3_[6]);
               this._ut4147.name = "";
               this._kf11372 = int(_loc3_[7]);
               this._hw14129 = int(_loc3_[8]);
               this.state = true;
               dispatchEvent(new _fx10821(_fx10821._ph1174,_loc3_));
               return;
               break;
            default:
               return;
         }
      }
   }
}

