package direnv_example

// Things is a lookup map of Thing
#Things: [mapkey=string]: #Thing & {Name: mapkey}

#Thing: {
	Name:    string
	Purpose: string
}
