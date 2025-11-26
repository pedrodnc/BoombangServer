package src.modules.antitimos.fichas
{
   import flash.display.MovieClip;
   import src.modules.chooseScene._nw11343;
   import src.modules.chooseScene.panelMariquita._ty11551;
   import src.utils.commonComponents.*;
   import src.utils.fichas._ox15379;
   
   public class _wd4266 extends _yo4865
   {
      
      protected static const _vh2163:String = "mcBotonDerecha";
      
      protected static const _ug10229:String = "mcBotonIzquierda";
      
      protected var _om965:_qo7568;
      
      protected var _on14039:_qo7568;
      
      protected var _rw10990:Function;
      
      protected var _qv7943:Function;
      
      protected var _op4848:String;
      
      protected var _kr4823:String;
      
      public function _wd4266(param1:MovieClip, param2:_ox15379, param3:_ty11551, param4:_nw11343, param5:Function = null, param6:String = "", param7:Function = null, param8:String = "", param9:Function = null)
      {
         super(param1,param2,param3,param4,param9);
         this._rw10990 = param5;
         this._qv7943 = param7;
         this._op4848 = param6;
         this._kr4823 = param8;
         this.init();
      }
      
      public function init() : void
      {
         if(_cw11838[_vh2163] != null)
         {
            this._om965 = new _qo7568(_cw11838[_vh2163],this._rw10990,this._op4848);
         }
         if(_cw11838[_ug10229] != null)
         {
            this._on14039 = new _qo7568(_cw11838[_ug10229],this._qv7943,this._kr4823);
         }
      }
      
      override public function destroy() : void
      {
         if(this._om965 != null)
         {
            this._om965.destroy();
            this._om965 = null;
         }
         if(this._on14039 != null)
         {
            this._on14039.destroy();
            this._on14039 = null;
         }
         super.destroy();
      }
      
      override public function _db5584(param1:int, param2:int) : Boolean
      {
         return super._db5584(param1,param2);
      }
      
      override public function _wo15393() : void
      {
         if(this._om965 != null)
         {
            this._om965._db5584();
         }
         if(this._on14039 != null)
         {
            this._on14039._db5584();
         }
      }
      
      override public function _qn153() : void
      {
         if(this._om965 != null)
         {
            this._om965._hu12389();
         }
         if(this._on14039 != null)
         {
            this._on14039._hu12389();
         }
      }
   }
}

