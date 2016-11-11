
**Problem Description**

Given a list of words, generate two output files, 'questions' and 'answers'. 'questions' should contain every sequence of four letters that appears in exactly one word of the dictionary, one sequence per line. 'answers' should contain the corresponding words that contain the sequences, in the same order, again one per line.
An example:
Say this is your dictionary: arrows carrots give me
'questions' would contain: carr give rots rows rrot rrow
and 'answers' would have: carrots give carrots arrows carrots arrows
'arro' wouldn't show up in 'questions', because it appears in two words

**Assumption**

 - The questions file outputs one 4-letter sequence per line in alphabetical order

 - The output files can have a timestamp in their filename

 - The directory of the output files isn't important

**Directions**

From this project's root directory, run
`
ruby solution.rb words.txt
`
or
`
ruby solution.rb filename
`
where filename is the relative path to the source file.


The output files will generate in the tmp folder of the project; they are named with a timestamp.  Thus the questions file is 'questions\_20161110203615.txt' and the answers is 'answers\_20161110203615.txt'