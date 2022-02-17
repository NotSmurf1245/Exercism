import std/strutils


# Main function to call
proc hey*(str: string): string =

    # First check if given empty/whitspace string
    if str.isEmptyOrWhitespace:
        return "Fine. Be that way!"

    # Variables that determine certain factors
    var shout   = str.contains({'A'..'Z'}) and not str.contains({'a'..'z'})
    var ask     = str.strip.endsWith('?')

    # Final check with given variables
    if shout and ask:
        return "Calm down, I know what I'm doing!"
    elif shout:
        return "Whoa, chill out!"
    elif ask:
        "Sure."
    else:
        "Whatever."