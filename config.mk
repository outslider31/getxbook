# See COPYING file for copyright, license and warranty details.
VERSION = prealpha

# paths
PREFIX = /usr/local

# flags
CFLAGS = -ansi -pedantic -Wall -Wextra -Werror -g -D_POSIX_C_SOURCE=200112L -DVERSION=\"$(VERSION)\"
LDFLAGS = 

# compiler and linker
CC = cc
LD = ld
