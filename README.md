# cue-companion

CUE-lang helper utility for debugging and development
                                      

Commands process the current directory from the command line.

recommend setting: 
```bash
# cm = cue-make, because cc=c compiler
alias cm=\"""cue-companion""\"
```

creates local underscore files for debugging:<br/>
- cue eval   => `__eval_$DIRNAME__temp.cue`
- cue export => `__exp_$DIRNAME__temp.yaml`
                                         
note that that cue will exclude these files with leading underscores.
also note that sample .gitignore will recursively ignore filenames with leading underscore and temp 
`_*_temp.*`

local commands

| cmd            | aliases  | description                                  |
|----------------|----------|----------------------------------------------|
| `all`          |          | runs all build commands                      |
| `fmt`          | f        | cue format                                   |
| `eval`         | ev       | cue eval                                     |
| `vet`          | v        | cue vet                                      |
| `exp`          | ex       | cue export                                   |
| `clean`        | c        | remove temp files                            |
| `help`         | h        | displays this message                        |
| `version`      |          | displays script version                      |
| -------------- | -------- | -------------------------------------------- |
| `discuss`      |          | launches CUE discussions page                |
| `issues`       |          | launches CUE issues page                     |
| `packages`     | pkg      | launches CUE packages page \[go packages\]   |
| `playground`   | play     | launches CUE playground page                 |
| `proposals`    |          | launches CUE proposals page                  |
| `wiki`         |          | launches CUE wiki                            |
