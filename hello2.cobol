IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO2.

DATA DIVISION.
   WORKING-STORAGE SECTION.
   01 MY-NAME PIC A(80).
   01 MY-ID PIC 9(10) VALUE 1.

PROCEDURE DIVISION.
   A000-FIRST-PARA.
   DISPLAY 'hello, world'.
   MOVE 'hello2' TO MY-NAME.
   DISPLAY "MY-NAME: "MY-NAME.
   DISPLAY "MY-ID: "MY-ID.
STOP RUN.
