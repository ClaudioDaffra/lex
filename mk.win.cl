TARGET =cd.exe
FLAG= /WX /utf-8 /MP

SOURCES = \
	lib\argParse.c	\
	lib\stdio.c		\
	lib\gc.c		\
	lib\hmap.c	\
	lib\string.c	\
	src\lexer.c     \
	src\error.c		\
	src\main.c		\
	
all: $(TARGET)

$(TARGET):$(SOURCES)
	cl $(FLAG) /Febin\$(TARGET) $(SOURCES)
	
clean:
		del bin\*.exe >nul 2>&1 	& del obj\*.obj >nul 2>&1 	& del lib\*.obj >nul 2>&1
		del *.exe >nul 2>&1 		& del *.obj >nul 2>&1
		del *.lexer >nul 2>&1 		& del tst\*.lexer >nul 2>&1


