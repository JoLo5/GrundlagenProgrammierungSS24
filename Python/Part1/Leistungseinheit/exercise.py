
firstAngle = int(input("Please enter the first angle:"))
secondAngle = int(input("Please enter the second angle:"))
thirdAngle = int(input("Please enter the third angle:"))
control = firstAngle + secondAngle + thirdAngle
if control == 180 and firstAngle > 0 and secondAngle > 0 and thirdAngle > 0:
    if firstAngle == 90 or secondAngle == 90 or thirdAngle == 90:
        print("This is a right triangle")
    elif firstAngle > 90 or secondAngle > 90 or thirdAngle > 90:
        print("This is an obtuse triangle")
    elif firstAngle < 90 or secondAngle < 90 or thirdAngle < 90:
        print("This is an actuse triangle")
else: 
    if firstAngle < 0 or secondAngle < 0 or thirdAngle < 0:
        print("Angles smaller than 0 are not valid.")
    else:
        print("The entered values are not valid.")
    