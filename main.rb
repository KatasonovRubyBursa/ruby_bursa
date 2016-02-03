point_x, point_y, user_point_x, user_point_y = ARGV

case
	when point_x == user_point_x && point_y == user_point_y
		puts "Точка найдена!"		
	when point_x == user_point_x && point_y != user_point_y
		puts "х координата верна, y нет"
	when point_x != user_point_x && point_y == user_point_y
		puts "y координата верна, x нет"
	else
		puts "Близко, но нет"
end 