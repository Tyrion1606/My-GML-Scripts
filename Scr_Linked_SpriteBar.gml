/// @description Esta função usa um conjunto de 6 imagens (0-2 para Barra cheia e 3-5 para Barra zazia) de um Sprite e constroi uma
/// "Barra de vida" repetindo as imagens para formar um numero indefinido de partes da barra.
///
/// As imagens 0 e 3 correspondem à primeira aparição da imagem
/// As imagens 2 e 5 correspondem à ultima aparição da imagem
/// As imagens 1 e 4 Correspondem às demais
///
/// A posição da Barra é atrelada a posição do objeto e pode ser ajustada pelos parâmetros

function Scr_Linked_SpriteBar(Sprite, C_value, Max_value, Cor = c_white, H_Size = 80, V_Size = 10, H_Dist = 0, V_Dist = -(self.sprite_height/2)){
	var Aux = 0;
	var SizeOfSquares = H_Size/Max_value;
	
	var StartBarX = self.x-(H_Size/2)+H_Dist;
	var StartBarY = self.y-(V_Size/2)+V_Dist;

	#region Cheia
		if (C_value>0){
			draw_sprite_stretched_ext(Sprite, 0 , StartBarX+(Aux*SizeOfSquares),StartBarY,SizeOfSquares,V_Size,Cor,1);
			Aux++;
		}
		if (C_value>2){
			repeat (C_value-2){
				draw_sprite_stretched_ext(Sprite, 1 , StartBarX+(Aux*SizeOfSquares),StartBarY,SizeOfSquares,V_Size,Cor,1);
				Aux++;
			}
		}
		if (C_value>1){
			draw_sprite_stretched_ext(Sprite, 2 , StartBarX+(Aux*SizeOfSquares),StartBarY,SizeOfSquares,V_Size,Cor,1);
			Aux++;
		}
	#endregion
	Aux = 0;
	#region Vazia
		draw_sprite_stretched_ext(Sprite, 3 , StartBarX+(Aux*SizeOfSquares),StartBarY,SizeOfSquares,V_Size,Cor,1);
		Aux++;
	
		if (Max_value>2){
			repeat (Max_value-2){
			draw_sprite_stretched_ext(Sprite, 4 , StartBarX+(Aux*SizeOfSquares),StartBarY,SizeOfSquares,V_Size,Cor,1);
			Aux++;
			}
		}
	
		if (Max_value>1){
			draw_sprite_stretched_ext(Sprite, 5 , StartBarX+(Aux*SizeOfSquares),StartBarY,SizeOfSquares,V_Size,Cor,1);
			Aux++;
		}
	#endregion
}