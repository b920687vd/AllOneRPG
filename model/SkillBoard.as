package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class SkillBoard extends MovieClip {
		
		
		public function SkillBoard() {
			// constructor code
			this.addEventListener(Event.ENTER_FRAME,check_masking);
		}
		
		private var _jump_tip:*;
		
		public function go_to(tip:*):void
		{
			_jump_tip = tip;
			(this["masking"] as MovieClip).visible = true;
			(this["masking"] as MovieClip).play();
			this.addEventListener(Event.ENTER_FRAME,check_masking);
			
		}
		
		private function check_masking(e:Event):void
		{
			if((this["masking"] as MovieClip).currentFrameLabel == "hide"&&_jump_tip)
			{
				this.gotoAndStop(_jump_tip);
				(this["masking"] as MovieClip).play();
			}else if((this["masking"] as MovieClip).currentFrameLabel == "show")
			{
				(this["masking"] as MovieClip).visible = false;
				this.removeEventListener(Event.ENTER_FRAME,check_masking);
			}
		}
	}
	
}
