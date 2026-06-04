'''
1)
Exception handling in python is uded to to handle errors while the program is running.
Instead of stopping the program, it will be helpful to to continue the program.

try: contains the code that may cause the errors
except : contains the code that will be running if try block has errors

2)
Class : Blue print used to create a object
Object : Instance of class that has the actual data

'''
class student:
    def __init__(self, name):
        self.name = name

student1 = student("Sai")
student2 = student("Gowtham")

print(student1.name)
print(student2.name)


#3 
'''
Different file modes in python

r(read)- Opens a file for reading
w(write)- opens a file for writing
a(Append)- opens a file for appending

'''

#4

file = open("students.txt", "w")
file.write("Roshitha\n")
file.write("gowtham\n")
file.write("Sai\n")
file.write("Mukthineni\n")
file.write("Makula\n")

file.close()

print("File is created and executed")


#5

file = open("students.txt", "r")

print(file.read())

file.close()

#6
try:
    num = int(input("Enter a Number : "))
    print("You Entered :", num)
except :
    print("Invalid input! Please enter a valid number.")
    

#7
try:
    num1 = float(input("Enter first number: "))
    num2 = float(input("Enter second number: "))

    result = num1 / num2
    print("Division Result:", result)

except ValueError:
    print("Invalid input! Please enter numbers only.")

except ZeroDivisionError:
    print("Error! Division by zero is not allowed.")

#8
class Car:
    def __init__(self, brand, color):
        self.brand = brand
        self.color = color

    def display(self):
        print(f"Brand: {self.brand}, Color: {self.color}")

car1 = Car("Toyota", "Red")
car2 = Car("Honda", "Blue")
car3 = Car("BMW", "Black")

car1.display()
car2.display()
car3.display()

#9
class Patient:
    def __init__(self, patient_name, doctor_name, bill_amount):
        self.patient_name = patient_name
        self.doctor_name = doctor_name
        self.bill_amount = bill_amount

    def details(self):
        print(f"Patient Name: {self.patient_name}")
        print(f"Doctor Name: {self.doctor_name}")
        print(f"Bill Amount: ${self.bill_amount}")
        print()

patient1 = Patient("John Smith", "Dr. Brown", 500)
patient2 = Patient("Emma Davis", "Dr. Wilson", 750)
patient3 = Patient("Michael Johnson", "Dr. Taylor", 1200)
patient4 = Patient("Sophia Miller", "Dr. Anderson", 650)
patient5 = Patient("Liam Garcia", "Dr. Thomas", 900)

patient1.details()
patient2.details()
patient3.details()
patient4.details()
patient5.details()

#10
try:
    file = open("transactions.txt", "r")

    total = 0

    for amount in file:
        print(amount.strip())
        total += float(amount)

    print("Total Transaction Value:", total)

    file.close()

except FileNotFoundError:
    print("File not found")