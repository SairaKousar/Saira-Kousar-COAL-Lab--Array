.model small
.stack 100h
.data         
addd DB 10,13,'Addition= $'
subb DB 10,13,'Subtraction= $'   
mull DB 10,13,'Multiplication= $'
divv DB 10,13,'Division= $'
.code      
main proc  
    
    
    call addition 
    call subtraction  
    call multiplication  
    call division
    
    mov ah, 4ch
    int 21h
    main endp  

addition proc   
    mov ah, 1
    int 21h 
    
    mov bl,al
    
    mov ah, 1
    int 21h
    mov cl,al
    
    add cl,bl
    sub cl,30h 
    
    
    mov ax, @data
    mov ds, ax
    mov dl,addd
    mov dx, offset addd
    mov ah,9
    int 21h 
     
    mov dl,cl
    mov ah,2
    int 21h 
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    
    ret
addition endp

subtraction proc   
    mov ah, 1
    int 21h 
    
    mov bl,al
    
    mov ah, 1
    int 21h
    mov cl,al
    
    sub cl,bl
    add cl,48
    
    
    mov ax, @data
    mov ds, ax
    mov dl,subb
    mov dx, offset subb
    mov ah,9
    int 21h 
     
    mov dl,cl
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    
    ret
subtraction endp 

multiplication proc   
    mov ah, 1
    int 21h 
    mov bl,al 
    sub bl,30h
    
    mov ah, 1
    int 21h  
    mov cl,al
    sub cl,30h
    
    mov al,bl
    
    mul cl 
    
    mov bl,al
    add bl,30h
    
    mov ax, @data
    mov ds, ax
    mov dl,mull
    mov dx, offset mull
    mov ah,9
    int 21h  
   
    mov dl,bl
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    
    ret
multiplication endp 

division proc   
    mov ah, 1
    int 21h 
    mov bl,al 
    add bl,30h
    
    mov ah, 1
    int 21h  
    mov cl,al
    add cl,30h
    
    mov al,bl
    
    div cl 
    
    mov ax, @data
    mov ds, ax
    mov dl,divv
    mov dx, offset divv
    mov ah,9
    int 21h  
   
    mov dl,bl 
    sub dl,30h
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    
    ret
division endp

end main



