from Parent import Parent


class Children(Parent):

    def __init__(self, a, b):
        super(Children, self).__init__()
        print("Child Class Constructor")
        self.a = a
        self.b = b

    def addition(self):
        print("Child Class Addition")
        print(self.a + self.b)


a = Children(10, 20)


a.addition()

a.add(20, 30)

print(a.num)