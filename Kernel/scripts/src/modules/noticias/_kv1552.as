package src.modules.noticias
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   
   public class _kv1552 extends EventDispatcher
   {
      
      private static const _fn2465:String = "Cargando";
      
      private static const _jg11793:String = "Mostrar";
      
      private static const _tn14835:String = "mcContenedorImagen";
      
      private var _wi10409:Loader;
      
      private var _xe6539:MovieClip;
      
      private var _qm2909:DisplayObject;
      
      public function _kv1552()
      {
         super();
      }
      
      public function _dc1122(param1:String, param2:MovieClip) : void
      {
         this._wi10409 = new Loader();
         var _loc3_:LoaderContext = new LoaderContext();
         _loc3_.checkPolicyFile = false;
         this._wi10409.contentLoaderInfo.addEventListener(Event.COMPLETE,this._lx5179);
         this._wi10409.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this._wh14566);
         this._xe6539 = param2;
         this._wi10409.load(new URLRequest(param1),_loc3_);
      }
      
      private function _lx5179(param1:Event) : void
      {
         this._qm2909 = Loader(param1.target.loader);
         if(this._qm2909 != null)
         {
            this._qm2909.x -= this._qm2909.width / 2;
            this._qm2909.y -= this._qm2909.height / 2;
            this._xe6539[_tn14835].addChild(this._qm2909);
            this._xe6539.gotoAndStop(_jg11793);
         }
      }
      
      private function _wh14566(param1:IOErrorEvent) : void
      {
      }
      
      private function _eh564(param1:SecurityError) : void
      {
      }
      
      public function destroy() : void
      {
         if(this._wi10409 != null)
         {
            this._wi10409.contentLoaderInfo.removeEventListener(Event.COMPLETE,this._lx5179);
            this._wi10409 = null;
         }
         if(this._xe6539 != null && this._qm2909 != null)
         {
            this._xe6539[_tn14835].removeChild(this._qm2909);
            this._xe6539.gotoAndStop(_fn2465);
         }
      }
   }
}

