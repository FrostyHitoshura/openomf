# A simple Makefile for omf2097-tools

CC=gcc
RM=rm -f
MKDIR=mkdir -p
RMDIR=rmdir
MV=mv
AR=ar

BKTOOL_MAIN = src/bktool/main.c
AFTOOL_MAIN = src/aftool/main.c
SOUNDTOOL_MAIN = src/soundtool/main.c

SDINC=../libShadowDive/include/
SDLIB=../libShadowDive/lib/
SDLINC=/libs/include/
SDLLIB=/libs/lib/

BINDIR=bin
CFLAGS=-I $(SDINC) -I $(SDLINC) -Wall -std=c99 -ggdb -g3
LDFLAGS=-L $(SDLIB) -L $(SDLLIB) -lshadowdive -largtable2 -lSDL2main -lSDL2 

all: 
	$(MKDIR) $(BINDIR)/
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(BINDIR)/bktool $(BKTOOL_MAIN)  
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(BINDIR)/aftool $(AFTOOL_MAIN)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(BINDIR)/soundtool $(SOUNDTOOL_MAIN)
	$(RM) *.o
	@echo "All done!"

clean:
	$(RM) *.o
	$(RM) $(BINDIR)/bktool.exe
	$(RM) $(BINDIR)/bktool
	$(RM) $(BINDIR)/aftool.exe
	$(RM) $(BINDIR)/aftool
	$(RM) $(BINDIR)/soundtool
	$(RM) $(BINDIR)/soundtool.exe
