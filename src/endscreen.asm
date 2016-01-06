TiTLE endscreen

INCLUDE Irvine32.inc

.data
	ggtext1 	BYTE	"        ::::::::          :::         ::::     ::::     ::::::::::",0
	ggtext2 	BYTE	"       :+:    :+:       :+: :+:       +:+:+: :+:+:+     :+:       ",0
	ggtext3 	BYTE	"       +:+             +:+   +:+      +:+ +:+:+ +:+     +:+       ",0
	ggtext4 	BYTE	"       :#:  #+#+#     +#++:++#++:     +#+  +:+  +#+     +#++:++#  ",0
	ggtext5 	BYTE	"       +#+  + #+#     +#+     +#+     +#+       +#+     +#+       ",0
	ggtext6 	BYTE	"       #+#    #+#     #+#     #+#     #+#       #+#     #+#       ",0
	ggtext7 	BYTE	"        ########      ###     ###     ###       ###     ##########",0
	ggtext8 	BYTE	"                ::::::::      :::     :::     ::::::::::     :::::::::  ",0
	ggtext9 	BYTE	"               :+:    :+:     :+:     :+:     :+:            :+:    :+: ",0
	ggtext10 	BYTE	"               +:+    +:+     +:+     +:+     +:+            +:+    +:+ ",0
	ggtext11	BYTE	"               +#+    +:+     +#+     +:+     +#++:++#       +#++:++#:  ",0
	ggtext12 	BYTE	"               +#+    +#+      +#+   +#+      +#+            +#+    +#+ ",0
	ggtext13 	BYTE	"               #+#    #+#       #+#+#+#       #+#            #+#    #+# ",0
	ggtext14 	BYTE	"                ########          ###         ##########     ###    ### ",0
	spStr		BYTE	"                       ",0
	space2     	BYTE 	"                 ",0
	chStr1		BYTE	"Again",0
	chStr2		BYTE	"Menu",0
	eStr		BYTE	"Enter your name:"
	deStr		BYTE	"_______________"
    buffer      BYTE  50  DUP(0)  
    byteCount   DWORD   ?                                                                
	
.code
endscreen PROC

PLAYERSNAME:
	call	ClrScr
	call 	Crlf
	call 	Crlf
	mov	edx, OFFSET[ggtext1]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext2]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext3]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext4]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext5]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext6]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext7]
	call 	WriteString
	call 	Crlf
	call 	Crlf
	mov	edx, OFFSET[ggtext8]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext9]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext10]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext11]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext12]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext13]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext14]
	call 	WriteString
	call 	Crlf
	call 	Crlf
	call 	Crlf
	mov 	edx, OFFSET[spStr] 		
	call 	WriteString		
	mov		edx, OFFSET[eStr]
	call 	WriteString		
	mov  	dl ,39                       
    mov  	dh, 19                       
    call    Gotoxy
	mov     edx  , OFFSET buffer
	call	ReadString
	call	crlf
	jmp		CHE1
CHE1:
	call	ClrScr
	mov  	edx ,0                       
	call 	Crlf
	call 	Crlf
	mov	edx, OFFSET[ggtext1]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext2]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext3]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext4]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext5]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext6]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext7]
	call 	WriteString
	call 	Crlf
	call 	Crlf
	mov	edx, OFFSET[ggtext8]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext9]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext10]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext11]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext12]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext13]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext14]
	call 	WriteString
	call 	Crlf
	call 	Crlf
	call 	Crlf
	mov 	edx, OFFSET[space2] 		
	call 	WriteString			
	call 	WriteString			
	mov	eax,white+(blue*16)		
	call	SetTextColor		
	mov 	edx, OFFSET chStr1	
	call 	WriteString			
	mov	eax,white+(black*16)	
	call	SetTextColor		
	call 	Crlf						
	mov 	edx, OFFSET[space2] 
	call 	WriteString
	call 	WriteString
	mov 	edx, OFFSET chStr2
	call 	WriteString
	call 	ReadChar
	cmp 	al, 's'
	je		CHE2
TES1:
	call 	ReadChar  
	cmp 	al, ' '
JS1:
	jmp		CHE1
CHE2:
	call	ClrScr
	call 	Crlf
	call 	Crlf
	mov	edx, OFFSET[ggtext1]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext2]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext3]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext4]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext5]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext6]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext7]
	call 	WriteString
	call 	Crlf
	call 	Crlf
	mov	edx, OFFSET[ggtext8]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext9]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext10]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext11]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext12]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext13]
	call 	WriteString
	call 	Crlf
	mov	edx, OFFSET[ggtext14]
	call 	WriteString
	call 	Crlf
	call 	Crlf
	call 	Crlf
	mov 	edx, OFFSET[space2] 		;
	call 	WriteString			;
	call 	WriteString			;
	mov 	edx, OFFSET chStr1		;
	call 	WriteString			;
	call 	Crlf				;
	mov 	edx, OFFSET[space2] 		;
	call 	WriteString			;
	call 	WriteString			;
	mov	eax,white+(blue*16)		;
	call	SetTextColor			;
	mov 	edx, OFFSET chStr2		;
	call 	WriteString			;
	call 	Crlf				;
	mov	eax,white+(black*16)		;
	call	SetTextColor
	call 	ReadChar  
	cmp 	al, 's'
	je		CHE1
TES2:
	call 	ReadChar 
	cmp 	al, ' '
	je		KS
KS:
	;call	GAMECH
JS2:
	jmp	CHE2
	exit
endscreen ENDP
END endscreen
