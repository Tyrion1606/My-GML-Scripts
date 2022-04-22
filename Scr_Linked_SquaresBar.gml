/// @description Esta função desenha uma quantidade de quadrados de acordo com os valores máximos e atuais criando uma "Barra de Vida".
///
/// A posição da Barra é atrelada a posição do objeto e pode ser ajustada pelos parâmetros.


function Scr_Linked_SquaresBar(C_value, Max_value, H_Size = 50, V_Size = 5, H_Dist = 0, V_Dist = -(self.sprite_height/2), Cor = c_lime, Space = 2){
	var Aux = 0;
	var SizeOfSquares = H_Size/Max_value;
	
	var StartBarX = self.x-(H_Size/2)+H_Dist;
	var StartBarY = self.y-(V_Size/2)+V_Dist;
	var EndBarY = self.y+(V_Size/2)+V_Dist;
	
	repeat C_value{
			draw_rectangle_colour(StartBarX+(Aux*SizeOfSquares),StartBarY,StartBarX-Space+((Aux+1)*SizeOfSquares),EndBarY,Cor,Cor,Cor,Cor,false);
			Aux++;
	}

	Aux = 0;
	repeat Max_value{
			draw_rectangle_colour(StartBarX+(Aux*SizeOfSquares),StartBarY,StartBarX-Space+((Aux+1)*SizeOfSquares),EndBarY,c_black,c_black,c_black,c_black,true);
			Aux++;
	}
}