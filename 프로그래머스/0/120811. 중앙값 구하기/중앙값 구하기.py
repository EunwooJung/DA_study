def solution(array):
    sorted_array = sorted(array)
    mid_index = len(sorted_array) // 2
    return sorted_array[mid_index]
