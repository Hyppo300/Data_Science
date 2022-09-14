# Python modeules and packages:
A module is a file that contains functions and statements or a code which you can reuse in some other file. You are writing a program and you want to divide it 
into components. You might want to use those components again in some other program. You can import the module and reuse the functions define din module. In this way, you can also increase your code's efficiency. 

## Packages:
You sometimes need all similar modules together at one place just like you place same files in one directory/folder in your computer. A package consists of similar modules place for better reusability and accessibility. A directory should contain __init__.py filefor python to consider it as a package.

For instance, we can create a file named BMI.py.
- It has function for calcuating BMi of a person.

```python
def bmi(weight,height):
    bmi=float(weight/height**2)
    print("Your BMI is: ",bmi)

```

- Now you can create another file for checking health status of a person and use this bmi function from BMI.py file. 
- We create another file named insurance.py and use our module in this.
- 
```python
from BMI import bmi
class Insurance:
    def __init__(self,name,age,gender,occupation,weight,height):
        name=self.name
        age=self.age
        gender=self.gender
        occupation=self.occupation
        weight=sellf.weight
        height=self.height

    def health_status(self):
        b=bmi(self.weight,self.height)
        print(b)

        
n=input("Type your name: ")
a=int(input("Type your age: "))
g=input("Type your gender: ")
o=input("Type your occupation: ")
w=input("Enter you weight: ")
h=input("Enter your height: ")
one=Insurance(n,a,g,o,w,h)

print(one.health_status())
```

