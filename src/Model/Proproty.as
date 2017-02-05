package Model 
{
	/**
	 * ...
	 * @author OMaster
	 */
	public class Proproty 
	{
		
		public function Proproty() 
		{
			
		}
		
		private var Base_Effect:Array;
		private var Enrth_Effect:Array;
		
		private var Base_Anime:Array;
		private var Enrth_Anime:Array;
		
		private var Base_Describe:Array;
		private var Enrth_Describe:Array;
		
		public function Get_Effect(rank:int,is_enrth:Boolean = false):Effect
		{
			var eff:Effect;
			if (is_enrth)
			{
				eff = new Effect(Enrth_Effect[rank], Enrth_Describe[rank], Enrth_Anime[rank], is_enrth, rank);
			}
			else
			{
				eff = new Effect(Base_Effect[rank], Base_Describe[rank], Base_Anime[rank], is_enrth, rank);
			}
			return eff;
		}
	}

}