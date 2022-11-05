# CUE-Companion

CUE-lang helper utility for debugging and development
                                      
This tool is opinionated and may not be for everyone, just made it for myself to be helpful.


recommend setting alias in .bashrc/.zshrc: 
```bash
# ck = CUE-Kompanion, because cc = c compiler
alias ck=\"""cue-companion""\"
```

creates local underscore files for debugging:<br/>
- cue eval   => `__eval_$DIRNAME__temp.cue`
- cue export => `__exp_$DIRNAME__temp.yaml`
                                         
note that that cue will exclude these files with leading underscores.
also note that sample .gitignore will recursively ignore filenames with leading underscore and temp 
```gitignore
# recursively ignore _temp files, e.g. `_something_temp.file`
/**/_*_temp.*
```


## Commands 
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
| `packages`     | pkg, p   | launches CUE packages page \[go packages\]   |
| `playground`   | play     | launches CUE playground page                 |
| `proposals`    |          | launches CUE proposals page                  |
| `wiki`         |          | launches CUE wiki                            |
                  

## Examples 

### Project-Local DirEnv Example

#### part 1: setting up the companion utility
- copy this script into a local /bin directory within your project
- configure .envrc file to PATH_add your project bin directory into your path
- run `direnv allow` to allow direnv to process your new .env rc file
- check that your bin directory is found in shell with `echo $PATH`

#### part 2: using the util
- check project is configured similarly to examples/direnv_example
- use/configure alias for `alias ck="cue-companion"`
- `cd things` to enter the things cue directory
- run `ck` or `ck all` to format and vet the cue files 
- 2 new files should appear, `__eval_things__temp.cue` & `__exp_things__temp.yaml`
- open `__eval_things__temp.cue` in a new editor pane next to active code
- edit the impl_thing.cue file to make a change
- run `ck` again in terminal to see output reflected in `__eval_things__temp.cue` 
- run `ck c` or `ck clean` to remove these temp files to resume work

#### part 3: looking for help
- run `ck docs` to open the cue documentation in your browser
- run `ck p` or `ck packages` to open the cue packages references
- run `ck discuss` to ask a question on the cue discussions page
- run `ck issues` to open the git-hub issues page
