
; Developed by Group Anonymous

; Group Members:

;   => Mohammad Salim Hosen    ID: 162-15-1044
;   => MD Rifat Rahman         ID: 162-15-1049
;   => MD Hasan Haider         ID: 162-15-1041
;   => Arifur Jaman            ID: 153-15-607

.stack 100h
.model small
.data
   d1 dw "                     *************************************            $"
   d2 dw "                    *                                     *           $"
   m1 dw "     ***************            MCQ Quiz System            *************** $"
   d3 dw "     *              *                                     *              * $"
   d4 dw "     *               *************************************               * $"
   d5 dw "     *                                                                   * $"
   d6 dw "     *                          ! Instructions !                         * $"
   d7 dw "     *         -> Select Subject to Start Exam.                          * $"
   d8 dw "     *         -> To Select Subject type '1' or '2' or '3'.              * $"
   d9 dw "     *         -> Your selected subject questions will appear.           * $"
   d10 dw "     *         -> To Answer Question type 'a' or 'b' or 'c' or 'd'.      * $"
   d11 dw "     *         -> On Finishing Exam you will get your Score.             * $"
   d12 dw "     ********************************************************************* $" 
       
   m3 dw "     Select Subject: $"
   m4 dw "     Enter your Choice: $"
   m5 dw " Your Answer: $"
   m6 dw "                                 Your Score: $"
   sc dw "                To See Correct Answers of this Question press 'A'$"
   m7 dw "                       Want to give Exam again? y/n$"
   m8 dw "                               Your Response: $"
   m9 dw "                       Thank you for using our Service.$"
   sub1 dw "                    1. Bangla$"
   sub2 dw "                    2. English$"
   sub3 dw "                    3. Math$"
   
   wq dw   "-------------------------------------------------------------------------------$"
   
   s1q1 dw " Question 1: Who is the national poetry of Bangladesh?                       $"
   s1q2 dw " Question 2: Gitanzali is Written by-                                        $"
   s1q3 dw " Question 3: When bangladesh became Independant?                             $"
   s1q4 dw " Question 4: Bangladesh is world's ____ highest Populous Country.            $"
   s1q5 dw " Question 5: 'Padma Nodir Majhi' is a-                                       $"
   
   s1o1 dw " a. Rabindranath  |  b. Kazi Nazrul  |  c. Jashim Uddin  |  d. Samsur Rahman$"
   s1o2 dw " a. Promoth Choudhry  |  b. Madhusudon  |  c. Begam Rokeya  |  d. Rabindranath$"
   s1o3 dw " a. 26 march 1972  |  b. 25 march 1971  |  c. 26 march 1971  |  d.25 march 1971$"
   s1o4 dw " a. 4th  |  b. 5th  |  c. 6th  |  d. 8th $"
   s1o5 dw " a. Novel  |  b. Story  |  c. Poem  |   d. Literature $"
   
   s2q1 dw " Question 1: Which one is Vowel? $"
   s2q2 dw " Question 2: How many years are there in a millennium?$"
   s2q3 dw " Question 3: Where ____ sarah live.$"
   s2q4 dw " Question 4: ____ lots of animal in the zoo$"
   s2q5 dw " Question 5: Jenny ____ Tried? $"
   
   s2o1 dw " a. B  |  b. P  |  c. O  |  d. S $"
   s2o2 dw " a. 1000  |  b. 10000  |  c. 12000  |  d. 120000 $"
   s2o3 dw " a. are  |  b. is  |  c. do  |  d. does $"
   s2o4 dw " a. There  |  b. There is  |  c. There are  |  d. There aren't $"
   s2o5 dw " a. be  |  b. has  |  c. is  |  d. have $"
   
   s3q1 dw " Question 1: Square root of a 100 is?$"
   s3q2 dw " Question 2: What number is missing? 2,4,6,8,10,__,14,16,18,20 $"
   s3q3 dw " Question 3: The roman numeral for 18 is ______. $"
   s3q4 dw " Question 4: What is the next prime number after 7? $"
   s3q5 dw " Question 5: 5 to the power of 0 equals what? $"
   
   s3o1 dw " a. 25  |  b. 20  |  c. 15  |  d. 10 $"
   s3o2 dw " a. 12  |  b. 11  |  c. 13  |  d. 14 $"
   s3o3 dw " a. XXVIII  |  b. XVIII  |  c. VVVIII  |  d. VVIII $"
   s3o4 dw " a. 11  |  b. 9  |  c. 13  |  d. 17 $"
   s3o5 dw " a. 2  |  b. 0  |  c. 1  |  d. 5 $"
   
   qsb dw "                         Answer of BANGLA Question             $"
   s1a1 dw " ANS: Kazi Nazrul$"
   s1a2 dw " ANS: Rabindranath$"
   s1a3 dw " ANS: 26 March 1971$"
   s1a4 dw " ANS: 8th$"
   s1a5 dw " ANS: Novel$"
   
   qse dw "                         Answer of English Question            $"
   s2a1 dw " ANS: O$"
   s2a2 dw " ANS: 1000$"
   s2a3 dw " ANS: does$"
   s2a4 dw " ANS: There are$"
   s2a5 dw " ANS: has$"
   
   qsm dw "                         Answer of Math Question               $"
   s3a1 dw " ANS: 10$"
   s3a2 dw " ANS: 12$"
   s3a3 dw " ANS: XVIII$"
   s3a4 dw " ANS: 11$"
   s3a5 dw " ANS: 1$"
   
   dc dw "                    Press 'y' to go Home or any key to Cancel. $"
   wrong dw "                               Wrong Input!$"   
