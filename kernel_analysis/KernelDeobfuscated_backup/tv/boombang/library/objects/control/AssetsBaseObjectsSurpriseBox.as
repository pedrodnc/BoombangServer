package src.tv.boombang.library.objects.control
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class AssetsBaseObjectsSurpriseBox extends BaseObjectsCajitaSorpresa
   {
      
      protected var _asset:MovieClip;
      
      protected var _fileName:String;
      
      protected var _id:int;
      
      public function AssetsBaseObjectsSurpriseBox(param1:MovieClip, param2:String, param3:int)
      {
         this._asset = param1;
         this._fileName = param2 + ".swf";
         this.addChild(param1);
         super();
      }
      
      override public function getChildByName(param1:String) : DisplayObject
      {
         if(param1 == "mcObject")
         {
            return this._asset.mcObject;
         }
         return super.getChildByName(param1);
      }
      
      override public function destroy() : void
      {
         this._asset = null;
         super.destroy();
      }
   }
}

