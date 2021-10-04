## Shell 
## Klist, 
## tr,
## Quoting rules

Quoting rules에는 여러가지가 있지만, ASNI-C Quoting rule을 사용하면 중간에 여러가지 ", ', / 같은 문자들이 섞여도 한번에 사용 할 수 있다는 장점이 있다.  

• Escape Character    How to remove the special meaning from a singlecharacter.  
• Single Quotes    How to inhibit all interpretation of a sequenceof characters.  
• Double Quotes    How to suppress most of the interpretation of asequence of characters.  
• ANSI-C Quoting    How to expand ANSI-C sequences in quoted strings.  
• Locale Translation    How to translate strings into different languages.  

밑은 Quoting rule의 사용법이다.  

Words of the form $'string' are treated specially. The word expands to string, with backslash-escaped characters replaced as specified by the ANSI C standard. Backslash escape sequences, if present, are decoded as follows:  
\a  
alert (bell)   
\b  
backspace   
\e\E  
an escape character (not ANSI C)   
\f  
form feed   
\n   
newline    
\r  
carriage return   
\t    
horizontal tab   
\v  
vertical tab   
\\  
backslash    
\'  
single quote    
\"  
double quote    
\?     
question mark   
\nnn   
the eight-bit character whose value is the octal value nnn (one to three octal digits)     
\xHH    
the eight-bit character whose value is the hexadecimal value HH (one or two hex digits)   
\uHHHH  
the Unicode (ISO/IEC 10646) character whose value is the hexadecimal value HHHH (one to four hex digits)   
\UHHHHHHHH  
the Unicode (ISO/IEC 10646) character whose value is the hexadecimal value HHHHHHHH (one to eight hex digits)   
\cx  
a control-x character    
  
The expanded result is single-quoted, as if the dollar sign had not been present.    
  
## Awk
## Sed
## Grep
## Cat
## 정규표현식
## Cut -d
## Ls 옵션들
## Patch
## Find
## Softlink, hardlink(inodes)
## Patch, magic file
## Groups, basename
## Wc
## Ifconfig
## Xargs
## Exec
