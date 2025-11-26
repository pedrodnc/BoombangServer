package src.tv.boombang.application.communications
{
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.core.communications.*;
   
   public class CommunicationsModel
   {
      
      public static const _ll8378:int = 1;
      
      public static const _hn11707:int = 2;
      
      public static const _qo5014:int = 3;
      
      public static const _eq214:int = 4;
      
      public static const _kx6214:int = 5;
      
      public function CommunicationsModel()
      {
         super();
      }
      
      public static function _fx9780(param1:String) : void
      {
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._gm6419],[param1]);
      }
      
      public static function _uu10358() : void
      {
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._fk9902]);
      }
      
      public static function _yi15698() : void
      {
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._op6896]);
      }
      
      public static function _wk1584(param1:String) : void
      {
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._wj4721],[param1]);
      }
      
      public static function _pe4892(param1:String, param2:int) : void
      {
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._yj7183],[param1,param2]);
      }
      
      public static function _sf101(param1:String) : void
      {
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._gp8637],[param1]);
      }
      
      public static function _ao6441(param1:String, param2:String, param3:String) : void
      {
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._qx14014],[param1,param2,param3]);
      }
      
      public static function _vb2202(param1:String, param2:String) : void
      {
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._us5937],[param1,param2]);
      }
      
      public static function _aq15017(param1:String, param2:String = "") : void
      {
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._ao3500],[param1,param2]);
      }
      
      public static function _bc5641(param1:String) : void
      {
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._dd11747],[param1]);
      }
      
      public static function validateEmail(param1:String, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         if(param2)
         {
            _loc3_ = 1;
         }
         else
         {
            _loc3_ = 0;
         }
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._jt9643],[param1,_loc3_]);
      }
      
      public static function _rp8491(param1:Boolean, param2:String) : void
      {
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._an157],[param1 ? "1" : "0",param2]);
      }
      
      public static function _kd7758(param1:DatatypesModel, param2:String = "", param3:String = "") : void
      {
         var _loc4_:int = 0;
         switch(param1)
         {
            case DatatypesModel._to2262:
               _loc4_ = 0;
               break;
            case DatatypesModel._xt5593:
               _loc4_ = 1;
               break;
            default:
               throw new Error("Can not link " + param1.label + " account");
         }
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._al13400],[_loc4_,param2,param3]);
      }
      
      public static function _dt3977(param1:DatatypesModel) : void
      {
         var _loc2_:int = 0;
         switch(param1)
         {
            case DatatypesModel._to2262:
               _loc2_ = 0;
               break;
            case DatatypesModel._xt5593:
               _loc2_ = 1;
               break;
            default:
               throw new Error("Can not unlink " + param1.label + " account");
         }
         PacketBuilder._db6249([MessageTypeConstants._ai13635,MessageTypeConstants._uc3668],[_loc2_]);
      }
   }
}

