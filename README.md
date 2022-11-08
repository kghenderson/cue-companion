# CUE-Companion

CUE-lang helper utility for debugging and development
                                      
This tool is opinionated and may not be for everyone, just made it for myself to be helpful.
           
creates local underscore files for debugging:<br/>
- cue eval   => `__eval_$DIRNAME__temp.cue`
- cue export => `__exp_$DIRNAME__temp.yaml`

these names were chosen for:  
- easy of search, e.g. with `fzf`
- reduced chances of existing filename conflicts
- sorting to the top of the directory
- naturally excluding from cue/go package evaluation 


## Commands 
| cmd            | aliases  | description                                  |
|----------------|----------|----------------------------------------------|
| `all`          | a        | runs all build commands                      |
| `fmt`          | f        | cue format                                   |
| `eval`         | ev       | cue eval                                     |
| `vet`          | v        | cue vet                                      |
| `exp`          | ex       | cue export                                   |
| `run`          | r        | run command *folder name or command name     | 
| `clean`        | c        | remove temp files                            |
| `help`         | h        | displays this message                        |
| `version`      |          | displays script version                      |
| -------------- | -------- | -------------------------------------------- |
| `discuss`      |          | launches CUE Discussions Page                |
| `issues`       |          | launches CUE Issues Page                     |
| `packages`     | pkg, p   | launches CUE Packages Page \[go packages\]   |
| `playground`   | play     | launches CUE Playground Page                 |
| `proposals`    |          | launches CUE Proposals Page                  |
| `wiki`         |          | launches CUE Wiki                            |
| `calendar`     | cal      | launches CUE Community Calendar              |
                  
## Setup 

### .bashrc or .zshrc aliases
```bash
# ck = CUE-Kompanion, because cc = c compiler
alias ck=\"""cue-companion""\"
```
recommend setting alias in .bashrc/.zshrc: 
note that that cue will exclude these files with leading underscores.<br/>

### .gitignore
```gitignore
# recursively ignore _temp files, e.g. `_something_temp.file`
/**/_*_temp.*
```
this sample .gitignore statement will recursively ignore filenames with leading underscore and temp 
              
### Path
the utility can be installed anywhere in your path, but the direnv example below
will allow it to be saved/stored/customized in your local package using:
https://direnv.net


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
