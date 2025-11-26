package src.tv.boombang.application.navigation.events
{
   import flash.events.Event;
   import src.tv.boombang.core.datatypes.navigationMenu.NavigationmenuModel;
   import src.tv.boombang.core.datatypes.navigationMenu.NavigationmenuModel;
   
   public class EventsModel extends Event
   {
      
      public static const textString:String = "onLoadingStatus";
      
      public static const textString1:String = "tabSelected";
      
      public static const textString2:String = "tabAreaRequestFirstChannel";
      
      public static const textString3:String = "tabAreaRequestSecondChannel";
      
      public static const textString4:String = "tabAreaRemoveSecondChannel";
      
      public static const textString5:String = "tabAreaEnterFirstLevelChannel";
      
      public static const textString6:String = "tabAreaEnterSecondLevelChannel";
      
      public static const textString7:String = "tabAreaEnter";
      
      public static const textString8:String = "tabGamesRequestChannel";
      
      public static const textString9:String = "tabIslandsRequestChannels";
      
      public static const textString10:String = "tabIslandsCreateIsland";
      
      public static const textString11:String = "tabIslandsGetMyIslands";
      
      public static const textString12:String = "tabIslandsRequestFavourites";
      
      public static const textString13:String = "tabIslandsSetFavourites";
      
      public static const textString14:String = "tabIslandRemoveFavourite";
      
      public static const textString15:String = "tabIslandEnterIsland";
      
      public static const textString16:String = "tabHousesRequestChannels";
      
      public static const textString17:String = "tabHousesRequestFavourites";
      
      public static const textString18:String = "tabHousesSetFavourites";
      
      public static const textString19:String = "tabHousesRemoveFavourite";
      
      public static const textString20:String = "tabHousesEnterHouse";
      
      private var _data:NavigationmenuModel;
      
      private var _jt10688:NavigationmenuModel;
      
      public function EventsModel(param1:String, param2:NavigationmenuModel = null, param3:NavigationmenuModel = null)
      {
         super(param1,false,false);
         this._data = param2;
         this._jt10688 = param3;
      }
      
      public function get data() : NavigationmenuModel
      {
         return this._data;
      }
      
      public function get _ks12861() : NavigationmenuModel
      {
         return this._jt10688;
      }
   }
}

