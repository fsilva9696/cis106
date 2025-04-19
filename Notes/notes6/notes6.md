# Notes 6

**Wildcards and brace expansion are powerful tools in the terminal (like Bash) for matching and generating filenames or text patterns.**

---

## * Wildcard

**Matches any number of characters, including none.**

*Examples:*

1. ``ls *.txt`` ---> Matches all files ending in .txt
2. ``ls a*``    ---> Matches all files starting with 'a'
3. ``ls *log*`` ---> Matches all files containing 'log' anywhere

---

## ? Wildcard

**Matches exactly one character.**

*Examples:*

1. ``ls ?.txt``      ---> Matches a.txt, b.txt (only character before .txt)
2. ``ls file?.log``  ---> Matches file1.log, fileA.log but not file12.log.
3. ``ls data_??.md`` ---> Matches data_01.md, data_ab.md but not data_001.md

---

## [] Wildcard

**Matches one character from a set or range inside the brackets**

*Examples:*

1. ``ls file[123].txt`` ---> Matches file1.txt, file2.txt, file3.txt
2. ``ls files[ab].md``  ---> Matches filesa.md, filesb.md
3. ``ls file[0-9].md``  ---> Matches file0.md through file9.md

---

## Brace Expansion {}

**Brace expansion generates multiple strings from a single pattern. It is not used for matching, only for creating text.**

*Examples:*

1. ``echo file{1,2,3}.txt`` ---> Output: file.1.txt file2.txt file3.txt
2. ``mkdir dir_{A,B,C}`` ---> Creates directories: dir_A, dir_B, dir_C
3. ``touch log_{01..03}.txt`` ---> Creates files: log_01.txt, log_02.txt, log_03.txt


   