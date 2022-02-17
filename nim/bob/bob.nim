import std/strutils
import std/sequtils

proc isCapital(str: string): bool =
    if str.toUpperAscii == str: return true
    else: return false
proc isQuestion(str: string): bool =
    var strToArray = toSeq(str)
    var lenOfArray = strToArray.len
    if (strToArray[lenOfArray] == '?'): return true
    else: return false
proc hey*(str: string): string =
    if str.len == 0: "Fine. Be that way!"
    elif isQuestion(str): "Sure."
    elif isCapital(str) and isQuestion(str): "Calm down, I know what I'm doing!"
    elif isCapital(str): "Whoa, chill out!"
    else: "Whatever."