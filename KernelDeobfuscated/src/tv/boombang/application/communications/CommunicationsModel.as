package src.tv.boombang.application.communications
{
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.core.communications.*;
   
   public class CommunicationsModel
   {
      
      public static const count:int = 1;
      
      public static const count1:int = 2;
      
      public static const count2:int = 3;
      
      public static const count3:int = 4;
      
      public static const count4:int = 5;
      
      public function CommunicationsModel()
      {
         super();
      }
      
      public static function _fx9780(param1:String) : void
      {
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count29],[param1]);
      }
      
      public static function _uu10358() : void
      {
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count44]);
      }
      
      public static function _yi15698() : void
      {
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count30]);
      }
      
      public static function _wk1584(param1:String) : void
      {
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count32],[param1]);
      }
      
      public static function _pe4892(param1:String, param2:int) : void
      {
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count34],[param1,param2]);
      }
      
      public static function _sf101(param1:String) : void
      {
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count40],[param1]);
      }
      
      public static function _ao6441(param1:String, param2:String, param3:String) : void
      {
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count35],[param1,param2,param3]);
      }
      
      public static function _vb2202(param1:String, param2:String) : void
      {
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count37],[param1,param2]);
      }
      
      public static function _aq15017(param1:String, param2:String = "") : void
      {
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count39],[param1,param2]);
      }
      
      public static function _bc5641(param1:String) : void
      {
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count36],[param1]);
      }
      
      public static function validateEmail(param1:String, param2:Boolean) : void
      {
         var count3:int = 0;
         if(param2)
         {
            count3 = 1;
         }
         else
         {
            count3 = 0;
         }
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count31],[param1,count3]);
      }
      
      public static function _rp8491(param1:Boolean, param2:String) : void
      {
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count41],[param1 ? "1" : "0",param2]);
      }
      
      public static function _kd7758(param1:DatatypesModel, param2:String = "", param3:String = "") : void
      {
         var count1:int = 0;
         switch(param1)
         {
            case DatatypesModel._to2262:
               count1 = 0;
               break;
            case DatatypesModel._xt5593:
               count1 = 1;
               break;
            default:
               throw new Error("Can not link " + param1.label + " account");
         }
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count42],[count1,param2,param3]);
      }
      
      public static function _dt3977(param1:DatatypesModel) : void
      {
         var count:int = 0;
         switch(param1)
         {
            case DatatypesModel._to2262:
               count = 0;
               break;
            case DatatypesModel._xt5593:
               count = 1;
               break;
            default:
               throw new Error("Can not unlink " + param1.label + " account");
         }
         PacketBuilder.stop([MessageTypeConstants.count28,MessageTypeConstants.count43],[count]);
      }
   }
}

