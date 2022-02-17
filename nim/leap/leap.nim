# Check if a Leap year

#-------- LOGIC -------#
# on every year that is evenly divisible by 4
# except every year that is evenly divisible by 100
# unless the year is also evenly divisible by 400


# mod is the same as 'x - (x/y) * y'
proc isEvenDivide*(num: int, by: int): bool =
    num mod by == 0

proc isLeapYear*(year: int): bool =
    isEvenDivide(year, 400) or (isEvenDivide(year, 4) and not isEvenDivide(year, 100))