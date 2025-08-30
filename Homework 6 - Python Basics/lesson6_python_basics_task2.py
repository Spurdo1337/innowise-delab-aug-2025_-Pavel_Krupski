print("Input your rectangle measurements to determine it's area")
width = float(input("Enter rectangle's width: "))
height = float(input("Enter rectangle's height: "))
if width>0 and height>0:
    print(f"Rectangles's area is: {width * height}")
else:
    print("Height and width must be a number greater than zero!")