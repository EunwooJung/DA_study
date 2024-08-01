X = int(input().strip())
N = int(input().strip())

total_calculated_price = 0

for _ in range(N):
    a, b = map(int, input().strip().split())
    total_calculated_price += a * b

if total_calculated_price == X:
    print("Yes")
else:
    print("No")
