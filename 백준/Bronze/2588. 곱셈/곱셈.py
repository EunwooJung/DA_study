num1 = int(input())
num2 = int(input())

D = num2 // 100        
E = (num2 // 10) % 10
F = num2 % 10

part1 = num1 * F
part2 = num1 * E
part3 = num1 * D

result = part1 + (part2 * 10) + (part3 * 100)

print(part1)       
print(part2)       
print(part3)
print(result)