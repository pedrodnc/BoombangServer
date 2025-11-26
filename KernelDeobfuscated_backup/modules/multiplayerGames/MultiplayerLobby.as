package src.modules.multiplayerGames
{
   import src.allData.*;
   import src.allData.color._qm1392;
   import src.logs.*;
   import src.modules.*;
   
   public class _qs5969 implements _pk5732
   {
      
      public static const _ai7182:int = 0;
      
      public static const _nu6936:int = 1;
      
      protected var _tv9779:_xl8523;
      
      protected var logs:_qn13596;
      
      private var _ju13599:int;
      
      private var _xs8104:int;
      
      private var _ll5517:_qm1392;
      
      public function _qs5969(param1:_xl8523)
      {
         super();
         this.logs = _qn13596.getInstance();
         this._jd12664 = _ai7182;
         this._tv9779 = param1;
         this._tv9779.addEventListener(_gh11441._eb9995,this._bw11981);
         this._xs8104 = _hv12530.getInstance()._jn11596;
         this._ll5517 = _hv12530.getInstance().colors;
      }
      
      public function init(param1:Object = null) : void
      {
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
         this._tv9779.removeEventListener(_gh11441._eb9995,this._bw11981);
         if(_hv12530.getInstance()._jn11596 != this._xs8104)
         {
            _hv12530.getInstance()._jn11596 = this._xs8104;
         }
         if(this._ll5517 != null && _hv12530.getInstance().colors != this._ll5517)
         {
            _hv12530.getInstance().colors = this._ll5517;
         }
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
         return this._tv9779;
      }
      
      public function set _ud1642(param1:_bi12161) : void
      {
         this._tv9779 = _xl8523(param1);
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
      }
   }
}

