NAME =	cub3D

# NAME_BNS = cub3D_bonus

INC =	cub3d.h

# INC_BNS = 

SRC =	main.c \
		struct_init.c\
		check_map_name.c\
		pars1.c\
		errors.c \
		read_from_map.c \
		get_next_line.c \
		display/draw_2d_map.c\
		display/utils.c\
		display/p_movment.c\
		display/p_movment2.c\
		display/raycasting.c\
		display/vertical_check.c\
		display/horizontal_check.c\
		display/get_textur.c\
		get_net_line/get_next_line.c\
		get_net_line/get_next_line_utils.c\

# BNC_SRC =

OBJ = $(SRC:.c=.o)

OBJ_BNC = $(BNC_SRC:.c=.o)

MLX = -lmlx -framework OpenGL -framework AppKit

CC = cc

CFLAGS = -Wall  -Wextra -g #-fsanitize=address #-Werror

all : $(NAME)

$(NAME) : $(INC) $(OBJ)
	make bonus -C libft/
	$(CC)  $(OBJ)  $(CFLAGS)  libft/libft.a -lmlx -framework OpenGL -framework AppKit -o $(NAME)
#$(NAME): $(OBJ)
	

# bonus : $(NAME_BNS)

clean : 
	@-rm -rf $(OBJ) $(OBJ_BNC)

fclean : clean
	make fclean -C libft
	@-rm -rf $(NAME) $(NAME_BNS)

re :fclean all