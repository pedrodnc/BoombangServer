package src.tv.boombang.application.global.gui.components
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _wq11080 extends _rn8936 implements _jk15536
   {
      
      private var _xo6614:MovieClip;
      
      private var _ie384:Number;
      
      private var _mt2321:Number;
      
      private var _position:Boolean;
      
      public function _wq11080(param1:Number = 0.5, param2:Number = 0.5, param3:Boolean = true)
      {
         super();
         this._position = param3;
         this._ie384 = param1;
         this._mt2321 = param2;
         (_lh7543.get(_vy3822) as _vy3822)._vv13029(["commonLibrary.swf"],this._xn8898);
      }
      
      public function _xn8898() : void
      {
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","Process");
         this._xo6614.visible = false;
         addChild(this._xo6614);
         if(this._position)
         {
            _np5723 = new Point(this._ie384,this._mt2321);
         }
         this._xo6614.visible = true;
      }
      
      override public function destroy() : void
      {
         if(this._xo6614)
         {
            if(this.contains(this._xo6614))
            {
               this.removeChild(this._xo6614);
               this._xo6614 = null;
            }
         }
         super.destroy();
      }
   }
}

