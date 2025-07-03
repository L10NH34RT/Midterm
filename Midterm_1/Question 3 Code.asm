section .data
    number dd 17                
    
    msg_odd db 'odd number', 10, 0 ;odd number display
    msg_even db 'even number', 10, 0 ;even number display
    
section .text
    global _start

_start:
    mov eax, [number]           
    
    mov ebx, 2                 
    cdq                         
    idiv ebx                   
                               
    cmp edx, 0                 
    je print_even               
    jmp print_odd               
    
print_even:
    mov eax, 4                 
    mov ebx, 1                  
    mov ecx, msg_even          
    mov edx, 12                
    int 0x80
    jmp exit_program
    
print_odd:
    mov eax, 4                  
    mov ebx, 1                  
    mov ecx, msg_odd           
    mov edx, 11                 
    int 0x80
    

exit_program:
    mov eax, 1                 
    mov ebx, 0                  
    int 0x80
