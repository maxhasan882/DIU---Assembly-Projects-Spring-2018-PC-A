.stack 100h
.model small
.data
MSG DW "1.Ticket information $" 
MSG1 DW "2.Cutting ticket $"
MSG2 DW "3.Stop the program $" 
MSG3 DW "Enter your choice :  $"
MSG4 DW "1. Kamlapur to Cox's Bazar $"
MSG5 DW "2. Kamlapur to Rajshahi $"
MSG6 DW "3. Kamlapur to Mymonshing $"
MSG7 DW " Start Time    End Time    Ticket Price $"
MSG8 DW " 8.30AM         5.30PM      5000tk Only    $"
MSG9 DW " 10.30AM        4.30PM      350tk Only     $"
MSG10 DW " 9.00AM         12.00PM     175tk Only     $"
MSG11 DW "Please paid  $"
MSG12 DW "1.Kamlapur to Cox's Bazar $"
MSG13 DW "Thanks for using this Software  $" 
MSG14 DW "1. Bye Ticket  $"
MSG15 DW "2. Close Program  $" 
MSG16 DW "How many seats do you want $"
MSG17 DW "TK only  $"
MS DW "This Software is online Ticketing system   $"
MS1 DW " If you want to know about train and ticketing please press 1$"
MS2 DW " If you want to know about  ticketing please press 2$"
MS3 DW " If you want to  close the Program please press 3$"

  

 
.code
MAIN PROC
    MOV AX,@data
    MOV DS,AX
     LEA DX,MS;First massage
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
     LEA DX,MS1;First massage
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
     LEA DX,MS2;First massage
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
     LEA DX,MS3;First massage
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    ASAD:
    LEA DX,MSG;First massage
    MOV AH,9
    INT 21H    
    
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
     
    LEA DX,MSG1;Second massage
    MOV AH,9
    INT 21H 
    
      MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
   
    LEA DX,MSG2;Third massage
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
   
    LEA DX,MSG3;Fourth massage
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    CMP BL,'2'
    JE TICKET
    JB TICKET_INFORMATION
    JG STOP
    JMP END_IF
    
    TICKET:
      MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
     LEA DX,MSG4;4th massage
    MOV AH,9
    INT 21H
    
      MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
     LEA DX,MSG5;4th massage
    MOV AH,9
    INT 21H
    
      MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
     LEA DX,MSG6;4th massage
    MOV AH,9
    INT 21H
    
      MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
     LEA DX,MSG3;4th massage
    MOV AH,9
    INT 21H
    
    
    mov ah,1
    int 21h
    
    CMP AL,'2'
    JE  Rajshahi
    JB  Bazar
    JG  Mymonshing
    
    
    JMP END_IF
    Rajshahi:
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
     LEA DX,MSG16;4th massage
    MOV AH,9
    INT 21H
    
     mov ah,1
    int 21h
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
     
    
    JMP ASAD
    
    JMP END_IF
    
    
    Mymonshing:
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
     LEA DX,MSG16;4th massage
    MOV AH,9
    INT 21H
    
     mov ah,1
    int 21h
    
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    JMP ASAD 
    
    JMP END_IF
    Bazar:
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
     LEA DX,MSG16;4th massage
    MOV AH,9
    INT 21H
    
     mov ah,1
    int 21h
    
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
     JMP ASAD
    
    JMP END_IF
    
    
    
    
    TICKET_INFORMATION:
      MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
     LEA DX,MSG4;4th massage
    MOV AH,9
    INT 21H
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
   
    LEA DX,MSG7;time table massage
    MOV AH,9
    INT 21H
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
   
    LEA DX,MSG8;cox bazar time
    MOV AH,9
    INT 21H
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
      MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
     
    
    
     
     LEA DX,MSG5;4th massage
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
   
    LEA DX,MSG7;time table massage
    MOV AH,9
    INT 21H
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
   
    LEA DX,MSG9;cox bazar time
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
      MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
     
    
     
     LEA DX,MSG6;4th massage
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
   
    LEA DX,MSG7;time table massage
    MOV AH,9
    INT 21H
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
   
    LEA DX,MSG10;cox bazar time
    MOV AH,9
    INT 21H
    
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG14;cox bazar time
    MOV AH,9
    INT 21H 
    
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG15;cox bazar time
    MOV AH,9
    INT 21H
    
    
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
   
    LEA DX,MSG3;time table massage
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    
    CMP AL,'1'
    JE TICKET
    JB END_IF
    JG END_IF
    
    
    
    
    
    JMP END_IF
    
    STOP:
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG13;last massage
    MOV AH,9
    INT 21H
    JMP END_IF
    
    
    END_IF:
    
    
    
    
    
    
   
    
    MAIN ENDP
END MAIN
    
          