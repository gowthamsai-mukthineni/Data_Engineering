#4list
cities = ["NYC","St.Louis","Dallas","Chicago","Austin"]

print(cities[0]) #1st element
print(cities[4]) #or -1 last element

cities.append("Arizona") #add city at end of list

print(cities)


#5
txn = [100,500,5500,4000,5001,5050] #Create a list of transaction amounts.
#Print all transactions greater than 5000.
for amount in txn:                  
    if amount > 5000:
        print(amount)

#6
employee_id = (1001,1002,1003,1004,1005)
print("The length of tuple : " ,len(employee_id)) #length of tuple
print(employee_id[1]) #2nd element of tuple
for employee in employee_id:  #loop through tuple
    print(employee)

#7
name = {"GOWTHAM","SAI","MUKTHINENI","GOWTHAM"} #Create a set with duplicate values.
print(name)  #Print the final set and observe duplicate removal.

#8 Create a set of visitor IDs and print total unique visitors using len().
visitor_id = {101,102,103,104,105}
print(len(visitor_id))

#9
student = {"Name" : "Gowtham Sai", "Age" : 24, "Courese": "DE"}
for x in student:
    print(student[x]) #dict values

#10
employee = {"id":101, "name":"John", "Salary":50000}
employee["Salary"] = 65000
print(employee)  #Update salary to 65000 and print dictionary.
