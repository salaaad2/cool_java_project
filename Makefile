#============================================ Makefile ============================================#
default:	all

SHELL		:= /bin/sh

CLSS_DIR	= class/
SRCS_DIR	= src/
INCS_DIR	=

INCS		=
SRCS		= ${SRCS_DIR}Main.java
CLSS		= $(patsubst ${SRCS_DIR}%.java,${CLSS_DIR}%.class,${SRCS})

JC			= javac
JFLAGS		= -g

JAVA		= java
CLPTH		= -classpath

JAR			= jar
JARFLAGS	= -c

NAME		= best_java

MKDIR		= mkdir -p
RM			= rm -rf

.SUFFIXES: .java .class

${CLSS_DIR}%.class:		${SRCS_DIR}%.java
	@${MKDIR} ${CLSS_DIR}
	${JC} ${JFLAGS} -d ${CLSS_DIR} $<

${NAME}:	${CLSS}

all: ${NAME}

run: all
	@${JAVA} ${CLPTH} ${CLSS_DIR} Main

release: all
	${JAR} ${JARFLAGS} bin
clean:
	${RM} ${CLSS_DIR}

fclean: clean

re: fclean all
#================================================ EOF =============================================#
