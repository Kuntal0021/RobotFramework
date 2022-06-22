class calculator:

    def addition(self, a, b):
        return (a + b)

    def multiplication(self, a, b):
        return (a*b)

    def substract(self, a, b):
        return (a - b)

a = calculator()

print(a.addition(10, 20))
print(a.multiplication(10, 20))
print(a.substract(10, 20))


class Calculator:

    num = 10;

    def __init__(self, a, b):
        print("Parametrized Constructor")
        self.a = a
        self.b = b

    def add(self):
        print("Addition Method")
        print(self.a + self.b)

    def addition(self, a, b):
        print("Parametrized Addition")
        print(a)
        print(self.a)
        print(b)
        print(self.b)

    def MultiplyByTen(self,a):
        print("Multiply")
        print(a * Calculator.num)
        print(a * self.num)


a = Calculator(10, 20)


print(a.num)

a.add()

a.addition(30, 40)

a.MultiplyByTen(4)

