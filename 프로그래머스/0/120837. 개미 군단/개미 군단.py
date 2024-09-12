def solution(hp):
    general_ant = hp // 5
    hp %= 5
    soldier_ant = hp // 3
    hp %= 3
    worker_ant = hp
    return general_ant + soldier_ant + worker_ant
