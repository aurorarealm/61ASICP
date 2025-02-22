def factorialnum(n):
      if n == 0: 
           return 1
      return n * factorialnum(n - 1)
# 测试一下
num = int(input("输入一个非负整数："))
print(f" {num} 的阶乘是 {factorialnum(num)}")
