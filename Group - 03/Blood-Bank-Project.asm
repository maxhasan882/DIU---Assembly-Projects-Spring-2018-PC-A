.stack 100h
.model small
.data
    msg1 db 10,13,'     * * * * * * * * * * * * * * * * * * * * * *$'
    msg2 db 10,13,'     * * *                                 * * *$'  
    msg3 db 10,13,'     * *                                     * *$' 
    msg4 db 10,13,'     *           DIU Blood Bank                *$'
    msg5 db 10,13,'     * *                                     * *$' 
    msg6 db 10,13,'     * * *                                 * * *$' 
    msg7 db 10,13,'     * * * * * * * * * * * * * * * * * * * * * *$'
    msg8 db 10,13,'     * * * * * * * * * * * * * * * * * * * * * *$' 
    msg9 db 10,13,'     * * *                                 * * *$'
    msgh0 db 10,13,'    * * *            ## Home Page ##       * * *$'
    msgh1 db 10,13,'    * *                                      * *$' 
    msgh2 db 10,13,'     *            1. New Registartion          *$'
    msgh3  db 10,13,'    *                                         *$'
    msgh4 db 10,13,'     *            2. Blood Group List          *$'
    msgh5 db 10,13,'     *                                         *$'
    msgh6 db 10,13,'     *            3. Available Donor           *$'
    msgh7 db 10,13,'     *                                         *$'
    msgh8 db 10,13,'     *            4. Exit                      *$'
    msgh9 db 10,13,'     * *                                     * *$' 
    msgh10 db 10,13,'    * * *                                 * * *$' 
    msgh11 db 10,13,'    * * * * * * * * * * * * * * * * * * * * * *$'
    msgh12 db 10,13,13,'         Please Select an Option (1-4> :    $'
    msgreg db 10,13,'        ##    Blood Donor Registration Form #  $'
    msgreg1 db 10,13,'            Registration Successful!          $' 
    msg11 db 10,13,'     *            Blood Group List             *$'
    msg12 db 10,13,'     *            1. A+                        *$'
    msg13 db 10,13,'     *            2. B+                        *$'
    msg14 db 10,13,'     *            3. AB+                       *$'
    msg15 db 10,13,'     *            4. AB-                       *$'
    msg16 db 10,13,'     *            5. O+                        *$'
    msg17 db 10,13,'     *            6. O-                        *$'
    msg18 db 10,13,'     * *                                     * *$' 
    msg19 db 10,13,'     * * *                                 * * *$' 
    msg20 db 10,13,'     * * * * * * * * * * * * * * * * * * * * * *$'
    msg21 db 10,10,13,'     Choose Option ( 1 - 6 ) : $'
    msg22 db 10,13,'        Name        : $'
    msg23 db 10,13,'        ID          : $'
    msg24 db 10,13,'        Contact     : $'
    msgh13 db 10,13,'        Email       : $'
    msgh14 db 10,13,'        Adrress     : $'
    msgh15 db 10,13,'        Blood Group : $' 
    msg25 db '     MANNA                $'
    msg26 db '     121-11-1082          $'
    msg27 db '     0190903211           $'
    msg28 db '     SHARNALI GHOSH       $'
    msg29 db '     162-15-1081          $'
    msg30 db '     01925924607          $'
    msg31 db '     SHAHEEN HOSSIAN      $'
    msg32 db '     162-15-1069          $'
    msg33 db '     01679965846          $'
    msg34 db '     AZIM Hossain         $'
    msg35 db '     162-15-1091          $'
    msg36 db '     01910081288          $'
    msg37 db '     SULTAN MAHMUD SHAWON $'
    msg38 db '     162-15-1079          $'
    msg39 db '     01680269688          $'
    msg40 db '     TAMANNA TANJILA      $'
    msg41 db '     162-15-1082          $'
    msg42 db '     01792678909          $'
    msg43 db 10,10,13,'     Do You Want To Continue? ( Y / N ) : $'
    msg44 db 10,10,13,'     Invalid Input! $'
    msg45 db 10,10,13,'                         Thanku!! $'
    msg46 db 10,10,'        Available Donors at this Moment::: $'
    msg47 dw            '                         (B+)    $'
    msg48 dw            '                         (AB+)   $'
    msg49 dw            '                         (0-)    $'
    msg50 db 10,10,'  For  Contacting Someone Press     <C> $'
    msg51 db 10,10,'  To go to Homepage Press   <H>      $'
    msg52 db 10,10,'  To Exit Press      <E>      $'
    msg53 db '                                         :      $'
 
    
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    ;----- Start of Printing the Title Box -----
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,9
    lea dx,msg3
    int 21h
    
    mov ah,9
    lea dx,msg4
    int 21h    
    
    mov ah,9
    lea dx,msg5
    int 21h    
    
    mov ah,9
    lea dx,msg6
    int 21h    
    
    mov ah,9
    lea dx,msg7
    int 21h
    
    mov ah,9
    lea dx,msg8
    int 21h    
    
    mov ah,9
    lea dx,msg9
    int 21h     
    
    ;----- End of Printing the Title Box -----
   
     
    ;HOME PAGE
    
    home:
    
         mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
    
    mov ah,9
    lea dx,msgh0
    int 21h     
    
    mov ah,9
    lea dx,msgh1
    int 21h     
    
    mov ah,9
    lea dx,msgh2
    int 21h     
    
    mov ah,9
    lea dx,msgh3
    int 21h     
    
    mov ah,9
    lea dx,msgh4
    int 21h     
    
    mov ah,9
    lea dx,msgh5
    int 21h
    
    mov ah,9
    lea dx,msgh6
    int 21h
    
    mov ah,9
    lea dx,msgh7
    int 21h
    
    mov ah,9
    lea dx,msgh8
    int 21h
    
    mov ah,9
    lea dx,msgh9
    int 21h
    
    mov ah,9
    lea dx,msgh10
    int 21h
    
    mov ah,9
    lea dx,msgh11
    int 21h
    
    mov ah,9
    lea dx,msgh12
    int 21h
    
    ;END OF HOME PAGE
    
    
    ;Home Page Menu
    
    mov ah,1            ;Input for choosing option
    int 21h
    
    mov bl,al           ;Move input to BL register 
    
    cmp bl,'1'          ;Comparing with option 1
    je regis
    
    cmp bl,'2'          ;Comparing with option 2
    je mainmenu
    
    cmp bl,'3'          ;Comparing with option 3
    je avail
    
    cmp bl,'4'          ;Comparing with option 3
    je thank
    
    jmp invalid4
    
    
        
    
    
    ;Registration Form
    
    regis:
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
    
    mov ah,9
    lea dx,msgreg
    int 21h    
 
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg7
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        
        mov ah,9
        lea dx,msg22    ;Registration
        int 21h
        
       
        
        jmp nam
        
        nam:
            mov ah,1
            
            repeat:
            int 21h
            cmp al,0dh
            jne repeat
            jmp id
       
        
        
        id:
        
        mov ah,9
        lea dx,msg23
        int 21h
            mov ah,1
            
            repeat1:
            int 21h
            cmp al,0dh
            jne repeat1
            jmp cont
             
        
         cont:
         
          mov ah,9
        lea dx,msg24
        int 21h
            mov ah,1
            
            repeat2:
            int 21h
            cmp al,0dh
            jne repeat2
            jmp mail
        
        
        mail:
        
        mov ah,9
        lea dx,msgh13
        int 21h
         
        mov ah,1
        
         repeat4:
            int 21h
            cmp al,0dh
            jne repeat4
            jmp ad
        
        
        ad:
        mov ah,9
        lea dx,msgh14
        int 21h     
           
           mov ah,1
            
            repeat5:
            int 21h
            cmp al,0dh
            jne repeat5
            jmp grup
            
            
        grup:
        
        mov ah,9
        lea dx,msgh15
        int 21h  
        
        mov ah,1
            
        repeat6:
        int 21h
        cmp al,0dh
        jne repeat6
           
        mov ah,9
        lea dx,msg5
        int 21h
        
        mov ah,9
        lea dx,msg6
        int 21h
           
        mov ah,9
        lea dx,msg7
        int 21h   
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov ah,9
        lea dx,msgreg1
        int 21h
        mov ah,2
        
        
        jmp conti    ;Go to continue level to check continue or not 
    
       
        conti:
        mov ah,9
        lea dx,msg43
        int 21h 
        
        mov ah,1        ;Take input to choose option ( Y / N )
        int 21h
        
        mov bl,al       ;moved the value of al to bl resigter
        
        cmp bl,'Y'      ;Comparing with Y
        je home
        
        cmp bl,'N'      ;Comparing with N
        je thank 
        
        jmp invalid3
        
        invalid3:
        mov ah,9
        lea dx,msg44
        int 21h
        
        jmp conti
        
        invalid4:
        mov ah,9
        lea dx,msg44
        int 21h
        
        jmp home
        
        
       
    
     ;..........END OF REGISTRATION........
     
    
    ;Menu
    
    mainmenu:
    
    mov ah,9
    lea dx,msg8
    int 21h    
    
    mov ah,9
    lea dx,msg9
    int 21h    
    
        
    
    mov ah,9
    lea dx,msg11
    int 21h     
    
    mov ah,9
    lea dx,msg12
    int 21h     
    
    mov ah,9
    lea dx,msg13
    int 21h     
    
    mov ah,9
    lea dx,msg14
    int 21h     
    
    mov ah,9
    lea dx,msg15
    int 21h
    
    mov ah,9
    lea dx,msg16
    int 21h
    
    mov ah,9
    lea dx,msg17
    int 21h
    
    mov ah,9
    lea dx,msg18
    int 21h
    
    mov ah,9
    lea dx,msg19
    int 21h
    
    mov ah,9
    lea dx,msg20
    int 21h
    
    mov ah,9
    lea dx,msg21
    int 21h
    
    ;End of Menu 
    
    
    
    
    
    
    ;----- End of Printing the Menu/List Box -----
    
    mov ah,1            ;Input for choosing option
    int 21h
    
    mov bl,al           ;Move input to BL register 
    
    cmp bl,'1'          ;Comparing with option 1
    je one
    
    cmp bl,'2'          ;Comparing with option 2
    je two
    
    cmp bl,'3'          ;Comparing with option 3
    je three
    
    cmp bl,'4'          ;Comparing with option 4
    je four
    
    cmp bl,'5'          ;Comparing with option 5
    je five
    
    cmp bl,'6'          ;Comparing with option 6
    je six
    
    jmp invalid1        ;Jump to invalid level if any invalid input detected
    
    ;----- Start of Level one -----
    
    one: 
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg7
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
         mov ah,9
        lea dx,msg12
        int 21h    
     
        
        mov ah,9
        lea dx,msg22    ;Printing Necessesary Details Level one and so on all other level
        int 21h
        
        mov ah,9
        lea dx,msg25
        int 21h
        
        mov ah,9
        lea dx,msg23
        int 21h
        
        mov ah,9
        lea dx,msg26
        int 21h
        
        mov ah,9
        lea dx,msg24
        int 21h     
            
        
        mov ah,9
        lea dx,msg27
        int 21h  
        
        mov ah,9
        lea dx,msg5
        int 21h
        
        mov ah,9
        lea dx,msg6
        int 21h
           
        mov ah,9
        lea dx,msg7
        int 21h   
        
        jmp continue    ;Go to continue level to check continue or not     
        
    ;----- End of Level one ----- 
    
    ;----- Start of Level two -----
        
    two:
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg7
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,9
        lea dx,msg13
        int 21h
        
        mov ah,9
        lea dx,msg22
        int 21h
        
        mov ah,9
        lea dx,msg28
        int 21h
        
        mov ah,9
        lea dx,msg23
        int 21h     
        
        mov ah,9
        lea dx,msg29
        int 21h
        
        mov ah,9
        lea dx,msg24
        int 21h     
        
        mov ah,9
        lea dx,msg30
        int 21h  
        
        mov ah,9
        lea dx,msg5
        int 21h
        
        mov ah,9
        lea dx,msg6
        int 21h
           
        mov ah,9
        lea dx,msg7
        int 21h  
        
        jmp continue
        
    ;----- End of Level two -----
    
    ;----- Start of Level three -----
    
    three:  
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg7
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,9
        lea dx,msg14
        int 21h
        
        mov ah,9
        lea dx,msg22
        int 21h
        
        mov ah,9
        lea dx,msg31
        int 21h
        
        mov ah,9
        lea dx,msg23
        int 21h     
        
        mov ah,9
        lea dx,msg32
        int 21h
        
        mov ah,9
        lea dx,msg24
        int 21h     
        
        mov ah,9
        lea dx,msg33
        int 21h  
        
        mov ah,9
        lea dx,msg5
        int 21h
        
        mov ah,9
        lea dx,msg6
        int 21h
           
        mov ah,9
        lea dx,msg7
        int 21h   
        
        jmp continue
    
    ;----- End of Level three -----
    
    ;----- Start of Level four ----- 
     
    four:    
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg7
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,9
        lea dx,msg15
        int 21h
        
        mov ah,9
        lea dx,msg22
        int 21h
        
        mov ah,9
        lea dx,msg34
        int 21h
        
        mov ah,9
        lea dx,msg23
        int 21h     
        
        mov ah,9
        lea dx,msg35
        int 21h
        
        mov ah,9
        lea dx,msg24
        int 21h     
        
        mov ah,9
        lea dx,msg36
        int 21h  
        
        mov ah,9
        lea dx,msg5
        int 21h
        
        mov ah,9
        lea dx,msg6
        int 21h
           
        mov ah,9
        lea dx,msg7
        int 21h 
        
        jmp continue
    
    ;----- End of Level four -----
    
    ;----- Start of Level five -----   
    
    five:  
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg7
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,9
        lea dx,msg16
        int 21h
        
        mov ah,9
        lea dx,msg22
        int 21h
        
        mov ah,9
        lea dx,msg37
        int 21h
        
        mov ah,9
        lea dx,msg23
        int 21h     
        
        mov ah,9
        lea dx,msg38
        int 21h
        
        mov ah,9
        lea dx,msg24
        int 21h     
        
        mov ah,9
        lea dx,msg39
        int 21h  
        
        mov ah,9
        lea dx,msg5
        int 21h
        
        mov ah,9
        lea dx,msg6
        int 21h
           
        mov ah,9
        lea dx,msg7
        int 21h 
        
        jmp continue                
        
    ;----- End of Level five -----

    ;----- Start of Level six -----
    
    six:  
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg7
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,9
        lea dx,msg17
        int 21h
        
        mov ah,9
        lea dx,msg22
        int 21h
        
        mov ah,9
        lea dx,msg40
        int 21h
        
        mov ah,9
        lea dx,msg23
        int 21h     
        
        mov ah,9
        lea dx,msg41
        int 21h
        
        mov ah,9
        lea dx,msg24
        int 21h     
        
        mov ah,9
        lea dx,msg42
        int 21h  
        
        mov ah,9
        lea dx,msg5
        int 21h
        
        mov ah,9
        lea dx,msg6
        int 21h
           
        mov ah,9
        lea dx,msg7
        int 21h 
        
        jmp continue
        
    ;----- Start of Level six ----- 
    
    ;----- Start of Level continue -----
    
    continue:
        mov ah,9
        lea dx,msg43
        int 21h 
        
        mov ah,1        ;Take input to choose option ( Y / N )
        int 21h
        
        mov bl,al       ;moved the value of al to bl resigter
        
        cmp bl,'Y'      ;Comparing with Y
        je mainmenu
        
        cmp bl,'N'      ;Comparing with N
        je home 
        
        jmp invalid     ;Goto Invalid if none of are availabe as Student 
        
    ;----- End of Level continue -----
    
    ;----- Start of Level invalid -----
    
    invalid:
        mov ah,9
        lea dx,msg44
        int 21h
        
        jmp continue
        
    ;----- End of Level invalid -----
    
    ;----- Start of Level invalid1 -----
        
    invalid1:
        mov ah,9
        lea dx,msg44
        int 21h
        
        jmp mainmenu                    
        
    ;----- End of Level invalid1 -----
    
    
    
    ;Available Donor 
    
    
    avail:
    
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov ah,9
        lea dx,msg28
        int 21h
        
        mov ah,9
        lea dx,msg47
        int 21h
        
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg31
        int 21h
         
        mov ah,9
        lea dx,msg48
        int 21h
         
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
         
        mov ah,9
        lea dx,msg40
        int 21h
        
        mov ah,9
        lea dx,msg49
        int 21h
        
        opt:
    
        mov ah,9
        lea dx,msg50
        int 21h
        
        mov ah,9
        lea dx,msg51
        int 21h
    
    
        mov ah,9
        lea dx,msg52
        int 21h
        
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov ah,9
        lea dx,msg53
        int 21h
        
        ;Home Page Menu
    

    mov ah,1            ;Input for choosing option
    int 21h
    
    mov bl,al           ;Move input to BL register 
    
    cmp bl,'C'          ;Comparing with option C
    je mainmenu
    
    cmp bl,'H'          ;Comparing with option H
    je home 
    
    cmp bl,'E'          ;Comparing with option E
    je thank
    
   jmp invalid5
   
   invalid5:
        mov ah,9
        lea dx,msg44
        int 21h
        
        jmp opt 
    
    thank:
    
           
    
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
    
        
        mov ah,9
        lea dx,msg45
        int 21h
        
        jmp exit 
    
           
    
    exit:   ;Exit Level   
    
    main endp
end main
