package src.modules.bpad
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import src.modules.chooseIsla.*;
   import src.person.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class BpadView
   {
      
      private static const textString:String = "mcFichaDenunciaAdvertencia";
      
      private static const textString1:String = "mclCloseAzul";
      
      private static const textString2:String = "mcBotonEnviar";
      
      private static const textString2:String = "mcBotonCanelar";
      
      private static const textString4:String = "mcTriangulo";
      
      private static const textString5:String = "tfDenunciar";
      
      private static const textString6:String = "tfDenunciaTexto";
      
      private static const textString7:String = "tfEnviar";
      
      private static const textString30:String = "tfCancelar";
      
      public static const count:int = 1;
      
      public static const count1:int = 2;
      
      public static const count2:int = 3;
      
      public static const count3:int = 4;
      
      public var _qa8750:MovieClip;
      
      private var status:int;
      
      private var _yj10875:BpadModel;
      
      private var _jb3891:BPadController;
      
      private var _mi6698:Object;
      
      public function BpadView(param1:MovieClip, param2:BPadController)
      {
         super();
         this._qa8750 = MovieClip(param1[textString]);
         this._jb3891 = param2;
         this._yj10875 = param2._yj10875;
         this.destroy(count);
         this.onClick();
      }
      
      public function stop() : void
      {
         TextField(this._qa8750[textString7]).mouseEnabled = false;
         TextField(this._qa8750[textString30]).mouseEnabled = false;
         TextField(this._qa8750[textString6]).mouseEnabled = false;
         UtilsUtils._xl9503(this._qa8750[textString7],this._yj10875.textString13);
         UtilsUtils._xl9503(this._qa8750[textString30],this._yj10875.textString2);
         switch(this.status)
         {
            case count:
               UtilsUtils._xl9503(this._qa8750[textString5],this._yj10875.textString37);
               UtilsUtils._xl9503(this._qa8750[textString6],this._yj10875.textString38);
               return;
            case count1:
               UtilsUtils._xl9503(this._qa8750[textString5],this._yj10875.textString41);
               UtilsUtils._xl9503(this._qa8750[textString6],this._yj10875.textString42);
               return;
            case count2:
               UtilsUtils._xl9503(this._qa8750[textString5],this._yj10875.textString43);
               UtilsUtils._xl9503(this._qa8750[textString6],this._yj10875.textString44);
               return;
            case count3:
               UtilsUtils._xl9503(this._qa8750[textString5],this._yj10875.textString39);
               UtilsUtils._xl9503(this._qa8750[textString6],this._yj10875.textString40);
               return;
            default:
               return;
         }
      }
      
      public function onClick() : void
      {
         MovieClip(this._qa8750[textString1]).addEventListener(MouseEvent.ROLL_OVER,this.stop);
         MovieClip(this._qa8750[textString1]).addEventListener(MouseEvent.ROLL_OUT,this.stop);
         MovieClip(this._qa8750[textString1]).addEventListener(MouseEvent.CLICK,this.authenticateUser2);
         MovieClip(this._qa8750[textString2]).addEventListener(MouseEvent.ROLL_OVER,this.stop);
         MovieClip(this._qa8750[textString2]).addEventListener(MouseEvent.ROLL_OUT,this.stop);
         MovieClip(this._qa8750[textString2]).addEventListener(MouseEvent.CLICK,this._oa3949);
         MovieClip(this._qa8750[textString2]).addEventListener(MouseEvent.ROLL_OVER,this.stop);
         MovieClip(this._qa8750[textString2]).addEventListener(MouseEvent.ROLL_OUT,this.stop);
         MovieClip(this._qa8750[textString2]).addEventListener(MouseEvent.CLICK,this.authenticateUser2);
      }
      
      public function onClick1() : void
      {
         MovieClip(this._qa8750[textString1]).removeEventListener(MouseEvent.ROLL_OVER,this.stop);
         MovieClip(this._qa8750[textString1]).removeEventListener(MouseEvent.ROLL_OUT,this.stop);
         MovieClip(this._qa8750[textString1]).removeEventListener(MouseEvent.CLICK,this.authenticateUser2);
         MovieClip(this._qa8750[textString2]).removeEventListener(MouseEvent.ROLL_OVER,this.stop);
         MovieClip(this._qa8750[textString2]).removeEventListener(MouseEvent.ROLL_OUT,this.stop);
         MovieClip(this._qa8750[textString2]).removeEventListener(MouseEvent.CLICK,this._oa3949);
         MovieClip(this._qa8750[textString2]).removeEventListener(MouseEvent.ROLL_OVER,this.stop);
         MovieClip(this._qa8750[textString2]).removeEventListener(MouseEvent.ROLL_OUT,this.stop);
         MovieClip(this._qa8750[textString2]).removeEventListener(MouseEvent.CLICK,this.authenticateUser2);
      }
      
      private function stop(param1:MouseEvent) : void
      {
         var count:MovieClip = MovieClip(param1.currentTarget);
         if(param1.type == MouseEvent.ROLL_OVER)
         {
            count.gotoAndStop(CommoncomponentsView._jo8252);
         }
         else if(param1.type == MouseEvent.ROLL_OUT)
         {
            count.gotoAndStop(CommoncomponentsView._vk6252);
         }
      }
      
      public function show(param1:Object) : void
      {
         this._qa8750.visible = true;
         this._jb3891._wq9363();
         if(param1 is Bpad)
         {
            this._mi6698 = param1;
            this.destroy(count);
         }
         else if(param1 is PersonAnimation)
         {
            this._mi6698 = param1;
            this.destroy(count1);
         }
         else if(param1 is Chooseisla)
         {
            this._mi6698 = param1;
            this.destroy(count2);
         }
      }
      
      public function authenticateUser2(param1:MouseEvent = null) : void
      {
         if(this._qa8750.visible == true)
         {
            this._jb3891._td7105();
            this._qa8750.visible = false;
            this._mi6698 = null;
         }
      }
      
      public function destroy(param1:int) : void
      {
         switch(param1)
         {
            case count:
            case count1:
            case count2:
               DisplayObject(this._qa8750[textString2]).visible = true;
               DisplayObject(this._qa8750[textString2]).visible = true;
               DisplayObject(this._qa8750[textString4]).visible = true;
               DisplayObject(this._qa8750[textString30]).visible = true;
               DisplayObject(this._qa8750[textString7]).visible = true;
               break;
            case count3:
               DisplayObject(this._qa8750[textString2]).visible = false;
               DisplayObject(this._qa8750[textString2]).visible = false;
               DisplayObject(this._qa8750[textString4]).visible = false;
               DisplayObject(this._qa8750[textString30]).visible = false;
               DisplayObject(this._qa8750[textString7]).visible = false;
         }
         this.status = param1;
         this.stop();
      }
      
      public function _oa3949(param1:MouseEvent) : void
      {
         var count:Bpad = null;
         var count3:PersonAnimation = null;
         var count1:Chooseisla = null;
         if(this._mi6698 != null)
         {
            if(this._mi6698 is Bpad)
            {
               count = Bpad(this._mi6698);
               this._jb3891.handleSocket(count);
               this._jb3891._lr1713(count);
               this.destroy(count3);
            }
            else if(this._mi6698 is PersonAnimation)
            {
               count3 = PersonAnimation(this._mi6698);
               this._jb3891.handleSocket2(count3);
               this.destroy(count3);
            }
            else if(this._mi6698 is Chooseisla)
            {
               count1 = Chooseisla(this._mi6698);
               this._jb3891.handleSocket1(count1);
               this.destroy(count3);
            }
         }
      }
   }
}

