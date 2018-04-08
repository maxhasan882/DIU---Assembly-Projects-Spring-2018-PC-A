.STACK 100H
.MODEL SMALL
.CODE
.DATA
MSGFRAME1 DB '**************************DIU TRANSPORT SCHEDULE****************************$'
MSGFRAME2 DB '**                            ------------                                **$'
MSGFRAME3 DB '**                        <<<<PROJECT MENU>>>>>                           **$'
MSGFRAME4 DB '**                            ------------                                **$'
MSGFRAME5 DB '**                                                                        **$'
MSGFRAME6 DB '**     CHOSSE OPTION:                                                     **$'
MSGFRAME7 DB '**                    1.SATURDAY     |-----------------------------------|**$'
MSGFRAME8 DB '**                    2.SUNDAY       |CHOSSE ANY OPTION FOR FIND THAT DAY|**$'
MSGFRAME9 DB '**                    3.MONDAY       |TIME SCHEDULE                      |**$'
MSGFRAME10 DB '**                    4.TUESDAY      |-----------------------------------|**$'
MSGFRAME11 DB '**                    5.WEDNESDAY                                         **$'
MSGFRAME12 DB '**                    6.THURSDAY           |----------------------------| **$'
MSGFRAME13 DB '**                    7.FRIDAY             | PRESS R=RETURN PROJECT MENU| **$'
MSGFRAME14 DB '**                                         |                            | **$'
MSGFRAME15 DB '**                                         | PRESS E=EXIT               | **$'
MSGFRAME16 DB '**                                         |----------------------------| **$'
MSGFRAME17 DB '**                                                                        **$'
MSGFRAME18 DB '**                                                                        **$'
MSGFRAME19 DB '**                                                                        **$'
MSGFRAME20 DB '****************************************************************************$'
MSGCHOSSEOPTION DB 'CHOSSE ANY OPTION FROM PROJECT MENU :$'

MSGTIMETABLE DB '_____DAY____  _____TIME_____   ____FROM____  _____TO_____     _____BUS NAME____$ ' 

