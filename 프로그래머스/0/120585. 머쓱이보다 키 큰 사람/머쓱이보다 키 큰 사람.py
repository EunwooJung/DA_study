def solution(array, height):
    count = 0
    for h in array:
        if h > height:
            count += 1
    return count