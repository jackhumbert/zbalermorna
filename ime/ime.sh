#!/usr/bin/env bash

UNICODE_START=0xED80
lerfu="ptkflscmx.' 1234bdgvrzjn\`-,~    aeiouy    qw    AEIOUY"

# https://stackoverflow.com/questions/602912/how-do-you-echo-a-4-digit-unicode-character-in-bash

fast_chr() {
    local __octal
    local __char
    printf -v __octal '%03o' $1
    printf -v __char \\$__octal
    REPLY=$__char
}

function unichr {
    local c=$1    # Ordinal of char
    local l=0    # Byte ctr
    local o=63    # Ceiling
    local p=128    # Accum. bits
    local s=''    # Output string

    (( c < 0x80 )) && { fast_chr "$c"; echo -n "$REPLY"; return; }

    while (( c > o )); do
        fast_chr $(( t = 0x80 | c & 0x3f ))
        s="$REPLY$s"
        (( c >>= 6, l++, p += o+1, o>>=1 ))
    done

    fast_chr $(( t = p | c ))
    echo -n "$REPLY$s"
}

function translate {
	local c=$1
	case "$c" in
		"")
			printf " "
			;;
		'h')
			c="'"
			;&
		*)
			rest=${lerfu#*$c}
			index=$(( ${#lerfu} - ${#rest} - ${#c} ))
			if [ $index -lt 0 ]
			then
				l=${c,,}
				rest=${lerfu#*$l}
				index=$(( ${#lerfu} - ${#rest} - ${#l} ))
				if [ $index -lt 0 ]
				then
					printf "$c"
					return;
				fi
			fi
			unichr $(( $UNICODE_START + $index ))
			#printf '\\u%04x' $(( $UNICODE_START + $index )); echo -n
			;;
	esac
}

while read input
do
	while IFS= read -r -n1 c
	do
		translate $c
	done < <(echo -n "$input")
	printf "\n"
done < "${1:-/dev/stdin}"
