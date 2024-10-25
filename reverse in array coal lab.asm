.model small
.stack 100h
.data
arr db 49,50,51,52,53
.code
main proc         
    
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr+4
    mov cx,5
    
    loopx:
    mov dl,[si] 
    
    mov ah,2
    int 21h 
    
   mov dx,33
   mov ah,2
   int 21h
    
    dec si
    loop loopx 
    
    mov ah,4ch
    int 21h   
    
    main endp
end main




