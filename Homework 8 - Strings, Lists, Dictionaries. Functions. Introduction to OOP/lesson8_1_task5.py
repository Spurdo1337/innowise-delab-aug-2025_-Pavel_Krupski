nums = [2, 7, 11, 15]
target = 9
#nums = [3, 2, 4]
#target = 6
seen = {}  # словарь: число -> индекс
for i, num in enumerate(nums):
    comp = target - num  # недостающее число
    if comp in seen:
        print(f"Target {target} = {comp} + {num}, indexes = {seen[comp]}, {i}")
        break
    seen[num] = i