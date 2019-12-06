#============================================ Makefile ============================================#
default:	classes

SHELL		:= /bin/sh

SRCS_DIR	=
INCS_DIR	=

INCS		=
SRCS		= Main.java

JC			= javac
JFLAGS		= -g

RM			= rm -rf

.SUFFIXES: .java .class

.java.class:
	${JC} ${JFLAGS} ${SRCS_DIR}${SRCS}

classes: $(SRCS:.java=.class)

clean:
	${RM} *.class
#================================================ EOF =============================================#
