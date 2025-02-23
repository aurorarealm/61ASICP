def squaresum(n):
    """计算从1到n的平方和"""
    if n<=0:
        return 0
    return n * n + squaresum(n-1)

#测试
num = int(input("请输入第1个正整数："))
print(f"从1到 {num} 的平方和是 {squaresum(num)}")
