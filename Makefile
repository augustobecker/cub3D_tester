# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/25 16:02:17 by acesar-l          #+#    #+#              #
#    Updated: 2023/05/26 23:57:21 by acesar-l         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

PURPLE			= \033[0;35m
GREEN			= \033[0;32m
RED				= \033[0;31m
RESET			= \033[0m

PATH_TEST		= tests
PATH_GAME		= ../

TESTS			=	${PATH_TEST}/check-for-empty-file.sh			\
			${PATH_TEST}/check-for-missing-argv.sh					\
			${PATH_TEST}/check-for-multiple-argv.sh					\
			${PATH_TEST}/check-for-invalid-extension.sh				\
			${PATH_TEST}/check-for-empty-line-between-map.sh		\
			${PATH_TEST}/check-for-map-not-surrounded-by-walls.sh	\
			${PATH_TEST}/check-for-missing-starting-pos.sh			\
			${PATH_TEST}/check-for-extra-starting-pos.sh			\
			${PATH_TEST}/check-for-invalid-map-parameter.sh			\
			${PATH_TEST}/check-for-invalid-texture-element.sh		\
			${PATH_TEST}/check-for-missing-texture-element.sh		\
			${PATH_TEST}/check-for-multiple-texture-element.sh		\
			${PATH_TEST}/check-for-invalid-color.sh					\
			${PATH_TEST}/check-for-missing-color-element.sh			\
			${PATH_TEST}/check-for-invalid-color-element.sh			\
			${PATH_TEST}/check-for-multiple-color-element.sh

all:		m

m:			game permission tester

game:
			@ make -C ${PATH_GAME}

permission:
			@chmod -R a+x *

miss-argv:
			@ ./${PATH_TEST}/check-for-missing-argv.sh

mult-argv:
			@ ./${PATH_TEST}/check-for-multiple-argv.sh

invalid-extension:
			@ ./${PATH_TEST}/check-for-invalid-extension.sh

empty-file:
			@ ./${PATH_TEST}/check-for-empty-file.sh

empty-line-map:
			@ ./${PATH_TEST}/check-for-empty-line-between-map.sh

map-not-surrounded-walls:
			@ ./${PATH_TEST}/check-for-map-not-surrounded-by-walls.sh

miss-start-pos:
			@ ./${PATH_TEST}/check-for-missing-starting-pos.sh

mult-start-pos:
			@ ./${PATH_TEST}/check-for-extra-starting-pos.sh

invalid-paramater-map:
			@ ./${PATH_TEST}/check-for-invalid-map-parameter.sh

invalid-texture-elem:
			@ ./${PATH_TEST}/check-for-invalid-texture-element.sh

miss-texture-elem:
			@ ./${PATH_TEST}/check-for-missing-texture-element.sh

mult-texure-elem:
			@ ./${PATH_TEST}/check-for-multiple-texture-element.sh

invalid-color:
			@ ./${PATH_TEST}/check-for-invalid-color.sh

miss-color-elem:
			@ ./${PATH_TEST}/check-for-missing-color-element.sh

mult-color-elem:
			@ ./${PATH_TEST}/check-for-multiple-color-element.sh

tester:
			@ echo
			@ echo "${PURPLE}***************************************************************${RESET}"
			@ echo "${PURPLE}*                      cub3d_tester                           *${RESET}"
			@ echo "${PURPLE}***************************************************************${RESET}"
			@ echo
			@ ./${PATH_TEST}/check-for-missing-argv.sh
			@ ./${PATH_TEST}/check-for-multiple-argv.sh
			@ ./${PATH_TEST}/check-for-invalid-extension.sh
			@ ./${PATH_TEST}/check-for-empty-file.sh
			@ ./${PATH_TEST}/check-for-empty-line-between-map.sh
			@ ./${PATH_TEST}/check-for-map-not-surrounded-by-walls.sh
			@ ./${PATH_TEST}/check-for-missing-starting-pos.sh
			@ ./${PATH_TEST}/check-for-extra-starting-pos.sh
			@ ./${PATH_TEST}/check-for-invalid-map-parameter.sh
			@ ./${PATH_TEST}/check-for-invalid-texture-element.sh
			@ ./${PATH_TEST}/check-for-missing-texture-element.sh
			@ ./${PATH_TEST}/check-for-multiple-texture-element.sh
			@ ./${PATH_TEST}/check-for-invalid-color.sh
			@ ./${PATH_TEST}/check-for-missing-color-element.sh
			@ ./${PATH_TEST}/check-for-multiple-color-element.sh
			@ echo
			@ echo "${PURPLE}***************************************************************${RESET}"
			@ echo

.PHONY:		all m game permission miss-argv mult-argv invalid-extension \
			empty-file empty-line-map map-not-surrounded-walls miss-start-pos \
			mult-start-pos invalid-paramater-map invalid-texture-elem \
			miss-texture-elem mult-texure-elem invalid-color miss-color-elem \
			mult-color-elem tester
