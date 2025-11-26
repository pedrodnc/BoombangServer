package src.tv.boombang.application.ga
{
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class _ia12312
   {
      
      private static var _qc5085:String;
      
      private static var _eb4836:int = 0;
      
      public function _ia12312()
      {
         super();
      }
      
      public static function _fs11949(param1:String) : void
      {
         switch(_eb4836)
         {
            case 0:
               _qc5085 = "First";
               break;
            case 1:
               _qc5085 = "Second";
               break;
            case 2:
               _qc5085 = "Third";
               break;
            case 3:
               _qc5085 = "Fourth";
               break;
            case 4:
               _qc5085 = "Fifth";
               break;
            case 5:
               _qc5085 = "Sixth";
               break;
            case 6:
               _qc5085 = "Seventh";
               break;
            case 7:
               _qc5085 = "Eighth";
               break;
            case 8:
               _qc5085 = "Ninth";
               break;
            default:
               _qc5085 = "";
         }
         (_lh7543.get(_wl11587) as _wl11587)._fs11949("Lobby",param1,_qc5085);
         ++_eb4836;
      }
   }
}

