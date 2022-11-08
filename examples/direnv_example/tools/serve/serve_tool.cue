package serve

import (
	"tool/cli"
)

command: "serve": {
	doServe: {
		for thingName, thing in Things {
			let serveText = thing.Name + "'s purpose is to " + thing.Purpose
			"doPrint-\(thingName)": cli.Print & {
				text: serveText
			}
		}
	}

	afterServing: {
		// note: careful about the success, otherwise the whole command (will repeat)
		// $after:    doServe 
		$after:    doServe.$success
		printDone: cli.Print & {text: "done serving "}
	}
}
