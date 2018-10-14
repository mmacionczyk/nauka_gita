def calculate(a, b, operacja):
    if operacja == "+":
        return a + b
    elif operacja == "-":
        return a - b

    elif operacja =="*":
        return a * b
    elif operacja =="/":
        return a/b

def str_calculate (a,b, operacja):
    if operacja == "concat":
        return a+b
