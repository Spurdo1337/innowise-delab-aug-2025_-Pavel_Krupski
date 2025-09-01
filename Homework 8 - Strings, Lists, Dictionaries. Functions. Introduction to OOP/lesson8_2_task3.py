student_data = [
{'name': 'Алексей', 'scores': [85, 92, 78, 95]},
{'name': 'Марина', 'scores': [65, 70, 58, 82]},
{'name': 'Светлана', 'scores': [98, 95, 100]},
]

def calculate_average_score(scores, ignore_lowest=False):
    if ignore_lowest==True:
        copied_scores = scores.copy() # Создание копии списка оценок для сохранности исходного списка из student_data
        copied_scores.remove(min(copied_scores)) # Удаление из копии списка минимального значения
        return sum(copied_scores)/len(copied_scores) # Подсчёт средней оценки с удалённой минимальной оценкой
    else:
        return sum(scores)/len(scores) # Простой подсчёт средней оценки из исходного списка без удаления минимальной оценки в случае ignore_lowest !=True

for student in student_data:
    print (f"{student['name']} avg score {calculate_average_score(student['scores']):.2f}, without lowest score - {calculate_average_score(student['scores'], ignore_lowest=True):.2f}")
    # .2f для ограничения количества цифр после точки до двух