# learngo

## Our First program

To compile and run a simple program, first choose a module path (we'll use learngo/) and create a go.mod file that declares it:

The first statement in a Go source file must be package name. Executable commands must always use package main.

Next, create a file named main.go inside that directory containing the following Go code:

```
package main	
import "fmt"

func main() {
       fmt.Print("Hello GO!")  
}
```