scores = [75, 88, -10, 95, 100, -25, 89]
total_score = 0
for score in scores:
    if score < 0:
        continue
    elif score == 0:
        print ("Error!")
        break
    else:
        total_score += score
        print(f"{score} has been added to the total score.")
else:
    print("All student marks has been processed!")
print(f"\nTotal score is {total_score}")