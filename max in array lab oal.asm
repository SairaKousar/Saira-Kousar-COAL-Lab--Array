.model small
.stack 100h

.data
    arr DB 49, 50, 51, 52
    maxVal DB 0           

.code

main proc
    mov ax, @data
    mov ds, ax

    mov si, offset arr     
    mov cx, 4              

    mov al, [si]           
    mov maxVal, al        

max:
    inc si                 
    mov al, [si]           
    cmp al, maxVal         
    jle next       
    mov maxVal, al         

next:
    loop max         

   
    mov dl, maxVal        
    mov ah, 2             
    int 21h

    mov ah, 4Ch            
    int 21h

main endp
end main




