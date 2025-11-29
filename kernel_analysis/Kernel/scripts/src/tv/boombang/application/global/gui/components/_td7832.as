package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import flash.events.MouseEvent;
   import src.tv.boombang.application.social.datatypes._sw5071;
   import src.tv.boombang.application.social.datatypes._vw5755;
   
   public class _td7832 extends _qy9375
   {
      
      public static const STATUS_OK:String = "statusOk";
      
      public static const _if7748:String = "statusWrong";
      
      public static const _xe2976:String = "statusChecking";
      
      public static const _ad6139:String = "statusStandBy";
      
      private static const _qk12607:String = "_sending";
      
      private static const _im8185:String = "_ok";
      
      protected var _hm13336:Boolean;
      
      protected var _eu12689:_sw5071;
      
      protected var _gr14142:_vw5755;
      
      protected var _ad3566:ToolTip;
      
      protected var _np10614:ToolTip;
      
      protected var _jl10939:MovieClip;
      
      public function _td7832(param1:MovieClip, param2:_sw5071, param3:_vw5755, param4:String)
      {
         this._eu12689 = param2;
         this._gr14142 = param3;
         this._ad3566 = new ToolTip(param1.getChildByName("nameTooltip") as MovieClip,ToolTip._ud6350);
         this._ad3566.txt = param4;
         this._ad3566.visible = false;
         this._jl10939 = param1.getChildByName("stroke") as MovieClip;
         this._np10614 = new ToolTip(param1.getChildByName("errorTooltip") as MovieClip);
         this._jr5664(_ad6139);
         this._dx15770 = false;
         super(param1);
         this.mouseChildren = false;
      }
      
      override protected function _rt5195(param1:MouseEvent) : void
      {
         this._ad3566.visible = true;
         super._rt5195(param1);
      }
      
      override protected function _qu5290(param1:MouseEvent) : void
      {
         this._ad3566.visible = false;
         super._qu5290(param1);
      }
      
      public function get _jc262() : _sw5071
      {
         return this._eu12689;
      }
      
      public function get _ht15222() : _vw5755
      {
         return this._gr14142;
      }
      
      public function set _dx15770(param1:Boolean) : void
      {
         this._hm13336 = param1;
         this._jl10939.visible = this._hm13336;
      }
      
      public function get _dx15770() : Boolean
      {
         return this._hm13336;
      }
      
      public function set _cj1107(param1:String) : void
      {
         this._ad3566.txt = param1;
      }
      
      public function _jr5664(param1:String, param2:String = "") : void
      {
         this._np10614.visible = false;
         switch(param1)
         {
            case STATUS_OK:
               this._tr14879();
               return;
            case _if7748:
               this._np10614.txt = param2;
               this._np10614.visible = true;
               return;
            case _xe2976:
               this._ac1899();
               return;
            case _ad6139:
               return;
            default:
               return;
         }
      }
      
      private function _ac1899() : void
      {
         this.enabled = false;
         this._xo6614.alpha = 1;
         this._xo6614.gotoAndStop(_qk12607);
      }
      
      private function _tr14879() : void
      {
         this.enabled = false;
         this._xo6614.alpha = 1;
         this._xo6614.gotoAndStop(_im8185);
      }
   }
}

