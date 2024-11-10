.model small
.stack 100h
.data         
expression DB 10,13,'x+y-z-1= $'
.code      
main proc  
  
    call solution 
    
    mov ah, 4ch
    int 21h
    main endp  

solution proc   
    mov ah,1 
    int 21h
    mov bl,al 
 
    mov ah,1
    int 21h
    mov cl,al 
    
    add bl,cl
    sub bl,48
    mov cx,bx
    
    mov ah,1
    int 21h
    mov bl,al
    
    sub cx,bx
    add cx,48
    mov bx,cx 
 
    sub bx,49
    add bx,48 
    
    mov ax, @data
    mov ds, ax
    mov dl,expression
    mov dx, offset expression
    mov ah,9
    int 21h   
    
    mov dx,bx
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    
    ret
solution endp
end main



