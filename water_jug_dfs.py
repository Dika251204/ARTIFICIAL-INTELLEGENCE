def water_jug_dfs(cap1, cap2, target):
    # 1. BUAT Tumpukan (STACK)
    stack = [(0, 0, [])]
    # 2. BUAT Set untuk mencatat yang sudah dikunjungi
    visited = set()

    # 3. SELAMA tumpukan TIDAK KOSONG
    while stack:
        # a. Ambil data dari BELAKANG (pop)
        j1, j2, path = stack.pop()

        # b. JIKA Target tercapai
        if j1 == target or j2 == target:
            return path + [(j1, j2)]

        # c. JIKA belum dikunjungi
        if (j1, j2) not in visited:
            visited.add((j1, j2))

            # d. Definisikan semua kemungkinan AKSI
            moves = [
                (cap1, j2), (j1, cap2),
                (0, j2), (j1, 0),
                (j1 - min(j1, cap2 - j2), j2 + min(j1, cap2 - j2)),
                (j1 + min(j2, cap1 - j1), j2 - min(j2, cap1 - j1))
            ]

            # e. Masukkan hasil aksi ke BELAKANG (atas tumpukan)
            for m in moves:
                if m not in visited:
                    stack.append((m[0], m[1], path + [(j1, j2)]))

    return None

# Eksekusi DFS
print("\n=== SOLUSI DFS (SUB-OPTIMAL) ===")
solusi_dfs = water_jug_dfs(5, 3, 4)
for i, step in enumerate(solusi_dfs):
    print(f"Langkah {i}: {step}")
