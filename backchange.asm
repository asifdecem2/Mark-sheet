dosseg
.model small
.stack 100h
.code
main proc
 mov ah,6h
 mov al,0
 mov bh,97h
 mov cx,0
 mov dx,194fh
 int 10h
 mov ah,9
mov al,'a'
mov bh,0
mov bl,11000000b
mov cx,3
int 10h
mov ah,4ch
int 21h
main endp
end main