file = open("text.txt")

print(file.read())

file.seek(0)
print(file.readline())

file.seek(0)
print(file.readlines())


file.seek(0)

for x in file.readlines():
    print(x)

file.seek(0)

print(file.read(10))

file.seek(0)

print(file.readline())

file.seek(0)

print(file.readlines(30))

file.seek(0)

line = file.readline()
while line!="":
    print(line)
    line = file.readline()

file = open("test.txt", "w")

file.writelines("This is new File")

file.writelines("\nEditing")

file = open("test.txt", "a")

file.write("\nNew Line")

file.close()

with open("text.txt", 'w') as file:
    file.writelines("This is first Line.")

with open("text.txt", 'a') as file:
    file.writelines("\nThis is Second Line.")

lines = []
with open("text.txt", 'r') as file:
    lines = file.readlines()


with open("text.txt", 'w') as file:
    for x in reversed(lines):
        file.write(x + "\n")