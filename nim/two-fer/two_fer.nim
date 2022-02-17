import std/strformat

proc twoFer*(name: string): string =
    fmt"One for {name}, one for me."

proc twoFer*(): string = 
    "One for you, one for me."