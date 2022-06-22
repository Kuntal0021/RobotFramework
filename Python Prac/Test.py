print("This number is {}".format(42))

print("{} is the {} of {}".format(4,"square",2))

print("{2} is the {0} of {1}".format("square",2,4))

print("{1} is the {0} of {1}".format("square",1))

print("{c} is the {a} of {b}".format(a = "square", b = 2, c = 4))

a , b, c= 4, "Square", 2

print(f"{a} is the {b} of {c}")

print("Value is {0:10.3f}".format(10.23))

a = [10, 20, 50, 40, 30]

a.pop(2)
print(a)

a.insert(2, 50)
print(a)

a.sort()
print(a)

a.pop()
print(a)

a.append(50)
print(a)

print(a[1:4])

print(a[0:5:2])

print(a[::-1])

a.remove(30)
print(a)

a.append(30)
print(a)


a =(10, 12, 14, 15, 40, 30, 12)

print(a[0:5])
print(len(a))
print(a.count(12))
print(a.index(15))


a ={1 : 2, "calc" : "add", "cal": "sub"}

print(a["calc"])

print(a.values())

print(a.items())

print(a.keys())

print(len(a))

a[4] = 5

print(a)

a[4] = 10

print(a)

a = set()

a.add(12)
a.add(13)
a.add(14)
a.add(15)
a.add(12)
a.add(13)
a.add(14)
a.add(15)

print(a)

a = (12, 13, 14, 15, 12, 13, 14, 15)

print(a)

print(set(a))

a = 10

if a < 10:
    print(a, " is less than 10")
elif a > 10:
    print(a, " is greater than 10")
else:
    print(a, " equals to 10")

a = [10, 20, 30, 40, 50]
b = [100, 200, 300, 400]

for i in a:
    print(i)

for x,y in zip(a,b):
    print(f"{x} :: {y}")

for x,y in enumerate(a):
    print(f"{x} :: {y}")

for x in range(10):
    print(x)

for x in range(10,20):
    print(x)

for x in range(10,20,2):
    print(x)

y = 0
for x in range(6):
    y +=x
print(y)

a = 0
while(True):
    if a == 10:
        break
    a +=1
    print(a)

a = 0
while a <= 10:
    print(a)
    a += 1
else:
    print("{} is greater than 10".format(a))

def addition(a, b):
    return a+b

a = addition(10,20)

print(a)

print(type(a))