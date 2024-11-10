.model small
.stack 100h
.data         
first DB 'My name is hamna qasim.$'
second DB 'Im studying computer science in Riphah University.$'
.code      
main proc  
    
    
    call self  
    
    mov ah, 4ch
    int 21h
    main endp  

self proc 
    mov ax, @data
    mov ds, ax
    mov dl,first
    mov dx, offset first
    mov ah,9
    int 21h  
    
    mov dx, 10
    mov ah,2
    int 21h
    mov dx,13
    mov ah,2
    int 21h 
    
    mov ax, @data
    mov ds, ax
    mov dl, second
    mov dx, offset second 
    mov ah,9
    int 21h
    ret
self endp

end main


