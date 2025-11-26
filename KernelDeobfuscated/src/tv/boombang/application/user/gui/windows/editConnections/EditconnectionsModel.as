package src.tv.boombang.application.user.gui.windows.editConnections
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class EditconnectionsModel extends WindowsView
   {
      
      public static const textString:String = "addBoombangClicked";
      
      private var items:Array;
      
      private var _kw12606:ComponentsView;
      
      private var _lt1520:ComponentsView;
      
      private var _yu5455:ComponentsView;
      
      private var _tx5899:MovieClip;
      
      private var items1:Array;
      
      private var isEnabled:Boolean = false;
      
      private var _yn6231:Object;
      
      private var _ti14296:DatatypesModel = null;
      
      public function EditconnectionsModel(param1:Object, param2:MovieClip, param3:String)
      {
         var count1:DatatypesModel = null;
         this.items = [DatatypesModel._to2262.label,DatatypesModel._xt5593.label];
         super(param2,param3);
         this._yn6231 = param1;
         PacketBuilder.handleSocket(MessageTypeConstants.count28,this.update);
         this._kw12606 = new ComponentsView(_xo6614["editButton"],"button.edit");
         this._kw12606.addEventListener(MouseEvent.CLICK,this._pr14896,false,0,true);
         this._tx5899 = _xo6614["confirmationBlock"] as MovieClip;
         this._tx5899.visible = false;
         this._lt1520 = new ComponentsView(this._tx5899["confirmBtn"],"button.accept");
         this._lt1520.addEventListener(MouseEvent.CLICK,this._he7528,false,0,true);
         this._yu5455 = new ComponentsView(this._tx5899["dontConfirmBtn"],"button.cancel");
         this._yu5455.addEventListener(MouseEvent.CLICK,this._kb9514,false,0,true);
         this.items1 = new Array();
         for each(count1 in DatatypesModel.items)
         {
            if(count1._ha11838)
            {
               var count2:Boolean = Boolean(CoreModel.data._tf16034(count1));
               var count7:MovieClip = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf",count1.name + "Button") as MovieClip;
               var items:ComponentsModel = new EditconnectionsModel(null,count1,"");
               items.addEventListener(MouseEvent.CLICK,this._at15469,false,0,true);
               this.items1[count1.label] = new Object();
               this.items1[count1.label]["view"] = null;
               this.items1[count1.label]["controller"] = null;
               this.items1[count1.label]["isActive"] = false;
               this.items1[count1.label]["network"] = count1;
               addChild(null);
            }
         }
         this.connect1();
      }
      
      override public function destroy() : void
      {
         var count2:Object = null;
         super.destroy();
         if(this._kw12606)
         {
            this._kw12606.removeEventListener(MouseEvent.CLICK,this._pr14896);
         }
         PacketBuilder.handleSocket1(MessageTypeConstants.count28,this.update);
         for each(count2 in this.items1)
         {
            (count2["controller"] as ComponentsModel).removeEventListener(MouseEvent.CLICK,this._at15469);
         }
      }
      
      public function set _hm5004(param1:String) : void
      {
         UtilsUtils._xl9503(_xo6614["usedConnectionMethods"]["txt"] as TextField,param1);
      }
      
      public function set _dw12784(param1:String) : void
      {
         UtilsUtils._xl9503(_xo6614["availableConnectionMethods"]["txt"] as TextField,param1);
      }
      
      public function connect(param1:DatatypesModel) : void
      {
         var count:String = CoreModel._mn8930.getString1("windows.editConnections.removeConfirmation",param1.name);
         UtilsUtils._xl9503(this._tx5899["areYouSure"]["txt"] as TextField,count);
      }
      
      private function update(param1:NetworkEventWrapper) : void
      {
         var count:DatatypesModel = null;
         var count3:int = param1.flags[1] as int;
         var count1:int = int(param1.items[0]);
         switch(param1.items[1])
         {
            case "0":
               count = DatatypesModel._to2262;
               break;
            case "1":
               count = DatatypesModel._xt5593;
               break;
            default:
               throw new Error("Unknown social network type: " + param1.items[1]);
         }
         var count2:Object = this.items1[count.label];
         if(count3 == MessageTypeConstants.count43)
         {
            if(count1 == PacketBuilder.count)
            {
               count2["isActive"] = false;
               CoreModel.data._fd11666(count2["network"],false);
            }
            else
            {
               (count2["controller"] as ComponentsModel).enabled = true;
               (count2["controller"] as ComponentsModel)._dx15770 = false;
            }
            this.isEnabled = false;
            this.connect1();
         }
      }
      
      protected function _pr14896(param1:MouseEvent) : void
      {
         this.isEnabled = !this.isEnabled;
         this.connect1();
      }
      
      protected function _kb9514(param1:MouseEvent) : void
      {
         this._ti14296 = null;
         this.connect1();
      }
      
      protected function _he7528(param1:MouseEvent) : void
      {
         (this.items1[this._ti14296.label]["controller"] as ComponentsModel).destroy(ComponentsModel.textString6);
         CommunicationsModel._dt3977(this._ti14296);
         this._ti14296 = null;
         this.connect1();
      }
      
      protected function _at15469(param1:MouseEvent) : void
      {
         var count:Object = this.items1[(param1.target as ComponentsModel)._jc262.label];
         if(count["isActive"] as Boolean)
         {
            if(this.isEnabled)
            {
               this._ti14296 = count["network"] as DatatypesModel;
               this.connect1();
               this.isEnabled = false;
            }
         }
         else if(count["network"] as DatatypesModel == DatatypesModel._to2262)
         {
            _nk11935(textString);
         }
         else
         {
            (count["controller"] as ComponentsModel).destroy(ComponentsModel.textString6);
            (count["network"] as DatatypesModel)._lc5739._wc542(this._yn6231,this._my2421);
         }
      }
      
      private function _my2421(param1:DatatypesModel, param2:Boolean) : void
      {
         var count3:Object = this.items1[param1.label];
         if(param2)
         {
            count3["isActive"] = true;
            CoreModel.data._fd11666(param1,true);
         }
         else
         {
            (count3["controller"] as ComponentsModel).enabled = true;
            if(param1 == DatatypesModel._xt5593)
            {
               (count3["controller"] as ComponentsModel).destroy(ComponentsModel.textString5,"windows.editConnections.facebookAlreadyUsed");
            }
         }
         this.isEnabled = false;
         this.connect1();
      }
      
      private function connect1() : void
      {
         var count2:Object = null;
         var count:MovieClip = null;
         var count3:EditconnectionsModel = null;
         var count1:int = 0;
         var count2:int = 0;
         var count7:int = 0;
         while(count7 < this.items.length)
         {
            count2 = this.items1[this.items[count7]];
            count = count2["view"] as MovieClip;
            count3 = count2["controller"] as EditconnectionsModel;
            if(count2["isActive"] as Boolean)
            {
               count.x = 10 + 55 * count1++;
               count.y = 65;
               count3._cj1107 = CoreModel._mn8930.getString1("windows.editConnections.removeNetwork",(count2["network"] as DatatypesModel).name);
               if(count2["network"] as DatatypesModel == DatatypesModel._to2262)
               {
                  count3._dx15770 = false;
                  count3.enabled = false;
               }
               else
               {
                  count3._dx15770 = this.isEnabled;
                  count3.enabled = this.isEnabled;
               }
            }
            else
            {
               count3._cj1107 = CoreModel._mn8930.getString1("windows.editConnections.addNetwork",(count2["network"] as DatatypesModel).name);
               count.x = 10 + 55 * count2++;
               count.y = 200;
               count3.enabled = true;
               count3._dx15770 = false;
            }
            count7++;
         }
         this._kw12606.visible = this._kw12606.enabled = count1 > 1;
         this._kw12606.text = this.isEnabled ? "button.cancel" : "button.edit";
         this._tx5899.visible = this._ti14296 != null;
         if(this._ti14296 != null)
         {
            this.connect(this._ti14296);
         }
      }
   }
}

