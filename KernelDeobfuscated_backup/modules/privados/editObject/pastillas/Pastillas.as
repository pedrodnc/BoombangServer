package src.modules.privados.editObject.pastillas
{
   import flash.display.MovieClip;
   import flash.text.*;
   
   public class _di3958 extends MovieClip
   {
      
      public static const _lu15683:String = "txtLabel";
      
      public static const _pm12491:String = "txtLabelNum";
      
      protected var _qh36:MovieClip;
      
      protected var id:int;
      
      protected var _jr1130:int;
      
      protected var _mx11236:Function;
      
      protected var label:TextField;
      
      protected var _wr9563:TextField;
      
      public function _di3958(param1:int, param2:MovieClip, param3:int, param4:Function)
      {
         super();
         this._qh36 = param2;
         this.id = param1;
         this._jr1130 = param3;
         this._mx11236 = param4;
         this.label = TextField(param2[_lu15683]);
         this._wr9563 = TextField(param2[_pm12491]);
         addChild(param2);
      }
      
      public function destroy() : void
      {
      }
   }
}