.code
main proc
    mov ax,@data
    mov ds,ax
    
    while:
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d1
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d2
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d3
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d4
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d5
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d6
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d5
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d7
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d8
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d9
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d10
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d11
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d5
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,d12
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
    lea dx,m3
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,sub1
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,sub2
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,sub3
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
    lea dx,m4
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    
    xor cx,cx
    
    cmp bl,'1'
    je bangla
    
    cmp bl,'2'
    je english
    
    cmp bl,'3'
    je math
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,wrong
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    jmp while
    
    bangla:
       bques1:
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
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s1q1
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
          mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s1o1
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'b'
         jne end_bques1
         
         inc cx
         
         end_bques1:
         
         bques2:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s1q2
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s1o2
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'d'
         jne end_bques2
         
         inc cx
         
         end_bques2:
         
         bques3:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s1q3
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s1o3
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'c'
         jne end_bques3
         
         inc cx
         
         end_bques3:
         
         bques4:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s1q4
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s1o4
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'d'
         jne end_bques4
         
         inc cx
         
         end_bques4:
         
         
         bques5:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s1q5
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s1o5
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'a'
         jne end_bques5
         
         inc cx
         
         end_bques5:
         
         jmp score
    
    english:
         eques1:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s2q1
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s2o1
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'c'
         jne end_eques1
         
         inc cx
         
         end_eques1:
         
         eques2:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s2q2
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s2o2
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'a'
         jne end_eques2
         
         inc cx
         
         end_eques2:
         
         eques3:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s2q3
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s2o3
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
                
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
                
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'d'
         jne end_eques3
         
         inc cx
         
         end_eques3:
         
         eques4:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s2q4
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s2o4
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'c'
         jne end_eques4
         
         inc cx
         
         end_eques4:
         
         
         eques5:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s2q5
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s2o5
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'b'
         jne end_eques5
         
         inc cx
         
         end_eques5:
         
         jmp score
    
    math:
         mques1:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s3q1
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s3o1
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'d'
         jne end_mques1
         
         inc cx
         
         end_mques1:
         
         mques2:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s3q2
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s3o2
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'a'
         jne end_mques2
         
         inc cx
         
         end_mques2:
         
         mques3:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s3q3
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s3o3
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'b'
         jne end_mques3
         
         inc cx
         
         end_mques3:
         
         mques4:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s3q4
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s3o4
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'a'
         jne end_mques4
         
         inc cx
         
         end_mques4:
         
         
         mques5:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s3q5
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,s3o5
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,m5
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'c'
         jne end_mques5
         
         inc cx
         
         end_mques5:
         
         score:
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,wq
         int 21h 
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h 
         
         mov ah,9
         lea dx,m6
         int 21h
         
         
         add cl,'0'
         
         mov ah,2
         mov dl,cl
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
         mov ah,9
         lea dx,sc
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         
        
         mov ah,9
         lea dx,m7
         int 21h
         
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
        
         mov ah,9
         lea dx,m8
         int 21h
         
         mov ah,1
         int 21h
         
         cmp al,'A'
         je correctAns
         
         cmp al,'y'
         je while
         jne thanks
         
     correctAns:
        
        cmp bl,'1'
        je banglaAns
        
        cmp bl,'2'
        je englishAns
        
        cmp bl,'3'
        je mathAns
     
        banglaAns:
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            mov ah,9
            lea dx,wq
            int 21h
             
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            mov ah,9
            lea dx,qsb
            int 21h
             
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            mov ah,9
            lea dx,wq
            int 21h
             
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            mov ah,9
            lea dx,s1q1
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s1a1
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
            lea dx,s1q2
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s1a2
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
            lea dx,s1q3
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s1a3
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
            lea dx,s1q4
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s1a4
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
            lea dx,s1q5
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s1a5
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            jmp decession 
            
         EnglishAns:
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            mov ah,9
            lea dx,wq
            int 21h
             
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            mov ah,9
            lea dx,qse
            int 21h
             
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            mov ah,9
            lea dx,wq
            int 21h
             
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            mov ah,9
            lea dx,s2q1
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s2a1
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
            lea dx,s2q2
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s2a2
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
            lea dx,s2q3
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s2a3
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
            lea dx,s2q4
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s2a4
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
            lea dx,s2q5
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s2a5
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            jmp decession
            
        mathAns:
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            mov ah,9
            lea dx,wq
            int 21h
             
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            mov ah,9
            lea dx,qsm
            int 21h
             
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            mov ah,9
            lea dx,wq
            int 21h
             
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            mov ah,9
            lea dx,s3q1
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s3a1
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
            lea dx,s3q2
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s3a2
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
            lea dx,s3q3
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s3a3
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
            lea dx,s3q4
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s3a4
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
            lea dx,s3q5
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            
            mov ah,9
            lea dx,s3a5
            int 21h
            
            mov ah,2
            mov dl,0dh
            int 21h
            mov dl,0ah
            int 21h
            
            jmp decession   
        
        decession:
        mov ah,9
        lea dx,wq
        int 21h
         
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov ah,9
        lea dx,dc
        int 21h
         
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov ah,9
        lea dx,m8
        int 21h
        
        mov ah,1
        int 21h
        
        mov cl,al
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        cmp cl,'y'
        je while
        
        
         
     thanks:
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov ah,9
        lea dx,wq
        int 21h
         
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov ah,9
        lea dx,m9
        int 21h
        
main endp
end main

