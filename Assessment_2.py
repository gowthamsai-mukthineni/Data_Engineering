def operations(num1, num2):
    add = num1 + num2
    sub = num1 - num2
    multi =num1 * num2
    div = num1/num2
    return add, sub, multi, div
result = operations(5,2)
print(result)


def area(length, breadth):
    area = length * breadth
    perimeter = 2*(length+breadth)
    return area, perimeter
result = area(10,5)
print(result)


def a1(radius):
    pi = 3.14
    circle_area = (pi*radius)**2
    circumference = 2*pi*radius
    return circle_area, circumference
r1 = a1(20)
print(r1)


def intrest(principle_amount, rate_of_intrest, time):
    simple_intrest = (principle_amount * rate_of_intrest * time)/ 100
    return simple_intrest
final_amount = intrest(100, 2, 2)
print("Simple Intrest is", final_amount)


