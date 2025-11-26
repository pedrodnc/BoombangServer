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
         this._ue14215._ov13431.addEventListener(NPCEvents.textString,this.authenticateUser,false,0,true);
         this._mi9531 = Logger.getInstance();
         this._qf14225 = new Dictionary();
         PacketBuilder.handleSocket(MessageTypeConstants.count57,this.parseData);
         PacketBuilder.handleSocket(MessageTypeConstants.count90,this._wk2211);
      }
      
      public static function handleSocket(param1:Array) : Array
      {
         var count:Array = null;
         var count3:NpcModel = null;
         var count7:int = 0;
         var count1:Array = new Array();
         var count2:int = int(param1.shift());
         while(count7 < count2)
         {
            count = SocketManager.getList1(param1.shift());
            count3 = NpcModel.parse(count);
            count1.push(count3);
            count7++;
         }
         return count1;
      }
      
      public function parseData(param1:NetworkEventWrapper) : void
      {
         var count:MovementModel = null;
         var count3:Array = param1.items.concat();
         while(true)
         {
            count = MovementModel.parse(count3);
            if(count == null)
            {
               break;
            }
            if(count._sh1968 == MovementModel._xr9706)
            {
               this._qf14225[count.id].move(count);
            }
         }
      }
      
      public function _wk2211(param1:NetworkEventWrapper) : void
      {
         var count:Array = param1.frame;
         var count3:DatatypesModel = DatatypesModel._ob13942(count[2]);
         var count1:int = int(count[3]);
         var count2:int = int(count[4]);
         var count7:int = int(count[5]);
         var items:DatatypesModel = DatatypesModel._ob13942(count[6]);
         var count8:int = int(count[7]);
         var count6:int = int(count[8]);
         var count:int = int(count[9]);
         if(count3 == DatatypesModel._ma12303)
         {
            this._qf14225[count1]._wr14763(count2,count7,count6);
         }
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:Array = null;
         var count3:int = 0;
         var count1:String = null;
         var count2:int = 0;
         var count7:Array = null;
         var items:NpcModel = null;
         count = param1.items;
         var count8:uint = uint(String(count[1]).charCodeAt(0));
         switch(count8)
         {
            case NpcController._xm6969:
               if(count.length < 3)
               {
                  this._mi9531._kp3815(new Logs(Logger.count2,"NpcManager.reciebeMsg SUBCODE_QUITAR_NPC ",count.toString()));
                  return;
               }
               count.shift();
               count.shift();
               count3 = int(count.shift());
               this.move(count3);
               return;
               break;
            case NpcController._yl844:
               if(count.length < 3)
               {
                  this._mi9531._kp3815(new Logs(Logger.count2,"NpcManager.reciebeMsg SUBCODE_PONER_NPC ",count.toString()));
                  return;
               }
               count.shift();
               count.shift();
               count7 = SocketManager.getList1(count.shift());
               items = NpcModel.parse(count7);
               this._qa6888(items);
               return;
               break;
            case NpcController._pj8314:
               if(count.length < 5)
               {
                  this._mi9531._kp3815(new Logs(Logger.count2,"NpcManager.reciebeMsg SUBCODE_CHAT_PUBLICO ",count.toString()));
                  return;
               }
               count.shift();
               count.shift();
               count3 = int(count.shift());
               count1 = count.shift();
               count2 = int(count.shift());
               this._sh14185(count3,count1,count2);
               return;
               break;
            case NpcController._gx9686:
               if(count.length < 5)
               {
                  this._mi9531._kp3815(new Logs(Logger.count2,"NpcManager.reciebeMsg SUBCODE_CHAT_PRIVADO ",count.toString()));
                  return;
               }
               count.shift();
               count.shift();
               count3 = int(count.shift());
               count1 = count.shift();
               count2 = int(count.shift());
               this._sh14185(count3,count1,count2);
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
         var count:NpcModel = null;
         var count3:int = 0;
         while(count3 < param1.length)
         {
            count = NpcModel(param1[count3]);
            this._qa6888(count);
            count3++;
         }
      }
      
      public function _qa6888(param1:NpcModel) : void
      {
         if(this._qf14225[param1._oq4159])
         {
            return;
         }
         var count:TypenpcModel = TypenpcModel._ms8941(param1,this._ue14215);
         count.addEventListener(TypenpcModel.textString,this._go6957,false,0,true);
         if(count)
         {
            this._qf14225[param1._oq4159] = count;
         }
      }
      
      private function _go6957(param1:Event) : void
      {
         this._ue14215._ff13945();
      }
      
      public function move(param1:int) : void
      {
         if(this._qf14225[param1])
         {
            this._qf14225[param1].removeEventListener(TypenpcModel.textString,this._go6957);
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
         var count2:TypenpcModel = null;
         for each(count2 in this._qf14225)
         {
            count2.loop();
         }
      }
      
      public function destroy() : void
      {
         var count2:TypenpcModel = null;
         this._ue14215._ov13431.removeEventListener(NPCEvents.textString,this.authenticateUser);
         PacketBuilder.handleSocket1(MessageTypeConstants.count57,this.parseData);
         for each(count2 in this._qf14225)
         {
            if(count2 != null)
            {
               this.move(count2._of6691());
            }
         }
         this._qf14225 = null;
      }
   }
}

