call ale#linter#Define('asm', {
\   'name': 'avr_as',
\   'executable': 'avr-as',
\   'command': 'avr-as -o /dev/null -mmcu=atmega328p %s',
\   'output_stream': 'stderr',
\   'callback': 'ale#handlers#unix#HandleAsError',
\})

