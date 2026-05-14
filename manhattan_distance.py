import heapq

# State tujuan yang diinginkan
GOAL = (1, 2, 3, 4, 5, 6, 7, 8, 0) # 0 adalah kotak kosong

def get_manhattan_distance(state):
    """Fungsi Heuristik: Menghitung total jarak Manhattan setiap ubin ke posisi goal."""
    distance = 0
    for i in range(len(state)):
        value = state[i]
        if value != 0: # Abaikan kotak kosong
            # Posisi saat ini (baris, kolom)
            current_row, current_col = i // 3, i % 3
            # Posisi target (baris, kolom)
            target_row, target_col = (value - 1) // 3, (value - 1) % 3
            distance += abs(current_row - target_row) + abs(current_col - target_col)
    return distance

def get_neighbors(state):
    """Mencari semua kemungkinan pergeseran ubin kosong (0)."""
    neighbors = []
    idx = state.index(0)
    row, col = idx // 3, idx % 3

    # Pergerakan: Atas, Bawah, Kiri, Kanan
    moves = [(-1, 0), (1, 0), (0, -1), (0, 1)]

    for dr, dc in moves:
        nr, nc = row + dr, col + dc
        if 0 <= nr < 3 and 0 <= nc < 3:
            neighbor_list = list(state)
            new_idx = nr * 3 + nc
            # Tukar posisi 0 dengan angka di sebelahnya
            neighbor_list[idx], neighbor_list[new_idx] = neighbor_list[new_idx], neighbor_list[idx]
            neighbors.append(tuple(neighbor_list))
    return neighbors

def solve_8_puzzle(start_state):
    # Priority Queue menyimpan: (f_score, g_score, current_state, path)
    # f_score = g_score + h_score
    start_h = get_manhattan_distance(start_state)
    pq = [(start_h, 0, start_state, [])]
    visited = {start_state: 0}

    while pq:
        f, g, current, path = heapq.heappop(pq)

        if current == GOAL:
            return path + [current]

        for neighbor in get_neighbors(current):
            new_g = g + 1
            # Jika state belum pernah dikunjungi atau ditemukan jalur yang lebih murah
            if neighbor not in visited or new_g < visited[neighbor]:
                visited[neighbor] = new_g
                h = get_manhattan_distance(neighbor)
                f = new_g + h
                heapq.heappush(pq, (f, new_g, neighbor, path + [current]))

    return None

# --- UJI COBA ---
# 0 mewakili kotak kosong
# initial_state = (1, 2, 3, 4, 0, 6, 7, 5, 8)
initial_state = (1, 2, 3, 4, 0, 6, 7, 5, 8)

print("Mencari solusi dengan A* (Manhattan Distance)...")
steps = solve_8_puzzle(initial_state)

if steps:
    for i, s in enumerate(steps):
        print(f"Langkah {i}:")
        print(f"{s[0]} {s[1]} {s[2]}\n{s[3]} {s[4]} {s[5]}\n{s[6]} {s[7]} {s[8]}\n")
else:
    print("Tidak ditemukan solusi.")
