dosseg
.model small
.stack 100h
.data
var1 db 100 dup('$')
.code
main proc
mov ax,@data
mov ds,ax
mov si,offset var1
l1:
mov ah,1
int 21h
mov [si],al
cmp al,13
je l2
inc si
jmp l1

l2:
dec si
mov cl,[si]
xor cl,32
mov [si],cl
mov dx,offset var1
mov ah,9
int 21h
mov ah,4ch
int 21h
main endp
end main
