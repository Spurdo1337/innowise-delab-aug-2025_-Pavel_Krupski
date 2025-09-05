fruits = ["apple", "banana"]
print("Шаг 0:", fruits)

fruits.append("orange")  # 1) добавить "orange" в конец
print("Шаг 1:", fruits)

fruits.insert(1, "grape")  # 2) вставить "grape" по индексу 1
print("Шаг 2:", fruits)

# 3) удалить "banana"
if "banana" in fruits:
    fruits.remove("banana")
print("Шаг 3:", fruits)

fruits.sort()  # 4) отсортировать список по возрастанию
print("Шаг 4:", fruits)

fruits.reverse()  # 5) перевернуть порядок элементов
print("Шаг 5:", fruits)
