IDENTIFICATION DIVISION.
	PROGRAM-ID. AOC-2020-DAY-00.

ENVIRONMENT DIVISION.
	INPUT-OUTPUT SECTION.
	FILE-CONTROL.
		SELECT InputFile ASSIGN TO "input.txt"
			ORGANIZATION IS LINE SEQUENTIAL.

DATA DIVISION.
	FILE SECTION.
	FD InputFile.
	01 INPUT-FILE.
		05 INPUT-LINE PIC X(30).
	
	WORKING-STORAGE SECTION.
	01 WS-EOF PIC 9(1) VALUE 0.
	01 WS-INPUT.
		05 WS-INPUT-LINE PIC X(30).

PROCEDURE DIVISION.
	OPEN INPUT InputFile.
		PERFORM UNTIL WS-EOF=1
			READ InputFile INTO WS-INPUT-LINE
				AT END MOVE 1 TO WS-EOF
				NOT AT END DISPLAY WS-INPUT-LINE
			END-READ
		END-PERFORM.
	CLOSE InputFile.
STOP RUN.
