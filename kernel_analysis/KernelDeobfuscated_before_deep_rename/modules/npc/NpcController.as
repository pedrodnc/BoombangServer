package src.modules.npc
{
   import flash.events.Event;
   import flash.utils.*;
   import src.logs.*;
   import src.modules.ModuleLoader;
   import src.modules.npc.typeNpc.*;
   import src.multiuser.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.datatypes.movement.*;
   import src.tv.boombang.core.datatypes.npc.*;
   
   public class NPCController
   {
      
      private var _qf14225:Dictionary;
      
      private var _ue14215:NPCTypeDefinitions;
      
      private var _mi9531:Logger;
      
      public function NPCController(param1:NPCTypeDefinitions)
      {
         super();
         this._ue14215 = param1;
         this._ue14215._ov13431.addEventListener(NPCEvents._ag4085,this._bw11981,false,0,true);
         this._mi9531 = Logger.getInstance();
         this._qf14225 = new Dictionary();
         PacketBuilder._xo2736(MessageTypeConstants._de13186,this._at6638);
         PacketBuilder._xo2736(MessageTypeConstants._rr13175,this._wk2211);
      }
      
      public static function _qm6824(param1:Array) : Array
      {
         var _loc2_:Array = null;
         var _loc3_:NpcModel = null;
         var _loc6_:int = 0;
         var _loc4_:Array = new Array();
         var _loc5_:int = int(param1.shift());
         while(_loc6_ < _loc5_)
         {
            _loc2_ = SocketManager._go4983(param1.shift());
            _loc3_ = NpcModel.parse(_loc2_);
            _loc4_.push(_loc3_);
            _loc6_++;
         }
         return _loc4_;
      }
      
      public function _at6638(param1:NetworkEventWrapper) : void
      {
         var _loc2_:MovementModel = null;
         var _loc3_:Array = param1.items.concat();
         while(true)
         {
            _loc2_ = MovementModel.parse(_loc3_);
            if(_loc2_ == null)
            {
               break;
            }
            if(_loc2_._sh1968 == MovementModel._xr9706)
            {
               this._qf14225[_loc2_.id].move(_loc2_);
            }
         }
      }
      
      public function _wk2211(param1:NetworkEventWrapper) : void
      {
         var _loc2_:Array = param1.frame;
         var _loc3_:DatatypesModel = DatatypesModel._ob13942(_loc2_[2]);
         var _loc4_:int = int(_loc2_[3]);
         var _loc5_:int = int(_loc2_[4]);
         var _loc6_:int = int(_loc2_[5]);
         var _loc7_:DatatypesModel = DatatypesModel._ob13942(_loc2_[6]);
         var _loc8_:int = int(_loc2_[7]);
         var _loc9_:int = int(_loc2_[8]);
         var _loc10_:int = int(_loc2_[9]);
         if(_loc3_ == DatatypesModel._ma12303)
         {
            this._qf14225[_loc4_]._wr14763(_loc5_,_loc6_,_loc9_);
         }
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Array = null;
         var _loc7_:NpcModel = null;
         _loc2_ = param1._lv9976;
         var _loc8_:uint = uint(String(_loc2_[1]).charCodeAt(0));
         switch(_loc8_)
         {
            case NpcController._xm6969:
               if(_loc2_.length < 3)
               {
                  this._mi9531._kp3815(new Logs(Logger._ny10327,"NpcManager.reciebeMsg SUBCODE_QUITAR_NPC ",_loc2_.toString()));
                  return;
               }
               _loc2_.shift();
               _loc2_.shift();
               _loc3_ = int(_loc2_.shift());
               this._ti4155(_loc3_);
               return;
               break;
            case NpcController._yl844:
               if(_loc2_.length < 3)
               {
                  this._mi9531._kp3815(new Logs(Logger._ny10327,"NpcManager.reciebeMsg SUBCODE_PONER_NPC ",_loc2_.toString()));
                  return;
               }
               _loc2_.shift();
               _loc2_.shift();
               _loc6_ = SocketManager._go4983(_loc2_.shift());
               _loc7_ = NpcModel.parse(_loc6_);
               this._qa6888(_loc7_);
               return;
               break;
            case NpcController._pj8314:
               if(_loc2_.length < 5)
               {
                  this._mi9531._kp3815(new Logs(Logger._ny10327,"NpcManager.reciebeMsg SUBCODE_CHAT_PUBLICO ",_loc2_.toString()));
                  return;
               }
               _loc2_.shift();
               _loc2_.shift();
               _loc3_ = int(_loc2_.shift());
               _loc4_ = _loc2_.shift();
               _loc5_ = int(_loc2_.shift());
               this._sh14185(_loc3_,_loc4_,_loc5_);
               return;
               break;
            case NpcController._gx9686:
               if(_loc2_.length < 5)
               {
                  this._mi9531._kp3815(new Logs(Logger._ny10327,"NpcManager.reciebeMsg SUBCODE_CHAT_PRIVADO ",_loc2_.toString()));
                  return;
               }
               _loc2_.shift();
               _loc2_.shift();
               _loc3_ = int(_loc2_.shift());
               _loc4_ = _loc2_.shift();
               _loc5_ = int(_loc2_.shift());
               this._sh14185(_loc3_,_loc4_,_loc5_);
               return;
               break;
            default:
               return;
         }
      }
      
      private function _sh14185(param1:int, param2:String, param3:int) : void
      {
         if(this._qf14225[param1])
         {
            this._qf14225[param1]._mi8865(param2,param3);
         }
      }
      
      public function _st14821(param1:Array) : void
      {
         var _loc2_:NpcModel = null;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = NpcModel(param1[_loc3_]);
            this._qa6888(_loc2_);
            _loc3_++;
         }
      }
      
      public function _qa6888(param1:NpcModel) : void
      {
         if(this._qf14225[param1._oq4159])
         {
            return;
         }
         var _loc2_:TypenpcModel = TypenpcModel._ms8941(param1,this._ue14215);
         _loc2_.addEventListener(TypenpcModel._ns4729,this._go6957,false,0,true);
         if(_loc2_)
         {
            this._qf14225[param1._oq4159] = _loc2_;
         }
      }
      
      private function _go6957(param1:Event) : void
      {
         this._ue14215._ff13945();
      }
      
      public function _ti4155(param1:int) : void
      {
         if(this._qf14225[param1])
         {
            this._qf14225[param1].removeEventListener(TypenpcModel._ns4729,this._go6957);
            this._qf14225[param1].destroy();
            delete this._qf14225[param1];
            if(this._qf14225[param1])
            {
               this._qf14225[param1] = null;
            }
         }
      }
      
      public function loop() : void
      {
         var _loc1_:TypenpcModel = null;
         for each(_loc1_ in this._qf14225)
         {
            _loc1_.loop();
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:TypenpcModel = null;
         this._ue14215._ov13431.removeEventListener(NPCEvents._ag4085,this._bw11981);
         PacketBuilder._mw12849(MessageTypeConstants._de13186,this._at6638);
         for each(_loc1_ in this._qf14225)
         {
            if(_loc1_ != null)
            {
               this._ti4155(_loc1_._of6691());
            }
         }
         this._qf14225 = null;
      }
   }
}

