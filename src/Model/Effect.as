package Model 
{
	/**
	 * ...
	 * @author OMaster
	 */
	public class Effect 
	{
		
		public function Effect(effect:Function,describe:String,anime:Anime,is_enrth:Boolean,rank:int) 
		{
			this.effect = effect;
			this.describe = describe;
			this.anime = anime;
			this.rank = rank;
			this.is_enrth = is_enrth;
		}
		
		public var effect:Function;
		public var describe:String;
		public var anime:Anime;
		public var rank:int;
		public var is_enrth:Boolean;
		
	}

}