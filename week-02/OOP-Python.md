# Object Oriented Programming in Python 

Object-oriented programming (OOP) arranges the architecture of software around data or objects rather than functions and logic.
The object-oriented methodology shows us a framework for conceptualising and expressing the essential features of our applications. We have a strong and 
adaptable method for creating sophisticated apps that relies on data rather than actions and logic.
- Classes are essential to object-oriented programming because they allow for the creation of new types of objects. A class specifies a set of qualities that are 
common to all members of individuals from that class. Classes often consist of collections of variables, functions, and properties.
- With object-oriented programming (OOP), software design is organised around data or objects rather than functions and logic.
- We have a technique to conceptualise and represent the essential features of our applications thanks to the object-oriented paradigm. By focusing our programmes 
on things and we have a reliable and adaptable technique to develop sophisticated apps using data rather than actions and logic.
- Classes, which are essential to object-oriented programming, are a mechanism to define new types of objects. An attribute set that is shared by all members of a 
class is defined.
- Normally, classes are collections of variables, functions, and properties.Its body consists of a series of statements that execute during the class definition. The 
functions defined inside a class are called instance
methods.

## Class & Object in Python:
```python
class Electronics:
    def __init__(self, name, item_type):
        self.name=name
        self.item_type=item_type
        print("Item added!")
c=Electronics("Microwave","Kitechen")   
print(c.name, c.item_type)
```

## Methods:
```python
class Electronics:
    def __init__(self, name, item_type ):
        self.name=name
        self.item_type=item_type
        
    def warranty():
        print("Warranty for your item is 1-year")
    def print_all_items(e):
        for i in e:
            print(i)

e=[Electronics("Microwave ","Kitchen"),Electronics("Refrigerator","Kitchen")]
Electronics.print_all_items(e)
Electronics.warranty()
```

## Encapsulation, Inheritance & Polymorphism: 
```python
class User:
    def log(self):
        print(self)
        
class Teacher(User):
    def log(self):
        print("I'm a teacher!")
        
        
class Electronics(User):
    def __init__(self, name, item_type ):
        self.name=name
        self.item_type=item_type
        
    @property
    def name(self):
        return self._name
    @name.setter
    def name(self,name):
        print("Setting name")
        self._name=name
    @name.deleter
    def name(self):
        del self._name
        
    def warranty():
        print("Warranty for your item is 1-year")
    #def print_all_items(e):
        #for i in e:
            #print(i)

e=[Electronics("Microwave ","Kitchen"),Electronics("Refrigerator","Kitchen"),Teacher()]
print(e[1].name)
for user in e:
    user.log()
#Electronics.print_all_items(e)
#Electronics.warranty()
#e[2].log()
```
