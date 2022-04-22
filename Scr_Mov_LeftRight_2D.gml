
function Scr_Mov_LeftRight_2D(Velocidade){

	#region Check Keyboard

	Right = keyboard_check(ord("D"));
	Left = keyboard_check(ord("A"));
	RightReleased = keyboard_check_released(ord("D"));
	LeftReleased = keyboard_check_released(ord("A"));

	#endregion

	#region Movimento
	
	if (Right or Left){
		if (Right) {
			self.hspeed = Velocidade;
		}
		if (Left) {
			self.hspeed = -Velocidade;
		}
	} else {
		self.hspeed = 0;
		
	}
	
	#endregion
}