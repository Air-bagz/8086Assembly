assume cs:codesg,ds:datasg

datasg segment
  db 'BaSiC'
  db 'MinIX'
datasg ends

codesg segment		;[bx]定址法
start:
  mov ax,datasg
  mov ds,ax
  
   mov bx,0			;定位第一个字符串中的字符
   mov cx,5
s: mov al,[bx]		
   and al,11011111b
   mov [bx],al
   inc bx
   loop s

   mov bx,5			;定位第二个字符串中的字符
   mov cx,5
s0:mov al,[bx]		
   or al,00100000b
   mov [bx],al
   inc bx
   loop s0

   mov ax,4c00h
   int 21h
codesg ends
end start
