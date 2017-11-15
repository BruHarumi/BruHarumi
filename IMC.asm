# Simple input/output in MIIPS assembly
# From: http://labs.cs.upt.ro/labs/so2/html/resources/nachos-doc/mipsf.html

	# Start .text segment (program code)
	.text
	
	.globl	main
main:
	# Print string msg1
	li	$v0,4		
	la	$a0, msg1	
	syscall

	# Get input A from user and save
	li	$v0,5		
	syscall	
	move	$t0,$v0		

	# Print string msg2
	li	$v0,4		
	la	$a0, msg2	
	syscall

	# Print string msg2
	li	$v0,5		
	syscall	
	move	$t1,$v0		

	# Math!
	mul	$t1, $t1, $t1	
	div	$t0, $t1, $t0
	
	# Print string msg3
	li	$v0, 4
	la	$a0, msg3
	syscall

	# Print sum
	li	$v0,1		
	move	$a0, $t0	
	syscall

	# Print \n
	li	$v0,4		
	la	$a0, newline
	syscall

	li	$v0,10		
	syscall

	.data
msg1:	.asciiz	"Digite sua altura:"
msg2:	.asciiz	"Digite seu peso:"
msg3:	.asciiz	"Peso /altura² "
newline:   .asciiz	"\n"
