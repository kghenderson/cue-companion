this is an example of converting and validating an excel file (xlsx),
using cue with [nushell](https://www.nushell.sh/)

once nushell is installed (e.g. via `brew install nushell`),<br/>
enter nushell with `nu` and accept the default prompts,<br/>
type `exit` to return to outer shell<br/>
(these commands can be run within the nu shell or outside as script, up to you)

lemonade01.xlsx is the original file
run the script steps to convert through the stages to the final lemonade06.csv
note that these commands can be chained into a single function, 
but these separate steps allow the transformation to be a bit clearer

after successfully running through the steps, with no validations,
edit the def_items.cue file, and uncomment the validations for the fields,
which begin just after about line 15
then re-run s4_cue_vet to see the errors
