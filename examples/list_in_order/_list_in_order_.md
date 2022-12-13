this package illustrates executing tasks in order,<br/>
i.e. first `hello` then `list` then `goodbye`

it also "raises" these sub-commands to the "commands" level,<br/>
which means that they can be called as<br/>
`cue cmd list_in_order`<br/>
or<br/>
`cue cmd list_in_order:goodbye`