;MSG SATURDAY
   MSGSATURDAY1 DB 'SATURDAY        7.30 AM         MC---------------->PC               CHONDRO$'
    
   MSGSATURDAY2 DB 'SATURDAY        7.30 AM         UC---------------->PC               SOPNO$'
                                                         
   MSGSATURDAY3 DB 'SATURDAY        7.30 AM         SAVAR------------->PC               OPORUP$'
   
   MSGSATURDAY4 DB 'SATURDAY        8.30 AM         MC(50)------------>PC(Lab-TE)       SURJO$'
                    
   MSGSATURDAY5 DB 'SATURDAY       10.00 AM         MC---------------->PC               UDOYON$' 
    
   MSGSATURDAY6 DB 'SATURDAY       11.30 AM         MC(100)----------->PC(Lab-TE)       CHOLONTIKA$'
   
   MSGSATURDAY7 DB 'SATURDAY        1.15 AM         PC(Lab-TE)-------->MC               SURJO$'
                                             
   MSGSATURDAY8 DB 'SATURDAY        2.40 PM         PC---------------->MC               UDOYON$'
   
   MSGSATURDAY9 DB 'SATURDAY        2.40 PM         PC---------------->UC               SOPNO$'  
   
   MSGSATURDAY10 DB 'SATURDAY       4.15 PM         PC(Lab-TE)-------->MC               CHOLONTIKA$' 
   
   MSGSATURDAY11 DB 'SATURDAY       5.15 PM         PC---------------->MC               UDOYON$' 
   
   MSGSATURDAY12 DB 'SATURDAY       5.15 PM         PC---------------->UC               CHONDRO$'
   
   MSGSATURDAY13 DB 'SATURDAY       5.15 PM         PC---------------->SAVAR            SOPNO$'
            ;MSG SATURDAY END 
 
 ;MSG SUNDAY
   MSGSUNDAY1 DB    'SUNDAY         7.30 AM         MC---------------->PC               SURJO$'
                                                                
   MSGSUNDAY2 DB    'SUNDAY         7.30 AM         MC---------------->PC(Lab-PHAR)     CHONDRO$'
                                 
   MSGSUNDAY3 DB    'SUNDAY         7.30 AM         UC---------------->PC               UDOYON$'
   
   MSGSUNDAY4 DB    'SUNDAY         8.30 AM         MC---------------->PC(Lab-TE)       SOPNO$'
   
   MSGSUNDAY5 DB    'SUNDAY        10.00 AM         MC---------------->PC               CHOLONTIKA$'
   
   MSGSUNDAY6 DB    'SUNDAY        10.00 AM         PC(Lab-TE)-------->MC               SOPNO$'
   
   MSGSUNDAY7 DB    'SUNDAY        11.30 AM         MC----------------> PC(Lab-TE)      SURJO$'
   
   MSGSUNDAY8 DB    'SUNDAY         1.15 PM         PC(Lab-TE)-------->MC               SURJO$'
   
   MSGSUNDAY9 DB    'SUNDAY         2.40 PM         PC---------------->MC               CHOLONTIKA$'
   
   MSGSUNDAY10 DB   'SUNDAY         2.40 PM         PC---------------->MC(Lab-PHAR)     CHOLONTIKA$'
   
   MSGSUNDAY11 DB   'SUNDAY         2.40 PM         PC---------------->MC               CHOLONTIKA$'
   
   MSGSUNDAY12 DB   'SUNDAY         3.00 PM         MC---------------->PC(Lab-TE)       SOPNO$'
                   
   MSGSUNDAY13 DB   'SUNDAY         4.15 PM         PC(Lab-TE)-------->MC               SURJO$'
   
   MSGSUNDAY14 DB   'SUNDAY         5 15 PM         PC---------------->MC               SURJO$'     
                   
   MSGSUNDAY15 DB   'SUNDAY         5.15 PM         PC---------------->UC               UDOYON$' 
   
   MSGSUNDAY16 DB   'SUNDAY         5.15 PM         PC---------------->SAVAR            CHONDRO$'
             
             ;MSG SUNDAY END
   
   ;MSG MONDAY
   
   MSGMONDAY1 DB 'MONDAY            7.30 AM         MC---------------->PC               SURJO$'
                                                                 
   MSGMONDAY2 DB 'MONDAY            7.30 AM         MC---------------->PC(Lab-PHAR)     SOPNO$'
                                
   MSGMONDAY3 DB 'MONDAY            7.30 AM         UC---------------->PC               UDOYON$'
 
   MSGMONDAY4 DB 'MONDAY            8.30  AM        MC---------------->PC(Lab-TE)       CHONDRO$'
  
   MSGMONDAY5 DB 'MONDAY           10.00 AM         MC---------------->PC               CHOLONTIKA$'
                                                                                  
   MSGMONDAY6 DB 'MONDAY           11.30 AM         MC----------------> PC(Lab-TE)      UDOYON$'
  
   MSGMONDAY7 DB 'MONDAY            1.15 AM         PC(Lab-TE)-------->MC               CHONDRO$'
   
   MSGMONDAY8 DB 'MONDAY            1.15 AM         PC---------------->MC               OPORUP $'
   
   MSGMONDAY9 DB 'MONDAY            2.40 PM         PC---------------->MC(Lab-PHAR)     CHOLONTIKA$'
   
   MSGMONDAY10 DB 'MONDAY           2.40 PM         PC(Lab-PHAR)------>MC               CHOLONTIKA$'
   
   MSGMONDAY11 DB 'MONDAY           2.40 PM         PC---------------->UC               UDOYON$'
   
   MSGMONDAY12 DB 'MONDAY           4.15 PM         PC(Lab-TE)-------->MC               UDOYON$'
   
   MSGMONDAY13 DB 'MONDAY           4.15 PM         PC(Lab-TE)-------->MC               SOPNO$'
                         
   MSGMONDAY14 DB 'MONDAY           4.15 PM         PC(Lab-TE)-------->MC               CHONDRO$'     
                       
   MSGMONDAY15 DB 'MONDAY           5.15 PM         PC---------------->MC               SOPNO$' 
   
   MSGMONDAY16 DB 'MONDAY           5.15 PM         PC---------------->SAVAR            OPORUP $' 
   
   MSGMONDAY17 DB 'MONDAY           5.15 PM         PC---------------->MC               SURJO$' 
   
   ;MSG TUESDAY
   
   MSGTUESDAY1 DB 'TUESDAY          7.30 AM         MC---------------->PC               UDOYON$'
    
   MSGTUESDAY2 DB 'TUESDAY          7.30 AM         MC(Lab-EEE)------->PC               UDOYON$'
                                                         
   MSGTUESDAY3 DB 'TUESDAY          7.30 AM         SAVAR------------->PC               UDOYON$'
   
   MSGTUESDAY4 DB 'TUESDAY          8.30 AM         MC(Lab-TE)-------->PC               UDOYON$'
                    
   MSGTUESDAY5 DB 'TUESDAY         10.00 AM         MC---------------->PC               CHOLONTIKA$' 
    
   MSGTUESDAY6 DB 'TUESDAY         11.30 AM         MC(Lab-TE)-------->PC               SURJO$'
   
   MSGTUESDAY7 DB 'TUESDAY          1.OO PM         PC(Lab-EEE)------->MC               UDOYON$'
                                             
   MSGTUESDAY8 DB 'TUESDAY          2.40 PM         PC---------------->MC               CHOLONTIKA$'
   
   MSGTUESDAY9 DB 'TUESDAY          2.40 PM         PC---------------->UC               UDOYON$'  
   
   MSGTUESDAY10 DB 'TUESDAY         2.40 PM          PC---------------->MC               CHOLONTIKA$' 
   
   MSGTUESDAY11 DB 'TUESDAY         5.15 PM          PC--------------->MC                SURJO$' 
   
   MSGTUESDAY12 DB 'TUESDAY         5.15 PM          PC--------------->UC                OPOROP$'
   
   MSGTUESDAY13 DB 'TUESDAY         5.15 PM          PC--------------->SAVAR             SURJO$'        
        
        ;MSG TUESDAY END
        
   ;MSG WEDNESDAY
   
   MSGWEDNESDAY1 DB 'WEDNESDAY      7.30 AM         MC---------------->PC                UDOYON$'
    
   MSGWEDNESDAY2 DB 'WEDNESDAY      7.30 AM         UC---------------->PC                SURJO$'
                                                         
   MSGWEDNESDAY3 DB 'WEDNESDAY      7.30 AM         SAVAR------------->PC                UDOYON$'
   
   MSGWEDNESDAY4 DB 'WEDNESDAY      8.30 AM         MC(Lab-TE)-------->PC                OPOROP$'
                    
   MSGWEDNESDAY5 DB 'WEDNESDAY     10.00 AM         MC---------------->PC                CHOLONTIKA$' 
    
   MSGWEDNESDAY6 DB 'WEDNESDAY     11.30 AM         MC(Lab-TE)-------->PC                SOPNO$'
   
   MSGWEDNESDAY7 DB 'WEDNESDAY      1.15 PM         PC---------------->MC                UDOYON$'
                                             
   MSGWEDNESDAY8 DB 'WEDNESDAY      2.40 PM         PC---------------->MC                SURJO$'
   
   MSGWEDNESDAY9 DB 'WEDNESDAY      2.40 PM         PC---------------->UC                CHOLONTIKA$'  
   
   MSGWEDNESDAY10 DB 'WEDNESDAY     4.15 PM          PC(Lab-TE)-------->MC                UDOYON$' 
   
   MSGWEDNESDAY11 DB 'WEDNESDAY     5.15 PM          PC(Lab-EEE)------->MC                SOPNO$' 
   
   MSGWEDNESDAY12 DB 'WEDNESDAY     5.15 PM          PC---------------->UC                OPOROP$'
   
   MSGWEDNESDAY13 DB 'WEDNESDAY     5.15 PM          PC---------------->SAVAR             SOPNO$'
         
         ;MSG WEDNESDAY END
   
   ;MSG THURSDAY
   
   MSGTHURSDAY1 DB 'THURSDAY        7.30 AM         MC---------------->PC                 UDOYON$'
    
   MSGTHURSDAY2 DB 'THURSDAY        7.30 AM         UC---------------->PC                 SURJO$'
                                                         
   MSGTHURSDAY3 DB 'THURSDAY        7.30 AM         SAVAR------------->PC                 UDOYON$'
   
   MSGTHURSDAY4 DB 'THURSDAY        8.30 AM         MC(Lab-TE)-------->PC                 OPOROP$'
                    
   MSGTHURSDAY5 DB 'THURSDAY       10.00 AM         MC---------------->PC                 CHOLONTIKA$' 
    
   MSGTHURSDAY6 DB 'THURSDAY       11.30 AM         MC(Lab-TE)-------->PC                 SOPNO$'
   
   MSGTHURSDAY7 DB 'THURSDAY        1.15 AM         PC---------------->MC                 UDOYON$'
                                             
   MSGTHURSDAY8 DB 'THURSDAY        2.40 PM         PC---------------->MC                 SURJO$'
   
   MSGTHURSDAY9 DB 'THURSDAY        2.40 PM         PC---------------->UC                 CHOLONTIKA$'  
   
   MSGTHURSDAY10 DB 'THURSDAY       4.15 PM          PC(Lab-TE)-------->MC                 UDOYON$' 
   
   MSGTHURSDAY11 DB 'THURSDAY       5.15 PM          PC---------------->MC                 SOPNO$' 
   
   MSGTHURSDAY12 DB 'THURSDAY       5.15 PM          PC---------------->UC                 OPOROP$'
   
   MSGTHURSDAY13 DB 'THURSDAY       5.15 PM          PC---------------->SAVAR              SOPNO$'      
         
          ;MSG THURSDAY END 
   
   ;MSG FRIDAY START
          
   MSGFRIDAY1 DB 'FRIDAY            11.45 AM         MC---------------->PC                CHONDR0$'
    
   MSGFRIDAY2 DB 'FRIDAY            11.45 AM         PC---------------->MC(Lab-CE)        SURJO$'
                                                         
   MSGFRIDAY3 DB 'FRIDAY            11.45 AM         UC---------------->MC(Lab-CE)        SOPNO$'
   
   MSGFRIDAY4 DB 'FRIDAY             2.30 PM         MC(Lab-CE)-------->PC                OVINOBO$'
                    
   MSGFRIDAY5 DB 'FRIDAY             3.45 PM         PC---------------->MC(Lab-CE)        UDOYON$' 
    
   MSGFRIDAY6 DB 'FRIDAY             3.45 PM         PC----------------> MC(Lab-CE)       CHONDR0$'
   
   MSGFRIDAY7 DB 'FRIDAY             5.15 PM         PC---------------->MC(Lab-CE)        OPOROP$'
                                             
   MSGFRIDAY8 DB 'FRIDAY             6.45 PM         PC---------------->MC(Lab-CE)        CHONDR0$'                                                                        
           
           ;MSG FRIDAY END
           
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
                ;FRAME START
    
 
    LEA DX,MSGFRAME1
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME3
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
    LEA DX,MSGFRAME4
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME5
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME6
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME7
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME8
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
  
    LEA DX,MSGFRAME9
    MOV AH,9
    INT 21H
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME10
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME11
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME12
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME13
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME14
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME15
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME16
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME17
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME18
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME19
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME20
    MOV AH,9
    INT 21H
             ;FRAME END 
             
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
 
   
    LOOP:
    
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
    
    LEA DX,MSGCHOSSEOPTION  ;CHOSSE OPTION
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H

    ;SCAN
    
    MOV AH,1
    INT 21H
    
    ;COMPARE  
    
    CMP AL,'1'
    JE SATURDAY
    
    CMP AL,'2'
    JE SUNDAY
    
    CMP AL,'3'
    JE MONDAY 
    
    CMP AL,'4'
    JE TUESDAY
    
    CMP AL,'5'
    JE WEDNESDAY
    
    CMP AL,'6'
    JE THURSDAY
    
    CMP AL,'7'
    JE FRIDAY
    
    CMP AL,'R'
    JE PROJECTMENU
    
    
    CMP AL,'E'
    JE EXIT 
    
   
    
    JMP LOOP
    
       
    
    ;FUNCTION 
    
           ;SATURDAY FUNCTION  START
            
    SATURDAY: 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSGTIMETABLE
    MOV AH,9              ;MSGTIMETABLE
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
    
    LEA DX,MSGSATURDAY1
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGSATURDAY2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSATURDAY3
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSATURDAY4
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGSATURDAY5
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
     
    LEA DX,MSGSATURDAY6
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGSATURDAY7
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGSATURDAY8
    MOV AH,9
    INT 21H 
    
    JMP LOOP  
           
            ;SATURDAY FUNCTION  END
            
            
        ;SUNDAY FUNCTION  START    
    
    SUNDAY:
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
    LEA DX,MSGTIMETABLE
    MOV AH,9              ;MSGTIMETABLE
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
    
    LEA DX,MSGSUNDAY1
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY2
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY3
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY4
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY5
    MOV AH,9
    INT 21H
    
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY6
    MOV AH,9
    INT 21H 
    
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY7
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY8
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY9
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY10
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY11
    MOV AH,9
    INT 21H   
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY12
    MOV AH,9
    INT 21H  
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY13
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY14
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY15
    MOV AH,9
    INT 21H   
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGSUNDAY16
    MOV AH,9
    INT 21H 
    
    JMP LOOP
    
         ;SUNDAY FUNCTION  END  
    
    ;MONDAY FUNCTION  STRAT
    
    MONDAY:
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
 
    LEA DX,MSGTIMETABLE
    MOV AH,9              ;MSGTIMETABLE
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
    
    LEA DX,MSGMONDAY1
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY2
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY3
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY4
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY5
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY6
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY7
    MOV AH,9
    INT 21H  
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY8
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY9
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY10
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY11
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY12
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY13
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY14
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY15
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY16
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGMONDAY17
    MOV AH,9
    INT 21H
    
    JMP LOOP 
    
      ;MONDAY FUNCTION  END 
      
    ;TUESDAY FUNCTION  STRAT  
    
    TUESDAY:
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
 
    LEA DX,MSGTIMETABLE
    MOV AH,9              ;MSGTIMETABLE
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
    
    LEA DX,MSGTUESDAY1
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTUESDAY2
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTUESDAY3
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTUESDAY4
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTUESDAY5
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTUESDAY6
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTUESDAY7
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTUESDAY8
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTUESDAY9
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTUESDAY10
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTUESDAY11
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTUESDAY12
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTUESDAY13
    MOV AH,9
    INT 21H 
    
    JMP LOOP
    
        ;TUESDAY FUNCTION  END
        
    
    ;WEDNESDAY FUNCTION  STRAT   
        
    WEDNESDAY:
     
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
 
    LEA DX,MSGTIMETABLE
    MOV AH,9              ;MSGTIMETABLE
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
    
    LEA DX,MSGWEDNESDAY1
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGWEDNESDAY2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGWEDNESDAY3
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGWEDNESDAY4
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGWEDNESDAY5
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGWEDNESDAY6
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGWEDNESDAY7
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGWEDNESDAY8
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGWEDNESDAY9
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGWEDNESDAY10
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGWEDNESDAY11
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGWEDNESDAY12
    MOV AH,9
    INT 21H  
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGWEDNESDAY13
    MOV AH,9
    INT 21H 
    
    JMP LOOP
          
        ;WEDNESDAY FUNCTION  END
        
    ;THURSDAY FUNCTION  STRAT      
    
    THURSDAY:
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
 
    LEA DX,MSGTIMETABLE
    MOV AH,9              ;MSGTIMETABLE
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
    
    LEA DX,MSGTHURSDAY1
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTHURSDAY2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTHURSDAY3
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTHURSDAY4
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTHURSDAY5
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTHURSDAY6
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTHURSDAY7
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTHURSDAY8
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTHURSDAY9
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTHURSDAY10
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTHURSDAY11
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTHURSDAY12
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGTHURSDAY13
    MOV AH,9
    INT 21H
    
    JMP LOOP                   
         
         ;THURSDAY FUNCTION  END
         
    ;FRIDAY FUNCTION START
    
    FRIDAY:
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
 
    LEA DX,MSGTIMETABLE
    MOV AH,9              ;MSGTIMETABLE
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
    
    LEA DX,MSGFRIDAY1
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRIDAY2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRIDAY3
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRIDAY4
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRIDAY5
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRIDAY6
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRIDAY7
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRIDAY8
    MOV AH,9
    INT 21H
    
    JMP LOOP
    
      ;FRIDAY FUNCTION END
    
         
    ;PROJECT MENU START     
         
    PROJECTMENU:
    
    LEA DX,MSGFRAME1
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME3
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
    LEA DX,MSGFRAME4
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME5
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME6
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME7
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME8
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
  
    LEA DX,MSGFRAME9
    MOV AH,9
    INT 21H
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME10
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME11
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME12
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME13
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME14
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME15
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME16
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME17
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME18
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSGFRAME19
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSGFRAME20
    MOV AH,9
    INT 21H
             ;FRAME END 
             
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
    ;;;;;;;;;;
    
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
    
    LEA DX,MSGCHOSSEOPTION  ;CHOSSE OPTION
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H

    ;SCAN
    
    MOV AH,1
    INT 21H
    
    ;COMPARE  
    
    CMP AL,'1'
    JE SATURDAY
    
    CMP AL,'2'
    JE SUNDAY
    
    CMP AL,'3'
    JE MONDAY 
    
    CMP AL,'4'
    JE TUESDAY
    
    CMP AL,'5'
    JE WEDNESDAY
    
    CMP AL,'6'
    JE THURSDAY
    
    CMP AL,'7'
    JE FRIDAY
    
    CMP AL,'R'
    JE PROJECTMENU
    
    
    CMP AL,'E'
    JE EXIT 
    
   
    
    JMP LOOP ;;;;;;
         
         
    EXIT:     
    
    MAIN ENDP
END MAIN