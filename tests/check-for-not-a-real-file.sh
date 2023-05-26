#!/bin/bash

#
#
#                                                        :::      ::::::::
#   cub3DTester/check-for-not-a-real-file.sh            :+:      :+:    :+:
#                                                    +:+ +:+         +:+
#   By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+
#                                                +#+#+#+#+#+   +#+
#   Created: 2021/06/20 23:43:10 by acesar-l          #+#    #+#
#   Updated: 2021/07/15 10:43:41 by acesar-l         ###   ########.fr
#
#

  CYAN="\033[0;36m"
 GREEN="\033[0;32m"
   RED="\033[0;31m"
 RESET="\033[0m"
  FILE1="assets/invalid-files/not-a-file"
ERROR1=$(./../cub3D $FILE1 | grep "cub3D: " | wc -l)

if [ ${ERROR1} -ge 1 ]
then
	echo -e "${CYAN}Check for no file:			  $GREEN  [OK] $RESET"
else
	echo -e "${CYAN}Check for no file:			  $RED  [KO] $RESET"
fi
