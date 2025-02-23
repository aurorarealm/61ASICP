def gcd(a,b):
    "计算a和b的最大公约数"
    if b==0:
        return a
    return gcd(b,a%b)
#测试
num1=int(input("please input first number:"))
num2=int(input("please input second number:"))
print(f" {num1} 和 {num2} 的最大公约数是 {gcd(num1,num2)}")
