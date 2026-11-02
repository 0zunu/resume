# Resume / CV Website

Project ini adalah template halaman CV atau resume berbasis HTML dan Markdown yang dapat diakses secara sederhana di browser dan dicetak ke PDF. Konten utama CV disimpan di file `template.md`, lalu diproses menjadi HTML menggunakan library `marked.js`.

## Fitur

- Tampilan CV yang bersih dan profesional
- Konten CV ditulis dalam format Markdown agar mudah diedit
- Tombol unduh / cetak ke PDF via browser
- Notifikasi kecil untuk pengguna yang baru membuka halaman
- Dapat dideploy ke GitHub Pages dengan workflow yang sudah disiapkan

## Struktur File

```text
resume/
├── index.html          # Halaman utama CV
├── style.css           # Styling tampilan CV
├── template.md         # Konten CV dalam format Markdown
├── README.md           # Dokumentasi proyek
├── .github/
│   └── workflows/
│       └── deploy.yml  # Workflow deployment ke GitHub Pages
└── .gitignore          # (jika ada pada repositori Anda)
```

## Cara Menjalankan

1. Clone atau unduh repository ini.
2. Di Windows, jalankan `start-local.bat` dari folder proyek.
3. Setelah server aktif, buka `http://localhost:8000` di browser.
4. Tekan `Ctrl+C` pada jendela server untuk menghentikannya.

Untuk sistem operasi lain, jalankan `python -m http.server 8000` dari folder proyek, lalu buka `http://localhost:8000`. Server lokal diperlukan agar browser dapat memuat `template.md` melalui `fetch()`.

## Cara Mengedit CV

Ubah isi pada file `template.md` sesuai data diri Anda.

Contoh:

```md
# Nama Lengkap Anda

Software Engineer | Jakarta, Indonesia | email@domain.com | linkedin.com/in/username

## Ringkasan

Profesional IT dengan pengalaman 3+ tahun di bidang pengembangan web.
```

Setelah itu, muat ulang halaman `http://localhost:8000` untuk melihat hasilnya.

## Mengubah Judul Halaman

Pada file `index.html`, bagian berikut dapat diubah sesuai nama CV Anda:

```html
<title>CV ATS - Nama Anda</title>
```

## Menyesuaikan Styling

File `style.css` berisi semua pengaturan tampilan seperti:

- warna
- ukuran font
- layout
- spacing
- gaya heading dan list

Sesuaikan berdasarkan preferensi Anda.

## Deployment ke GitHub Pages

Workflow deployment sudah tersedia di:

- `.github/workflows/deploy.yml`

Untuk menggunakannya:

1. Push project ke repository GitHub.
2. Buka tab `Settings` > `Pages`.
3. Pastikan sumber deployment diatur ke `GitHub Actions`.
4. GitHub akan otomatis men-deploy dari workflow `deploy.yml`.

## Catatan

Proyek ini cocok digunakan sebagai:

- curriculum vitae pribadi
- portfolio online dalam bentuk satu halaman
- template resume yang mudah di-customize

## Lisensi

Proyek ini dibuat untuk kebutuhan personal dan dapat Anda modifikasi sesuai kebutuhan.
