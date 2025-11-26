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
      
      public static const _yj12760:String = "addBoombangClicked";
      
      private var _hh12387:Array;
      
      private var _kw12606:ComponentsView;
      
      private var _lt1520:ComponentsView;
      
      private var _yu5455:ComponentsView;
      
      private var _tx5899:MovieClip;
      
      private var _mt1519:Array;
      
      private var _pb10668:Boolean = false;
      
      private var _yn6231:Object;
      
      private var _ti14296:DatatypesModel = null;
      
      public function EditconnectionsModel(param1:Object, param2:MovieClip, param3:String)
      {
         var _loc4_:DatatypesModel = null;
         this._hh12387 = [DatatypesModel._to2262.label,DatatypesModel._xt5593.label];
         super(param2,param3);
         this._yn6231 = param1;
         PacketBuilder._xo2736(MessageTypeConstants._ai13635,this._sk542);
         this._kw12606 = new ComponentsView(_xo6614["editButton"],"button.edit");
         this._kw12606.addEventListener(MouseEvent.CLICK,this._pr14896,false,0,true);
         this._tx5899 = _xo6614["confirmationBlock"] as MovieClip;
         this._tx5899.visible = false;
         this._lt1520 = new ComponentsView(this._tx5899["confirmBtn"],"button.accept");
         this._lt1520.addEventListener(MouseEvent.CLICK,this._he7528,false,0,true);
         this._yu5455 = new ComponentsView(this._tx5899["dontConfirmBtn"],"button.cancel");
         this._yu5455.addEventListener(MouseEvent.CLICK,this._kb9514,false,0,true);
         this._mt1519 = new Array();
         for each(_loc4_ in DatatypesModel._dy13189)
         {
            if(_loc4_._ha11838)
            {
               var _loc5_:Boolean = Boolean(CoreModel.data._tf16034(_loc4_));
               var _loc6_:MovieClip = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("commonLibrary.swf",_loc4_.name + "Button") as MovieClip;
               var _loc7_:ComponentsModel = new EditconnectionsModel(null,_loc4_,"");
               _loc7_.addEventListener(MouseEvent.CLICK,this._at15469,false,0,true);
               this._mt1519[_loc4_.label] = new Object();
               this._mt1519[_loc4_.label]["view"] = null;
               this._mt1519[_loc4_.label]["controller"] = null;
               this._mt1519[_loc4_.label]["isActive"] = false;
               this._mt1519[_loc4_.label]["network"] = _loc4_;
               addChild(null);
            }
         }
         this._ka12681();
      }
      
      override public function destroy() : void
      {
         var _loc1_:Object = null;
         super.destroy();
         if(this._kw12606)
         {
            this._kw12606.removeEventListener(MouseEvent.CLICK,this._pr14896);
         }
         PacketBuilder._mw12849(MessageTypeConstants._ai13635,this._sk542);
         for each(_loc1_ in this._mt1519)
         {
            (_loc1_["controller"] as ComponentsModel).removeEventListener(MouseEvent.CLICK,this._at15469);
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
      
      public function _yd4104(param1:DatatypesModel) : void
      {
         var _loc2_:String = CoreModel._mn8930._ad13455("windows.editConnections.removeConfirmation",param1.name);
         UtilsUtils._xl9503(this._tx5899["areYouSure"]["txt"] as TextField,_loc2_);
      }
      
      private function _sk542(param1:NetworkEventWrapper) : void
      {
         var _loc2_:DatatypesModel = null;
         var _loc3_:int = param1.flags[1] as int;
         var _loc4_:int = int(param1.items[0]);
         switch(param1.items[1])
         {
            case "0":
               _loc2_ = DatatypesModel._to2262;
               break;
            case "1":
               _loc2_ = DatatypesModel._xt5593;
               break;
            default:
               throw new Error("Unknown social network type: " + param1.items[1]);
         }
         var _loc5_:Object = this._mt1519[_loc2_.label];
         if(_loc3_ == MessageTypeConstants._uc3668)
         {
            if(_loc4_ == PacketBuilder._ad11893)
            {
               _loc5_["isActive"] = false;
               CoreModel.data._fd11666(_loc5_["network"],false);
            }
            else
            {
               (_loc5_["controller"] as ComponentsModel).enabled = true;
               (_loc5_["controller"] as ComponentsModel)._dx15770 = false;
            }
            this._pb10668 = false;
            this._ka12681();
         }
      }
      
      protected function _pr14896(param1:MouseEvent) : void
      {
         this._pb10668 = !this._pb10668;
         this._ka12681();
      }
      
      protected function _kb9514(param1:MouseEvent) : void
      {
         this._ti14296 = null;
         this._ka12681();
      }
      
      protected function _he7528(param1:MouseEvent) : void
      {
         (this._mt1519[this._ti14296.label]["controller"] as ComponentsModel)._jr5664(ComponentsModel._xe2976);
         CommunicationsModel._dt3977(this._ti14296);
         this._ti14296 = null;
         this._ka12681();
      }
      
      protected function _at15469(param1:MouseEvent) : void
      {
         var _loc2_:Object = this._mt1519[(param1.target as ComponentsModel)._jc262.label];
         if(_loc2_["isActive"] as Boolean)
         {
            if(this._pb10668)
            {
               this._ti14296 = _loc2_["network"] as DatatypesModel;
               this._ka12681();
               this._pb10668 = false;
            }
         }
         else if(_loc2_["network"] as DatatypesModel == DatatypesModel._to2262)
         {
            _nk11935(_yj12760);
         }
         else
         {
            (_loc2_["controller"] as ComponentsModel)._jr5664(ComponentsModel._xe2976);
            (_loc2_["network"] as DatatypesModel)._lc5739._wc542(this._yn6231,this._my2421);
         }
      }
      
      private function _my2421(param1:DatatypesModel, param2:Boolean) : void
      {
         var _loc3_:Object = this._mt1519[param1.label];
         if(param2)
         {
            _loc3_["isActive"] = true;
            CoreModel.data._fd11666(param1,true);
         }
         else
         {
            (_loc3_["controller"] as ComponentsModel).enabled = true;
            if(param1 == DatatypesModel._xt5593)
            {
               (_loc3_["controller"] as ComponentsModel)._jr5664(ComponentsModel._if7748,"windows.editConnections.facebookAlreadyUsed");
            }
         }
         this._pb10668 = false;
         this._ka12681();
      }
      
      private function _ka12681() : void
      {
         var _loc1_:Object = null;
         var _loc2_:MovieClip = null;
         var _loc3_:EditconnectionsModel = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < this._hh12387.length)
         {
            _loc1_ = this._mt1519[this._hh12387[_loc6_]];
            _loc2_ = _loc1_["view"] as MovieClip;
            _loc3_ = _loc1_["controller"] as EditconnectionsModel;
            if(_loc1_["isActive"] as Boolean)
            {
               _loc2_.x = 10 + 55 * _loc4_++;
               _loc2_.y = 65;
               _loc3_._cj1107 = CoreModel._mn8930._ad13455("windows.editConnections.removeNetwork",(_loc1_["network"] as DatatypesModel).name);
               if(_loc1_["network"] as DatatypesModel == DatatypesModel._to2262)
               {
                  _loc3_._dx15770 = false;
                  _loc3_.enabled = false;
               }
               else
               {
                  _loc3_._dx15770 = this._pb10668;
                  _loc3_.enabled = this._pb10668;
               }
            }
            else
            {
               _loc3_._cj1107 = CoreModel._mn8930._ad13455("windows.editConnections.addNetwork",(_loc1_["network"] as DatatypesModel).name);
               _loc2_.x = 10 + 55 * _loc5_++;
               _loc2_.y = 200;
               _loc3_.enabled = true;
               _loc3_._dx15770 = false;
            }
            _loc6_++;
         }
         this._kw12606.visible = this._kw12606.enabled = _loc4_ > 1;
         this._kw12606.text = this._pb10668 ? "button.cancel" : "button.edit";
         this._tx5899.visible = this._ti14296 != null;
         if(this._ti14296 != null)
         {
            this._yd4104(this._ti14296);
         }
      }
   }
}

