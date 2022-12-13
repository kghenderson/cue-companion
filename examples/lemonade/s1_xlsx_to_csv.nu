#!/usr/bin/env nu
open lemonade01.xlsx | get Items | to csv --noheaders | save lemonade02.csv
