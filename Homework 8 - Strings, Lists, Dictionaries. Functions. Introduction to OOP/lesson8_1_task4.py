words = ["hello", "world", "python", "code"]
words_length_list = [len(i) for i in words]
long_words_list = [i for i in words if (len(i)>4)]
words_length_dict = {i: len(i) for i in words}
print(f"Words lengths are: {words_length_list}")
print(f"Words that contain more than 4 letters are: {long_words_list}")
print (f"Words and their lengths are: {words_length_dict}")