if __name__ == '__main__':
    students = []
    scores = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        students.append([name, score])
        scores.append(score)

second_lowest_score = sorted(set(scores))[1]
print("\n".join([student[0] for student in sorted(students) if student[1] == second_lowest_score]))