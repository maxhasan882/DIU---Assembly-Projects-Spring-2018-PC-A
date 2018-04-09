.model small
.stack 100h
.data 
msg dw "                    * * * welcome to our project * * *$"
msg1 dw "           ! ! ! our project name is selling system ! ! !$"
msg2 dw "#we have 4 item$"
msg3 dw "a.chocolate-20tk $"
msg4 dw "b.coke-30tk$"
msg5 dw "c.ice-cream-20tk$"
msg6 dw "d.cake-20 tk$"
msg7 dw "if you want to buy something press 'y' otherwise pree 'n' $"
msg8 dw "you want to buy anything: y/n$"
msg9 dw "your response:$"
msg10 dw "thank you!$"
msg11 dw "do you want to buy chocolate?$"
msg12 dw "press 'a'$"
msg13 dw "do you want to buy coke?$"
msg14 dw "press 'b'$"
msg15 dw "do you want to buy ice-cream?$"
msg16 dw "press 'c'$"
msg17 dw "do you want to buy cake?$"
msg18 dw "press 'd'$" 
msg19 dw "your choice:$"
msg20 dw " thank you sir or maam for buying our product$"
m21 dw "You Have Bought: $"
m22 dw "Chocolate   (20tk):  $"
m23 dw "Coke        (30tk):  $"
m24 dw "Ice-Cream   (20tk):  $"
m25 dw "Cake        (20tk):  $"   
p dw " Piece$";
.code
main proc 
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
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
    
    
    lea dx,msg1
    mov ah,9
    int 21h
    
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
    
     lea dx,msg2
    mov ah,9
    int 21h 
    
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
    
   lea dx,msg3
   mov ah,9
    int 21h 
    
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
    
    lea dx,msg4
    mov ah,9
    int 21h 
    
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
    
          
    lea dx,msg5
    mov ah,9
    int 21h
    
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
    
    lea dx,msg6
    mov ah,9
    int 21h
    
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
    
    lea dx,msg7
    mov ah,9
    int 21h 
    
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
    
    xor bl,bl
    xor cl,cl
    xor bh,bh
    xor ch,ch
     
    mon:
    
    lea dx,msg8
    mov ah,9
    int 21h
    
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
    
    lea dx,msg9
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    cmp al,'y'
    je yes
    
    cmp al,'n'
    je no 
    
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
     jmp no
    
    yes: 
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
     lea dx,msg11
    mov ah,9
    int 21h
    
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
 
    
     lea dx,msg12
    mov ah,9
    int 21h
    
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
 
     lea dx,msg13
    mov ah,9
    int 21h
    
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
 
      lea dx,msg14
    mov ah,9
    int 21h
    
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
 
    lea dx,msg15
    mov ah,9
    int 21h
    
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
  
     lea dx,msg16
    mov ah,9
    int 21h
    
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
 
     lea dx,msg17
    mov ah,9
    int 21h
    
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
    
     lea dx,msg18
    mov ah,9
    int 21h
    
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
    
     lea dx,msg19
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
   
    cmp al,'a'
    je chocolate
    
    cmp al,"b"
    je coke
    
    cmp al,'c'
    je ice-cream
    
    cmp al,'d'
    je cake
    
    
    chocolate:
     
     inc cl
     
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
    lea dx,m21
    int 21h
    
     lea dx,msg3
    mov ah,9
    int 21h
   
    
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
    
     lea dx,msg20
    mov ah,9
    int 21h
    
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
     jmp mon
     
     coke:
    
    inc ch
      
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
    lea dx,m21
    int 21h
      
      lea dx,msg4
    mov ah,9
    int 21h
    
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
 
     lea dx,msg20
    mov ah,9
    int 21h
    
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
    jmp mon
    
     ice-cream:
     
     inc bl
      
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
    lea dx,m21
    int 21h 
      
      lea dx,msg5
    mov ah,9
    int 21h
    
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
 
      lea dx,msg20
    mov ah,9
    int 21h
    
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
     jmp mon
     
     cake: 
     
     inc bh
     
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
    lea dx,m21
    int 21h
     
      lea dx,msg6
    mov ah,9
    int 21h
    
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
 
     lea dx,msg20
    mov ah,9
    int 21h
    
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
  
    jmp mon
    no: 
    
    add bl,'0'
    add cl,'0'
    add bh,'0'
    add ch,'0'
    
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
    lea dx,m21
    int 21h 
    
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
    lea dx,m22
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
    
     mov ah,9
    lea dx,p
    int 21h 
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,m23
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
     mov ah,9
    lea dx,p
    int 21h 
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,m24
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
     mov ah,9
    lea dx,p
    int 21h 
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,m25
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
     mov ah,9
    lea dx,p
    int 21h 
    
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
    
    lea dx,msg10
    mov ah,9
    int 21h
    
    
    
    main endp
end main