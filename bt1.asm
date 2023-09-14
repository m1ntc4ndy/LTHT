.model small
.stack 50
.data
   tbao1 db 'Hay nhap 1 ky tu: $'
   tbao2 db 10,13,'ky tu da nhap: $'
   kytu  db ? 
    
.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, tbao1   ;mov dx, offset tbao1
    mov ah, 9
    int 21h   
    
    mov ah, 7
    int 21h
    mov kytu, al
                
    lea dx, tbao2   
    mov ah, 9
    int 21h
    
    mov ah, 2
    mov dl, kytu
    int 21h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main
