package serve

import (
	"tool/cli"
	)

command: hello: {
	printHello: cli.Print & {text: "hello"}
}
