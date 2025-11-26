package src.tv.boombang.application.bpad.gui.component
{
   import flash.display.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.levelup.*;
   import src.tv.boombang.core.datatypes.notifications.*;
   
   public class _yw4024 extends MovieClip implements _jk15536
   {
      
      private var _id:int;
      
      private var _gn930:_bw12046;
      
      private var _ia2984:MovieClip;
      
      private var _data:Array;
      
      public function _yw4024(param1:Array)
      {
         super();
         this._gn930 = _bw12046._ob13942(param1[0]);
         this._id = param1[1];
         this._data = new Array();
         this._data[0] = this._gn930;
         this._data[1] = this._id;
         this._data[2] = "";
         this._data[3] = "";
         this._data[4] = "";
         var _loc2_:int = 2;
         while(_loc2_ < param1.length)
         {
            this._data.push(param1[_loc2_]);
            _loc2_++;
         }
         switch(this._gn930)
         {
            case _bw12046._fk12602:
               this._ia2984 = new _od3062(new _tq8281(this._data)) as MovieClip;
               break;
            case _bw12046._qy2384:
               this._ia2984 = new _wa6793(this._data) as MovieClip;
               break;
            case _bw12046._ww14078:
               this._ia2984 = new _if12685(this._data) as MovieClip;
         }
         addChild(this._ia2984);
      }
      
      public function destroy() : void
      {
         if(this._ia2984)
         {
            removeChild(this._ia2984);
            this._ia2984.destroy();
            this._ia2984 = null;
         }
      }
   }
}

