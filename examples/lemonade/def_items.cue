package lemonade

#Items: [...#Item]

Items: #Items

// basic info (no checking)
#Item: {
	Name: string
	Units: number
	Rate: number
	Amount: number 
	Notes: string
}

// name must be non-blank, alphanum+underscore+spaces and less than 10 chars
// note: be sure to include hash symbols before and after to avoid escaping
//#Item: {
//		Name: string
//		Name: =~#"^[\w ]+$"#
//		_nameCheckLen: len(Name) & >0 & < 20
//}

// units are whole numbers only, but can be negative for returns
//#Item: Units: int

// rates include decimals, but must be positive number greater than zero
//#Item: Rate: >= 0

// amount is equal to units * rate
// #Item: {
// 	Units: number
// 	Rate: number
// 	Amount: Units * Rate
// }

// notes is a free-form string
//#Item: Notes: string
