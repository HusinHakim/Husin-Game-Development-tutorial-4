# Laporan Tutorial 3 - Game Development

## Deskripsi Proyek
Proyek ini merupakan implementasi lanjutan dari *game 2D Platformer* berbasis Godot Engine 4. Pada latihan mandiri ini, saya merancang dan mengimplementasikan level baru (Level 2) yang memiliki lingkungan, dinamika, dan rintangan yang lebih menantang dibandingkan level pertama, sekaligus merangkainya menjadi leveled based game.

## Pemenuhan Kriteria Tugas Minimum
Pembuatan Level 2 ini telah memenuhi seluruh kriteria wajib yang diberikan:

1. **TileMap yang Berbeda:** Level 2 menggunakan *tileset* dan desain lingkungan yang sepenuhnya baru untuk menciptakan suasana yang kontras dari Level 1.
2. **Spawner Rintangan Baru:** Mengimplementasikan node `Spawner` baru yang memunculkan rintangan berupa **Slime**, berbeda dengan objek Ikan yang digunakan pada Level 1.
3. **Objek Berjatuhan Secara Periodik:** Menggunakan *script* yang memanfaatkan fungsi `_process` dan `Timer` (delta) untuk men-*spawn* Slime yang berjatuhan dari atas langit secara terus-menerus setiap interval waktu tertentu. Posisi jatuhnya diacak pada sumbu X menggunakan `randf_range`.
4. **Rintangan Jurang:** Mendesain area jurang fatal pada *TileMap*. Jika *Player* gagal melakukan lompatan dengan presisi dan jatuh ke dalam jurang, maka *scene* akan dimuat ulang (`reload_current_scene`).

## Fitur Kreatif Tambahan
Selain memenuhi syarat minimum, saya mengimplementasikan mekanisme **Dynamic Environment Destruction** untuk membuat level lebih interaktif:
* **Meteor Presisi:** Terdapat satu meteor spesial yang diprogram secara khusus untuk jatuh di titik koordinat yang ditentukan dan menghancurkan pijakan pemain.
* **Efek Partikel Ledakan (Visual Effects):** Memanfaatkan node `C

## Referensi
* Modul Panduan Latihan Mandiri: Tutorial 4 - Basic 2D Level Design.
* Godot Engine 4 Official Documentation: *Instancing*, `Area2D` & *Signals*, `CPUParticles2D`, *Groups*, dan metode `call_deferred`.