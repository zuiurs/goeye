package main

import (
	"flag"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"

	ps "github.com/mitchellh/go-ps"
)

func main() {
	flag.Parse()
	ppaths := flag.Args()

	ps, err := ps.Processes()
	if err != nil {
		fmt.Fprint(os.Stderr, err)
		os.Exit(1)
	}

	for _, path := range ppaths {
		pname := filepath.Base(path)
		started := false

		for _, p := range ps {
			if pname == p.Executable() {
				fmt.Printf("%s is already running (%s)\n", pname, path)
				started = true
				break
			}
		}

		if !started {
			exec.Command(path).Start()
			fmt.Printf("%s is started (%s)\n", pname, path)
		}
	}
}
