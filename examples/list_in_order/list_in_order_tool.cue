package list_in_order

import (
	"tool/cli"
	"tool/exec"
)

command: {
	list_in_order: {
		hello: cli.Print & {
			text: "Hello world"
		}
		list: {
			ls: exec.Run & {
				$after: hello
				cmd: ["ls"]
				stdout: string
			}
			print: cli.Print & {
				text: ls.stdout // inferred dependency
			}
		}
		bye: cli.Print & {
			$after: list.print
			text:   "Goodbye"
		}
	}

	// add direct references to commands list for: `list_in_order:bye` syntax
	{for k, v in list_in_order {"list_in_order:\(k)": v}}
}
