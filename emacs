adjust text size:
C-x C-+, C-x C--

find and replce:
m-%, then input what you want to replace. then the string to replace, then y

select all:
C-x p

buffer switch:
alt + p

top of file:
M-<

save different name:
C-x C-w

bottom of file:
M->

search backward:
C-r

search and replace:
C-s M-%

comment block:
M-x comment-region
uncomment block:
M-x uncomment-region

register position:
set a position for return after a while:
C-x r <SPC> r
jump to the register position that set already:
C-x r j r

set a marker:
C-<SPC> C-<SPC>
Set the mark, pushing it onto the mark ring, without activating it. 

go to a marker that set already:
C-u C-<SPC>

Jump to the tag underneath the cursor:
M-. <RET>

Search for a particular tag:
M-. <tag> <RET>

Find the next definition for the last tag:
C-u M-.

Pop back to where you previously invoked "M-.":
M-*

switch buffer: 
first list buffer: C-x b 
then select the buffer 
or: 
C-x <left> 
C-x <right>

find file recursely:
C-x M-f

new snippet:
C-c & C-n

save new snippet:
C-c C-c
