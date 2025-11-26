package src.utils.buttonsFichas
{
   import flash.display.*;
   import src.utils.*;
   import src.utils.commonComponents.CommoncomponentsView;
   
   public class ButtonsfichasView extends CommoncomponentsView
   {
      
      protected static const textString:String = "mcCapsula";
      
      public var _nf12735:uint;
      
      public var _sa14592:uint;
      
      private var _ts9847:MovieClip;
      
      public function ButtonsfichasView(param1:MovieClip, param2:Function, param3:String, param4:uint, param5:uint)
      {
         param1.visible = true;
         this._ts9847 = MovieClip(param1.getChildByName(textString));
         this._nf12735 = param4;
         this._sa14592 = param5;
         super(param1,param2,param3,false,null,null);
      }
      
      override public function stop() : void
      {
         StringUtils._ts14032(this._ts9847,this._nf12735);
      }
      
      override public function stop() : void
      {
         StringUtils._ts14032(this._ts9847,this._sa14592);
      }
   }
}

