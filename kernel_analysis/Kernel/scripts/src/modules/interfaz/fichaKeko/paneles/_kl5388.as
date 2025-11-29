package src.modules.interfaz.fichaKeko.paneles
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import src.modules.interfaz.fichaKeko._kc6395;
   import src.utils.commonComponents._kn2732;
   
   public class _kl5388 extends _kn2732
   {
      
      private const _dt8961:String = "mcBaseTab";
      
      private const _gs2337:String = "mcIcoTab";
      
      private var _cw12912:_kc6395;
      
      private var _sx9369:ColorTransform;
      
      private var _lu8820:Object;
      
      private var _id:int;
      
      public function _kl5388(param1:int, param2:MovieClip, param3:_kc6395, param4:Function, param5:Function = null, param6:Function = null, param7:Object = null)
      {
         this._id = param1;
         this._lu8820 = param7;
         this._cw12912 = param3;
         this._sx9369 = new ColorTransform();
         super(param2,param4,param5,param6,"");
      }
      
      override protected function _xx13833(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case MouseEvent.ROLL_OUT:
               this._iv1460();
               this._mf3038(_ix10516);
               break;
            case MouseEvent.ROLL_OVER:
               this._ch1514();
               this._mf3038(_ct5529);
               break;
            case MouseEvent.MOUSE_DOWN:
               this._mf3038(_ec6387);
         }
         param1.stopImmediatePropagation();
      }
      
      override public function _ch1514() : void
      {
         this._sx9369.color = this._cw12912._mx10235;
         MovieClip(_pe16126[this._dt8961]).transform.colorTransform = this._sx9369;
         this._sx9369.color = 16777215;
         MovieClip(_pe16126[this._gs2337]).transform.colorTransform = this._sx9369;
      }
      
      override public function _iv1460() : void
      {
         this._sx9369.color = this._cw12912._mx10235;
         MovieClip(_pe16126[this._dt8961]).transform.colorTransform = this._sx9369;
         if(!selected)
         {
            this._sx9369.color = this._cw12912._sf7808;
            MovieClip(_pe16126[this._gs2337]).transform.colorTransform = this._sx9369;
         }
         else
         {
            this._sx9369.color = 16777215;
            MovieClip(_pe16126[this._gs2337]).transform.colorTransform = this._sx9369;
         }
      }
      
      public function _dn10392(param1:_kc6395) : void
      {
         this._cw12912 = param1;
         this._iv1460();
      }
      
      override public function set selected(param1:Boolean) : void
      {
         _selected = param1;
         if(param1)
         {
            this._ch1514();
         }
         else
         {
            this._iv1460();
         }
      }
      
      override protected function _mf3038(param1:Function) : void
      {
         if(param1 != null)
         {
            param1(this,this._lu8820);
         }
      }
      
      override public function destroy() : void
      {
         this._lu8820 = null;
         super.destroy();
      }
      
      public function get id() : int
      {
         return this._id;
      }
   }
}

