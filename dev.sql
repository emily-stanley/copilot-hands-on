package main

import (
    "fmt"
    "math/rand"
    "time"
)

func seed_rng(seed int64) *rand.Rand {
    s := rand.NewSource(seed)
    return rand.New(s)
}

func main() {
    r := seed_rng(time.Now().UnixNano())
    fmt.Println(r.Intn(100))  // Outputs a random integer between 0 and 99
}
