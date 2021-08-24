@echo off


::Combine all the sections into a single file.
type s*.md > _combined_sections.md
::append newline 
echo: >> _combined_sections.md 

::Render the combined file into a PDF.
pandoc -s -o gobcrud.pdf  _combined_sections.md --template eisvogel --listings
pause
::-C renders the citations, linked in the metadata 
::-N numbers the sections
::-s is the standalone file flag
::-o is the flag to tell it to output a file instead of just piping the output out.
