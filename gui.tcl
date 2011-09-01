#!/usr/bin/tclsh
# See COPYING file for copyright and license details.
package require Tk

set bin [list getgbook getabook]

proc go {} {
	set cmd "[.bin get [.bin curselection]] [.id get]"
	set out [open "|$cmd" "r"]
	while {![eof $out]} {
		.txt insert end [gets $out]
		.txt insert end "\n"
		update
	}
}

label .lab -text "book id"
entry .id
listbox .bin -listvariable bin -exportselection 0
.bin selection set 0
button .dl -text "download" -command go
text .txt

pack .lab .id .bin .dl .txt
