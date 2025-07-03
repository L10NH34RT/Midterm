; Variable values: result = (var1 + 2) / (var3 - var2)
; result = (10 + 2) / (20 - 4) = 12 / 16 = 0 

section .data
    var1 dd 10
    var2 dd 4  
    var3 dd 20
    
    msg db 'Result: ', 0
    newline db 10, 0

section .bss
    result resd 1

section .text
    global _start

_start:
    mov eax, [var1]        
    add eax, 2            
    
    mov ebx, [var3]        
    sub ebx, [var2]        
    
    cdq                    
    idiv ebx               

    mov [result], eax      
    
    add eax, '0'            
    mov [msg+8], eax        
    
    mov eax, 4             
    mov ebx, 1              
    mov ecx, msg           
    mov edx, 9             
    int 0x80
    
    mov eax, 1             
    mov ebx, 0              
    int 0x80
