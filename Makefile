#============================================ Makefile ============================================#
default:	all

SHELL		:= /bin/sh

CLSS_DIR	= class/
SRCS_DIR	= src/
TRGT_DIR	= bin/
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

NAME		= best_java.jar

MKDIR		= mkdir -p
RM			= rm -rf

.SUFFIXES: .java .class

${CLSS_DIR}%.class:		${SRCS_DIR}%.java
	@${MKDIR} ${CLSS_DIR}
	${JC} ${JFLAGS} -d ${CLSS_DIR} $<

${NAME}:	release

all: ${CLSS}

clean:
	${RM} ${CLSS_DIR}

fclean: clean
	${RM} ${TRGT_DIR}

re: fclean all

run: all
	@${JAVA} ${CLPTH} ${CLSS_DIR} Main

release: all
	@${MKDIR} ${TRGT_DIR}
	${JAR} ${JARFLAGS} ${TRGT_DIR}${NAME} ${CLSS_DIR}

.PHONY: all clean fclean re run release
#================================================ EOF =============================================#
