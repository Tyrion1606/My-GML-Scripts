/// @description Esta função Cria uma "healthbar" atrelada a posição do Objeto

function Scr_Linked_Bar(C_value, Max_value, H_Size = 50, V_Size = 5, H_Dist = 0, V_Dist = -(self.sprite_height/2), CorFundo = c_black, CorFull = c_lime, CorLow = c_red, Direction = 0, ShowBack = true, ShowBorder = true){
	StartBarX = self.x-(H_Size/2)+H_Dist;
	StartBarY = self.y-(V_Size/2)+V_Dist;
	EndBarX = self.x+(H_Size/2)+H_Dist;
	EndBarY = self.y+(V_Size/2)+V_Dist;
	draw_healthbar(StartBarX,StartBarY,EndBarX,EndBarY,(C_value/Max_value)*100,CorFundo, CorLow, CorFull, Direction, ShowBack, ShowBorder);
}