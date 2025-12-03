# Laporan Jarkom Modul 5 Kelompok K-36

## Anggota

| Nama							| NRP			|
|-------------------------------|---------------|
| Ahmad Wildan Fawwaz			| 5027241001	|
| Muhammad Rakha Hananditya R.	| 5027241015	|

## Asisten Penguji
| Nama							| Kode Asisten	|
|-------------------------------|---------------|
| Nayla Raissa Azzahra			| P5			|

## Pendahuluan

بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيْمِ

<p align="justify">
&emsp; Segala puji syukur kita panjatkan atas kehadirat Allah Subḥānahu wa Ta‘ālā, karena berkat atas rahmat, karunia, dan nikmat-Nya praktikum modul 5 untuk mata kuliah Komunikasi Data dan Jaringan Komputer dapat diselesaikan dengan baik. Tidak lupa shalawat serta salam semoga senantiasa tercurah kepada junjungan kita Nabi Muhammad Shallallāhu ‘alaihi wa Sallam, suri teladan terbaik bagi umat manusia, beserta keluarga, sahabat, dan para pengikutnya hingga akhir zaman.
</p>

<p align="justify">
&emsp; Laporan ini disusun sebagai suatu bentuk pertanggungjawaban akademik atas kegiatan praktikum yang telah dilaksanakan. Selain itu, laporan ini berfungsi sebagai dokumentasi resmi tertulis dari seluruh rangkaian kegiatan yang telah dilakukan, sehingga dapat menjadi acuan dalam evaluasi maupun penilaian praktikum.
</p>

Rasulullah Shallallāhu ‘alaihi wa Sallam pernah bersabda:

إِذَا مَاتَ ابْنُ آدَمَ انْقَطَعَ عَمَلُهُ إِلَّا مِنْ ثَلَاثٍ: صَدَقَةٍ جَارِيَةٍ، أَوْ عِلْمٍ يُنْتَفَعُ بِهِ، أَوْ وَلَدٍ صَالِحٍ يَدْعُو لَهُ


<em>Artinya</em>:
<p align="justify">
"Apabila anak Adam meninggal dunia, maka terputuslah amalnya kecuali tiga perkara: sedekah jariyah, ilmu yang bermanfaat, atau anak shalih yang mendoakannya." 
<br>
(HR. Muslim, no. 1631)
</p>
  
وَمَنْ سَلَكَ طَرِيقًا يَلْتَمِسُ فِيهِ عِلْمًا سَهَّلَ اللَّهُ لَهُ بِهِ طَرِيقًا إِلَى الْجَنَّةِ

<em>Artinya</em>:
<p align="justify">
"Barang siapa yang menempuh jalan untuk mencari ilmu, maka Allah akan mudahkan baginya jalan menuju surga." 
 <br>
(HR. Muslim, no. 2699)
</p>
  
<p align="justify">
&emsp; Maka dari itu, semoga apa yang tertulis pada laporan ini dapat menjadi ilmu yang bermanfaat, serta menjadi keberkahan dan amal yang diterima di sisi Allah Subḥānahu wa Ta‘ālā. Semoga bagi yang membaca ini, Allah memudahkan semua langkahnya dalam menuntut ilmu, mengamalkannya, serta menjaganya agar tidak sekadar menjadi hafalan, namun juga menjadi bekal yang membawanya ke surga.
</p>

Āmīn yā Rabbal ‘ālamīn.

## Daftar Isi

- [Anggota](#anggota)
- [Pendahuluan](#pendahuluan)
- [Daftar Isi](#daftar-isi)
- [Walkthrough](#walkthrough)
    - [Misi 1: Memetakan Medan Perang](#-misi-1-memetakan-medan-perang)
        - [Soal 1](#a-soal-1)
        - [Soal 2](#b-soal-2)
        - [Soal 3](#c-soal-3)
        - [Soal 4](#d-soal-4)
    - [Misi 2: Menemukan Jejak Kegelapan (Security Rules)](#-misi-2-menemukan-jejak-kegelapan-security-rules)
        - [Soal 1](#a-soal-1)
        - [Soal 2](#b-soal-2)
        - [Soal 3](#c-soal-3)
        - [Soal 4](#d-soal-4)
        - [Soal 5](#e-soal-5)
        - [Soal 6](#f-soal-6)
        - [Soal 7](#g-soal-7)
        - [Soal 8](#h-soal-8)
    - [Misi 3: Isolasi Sang Nazgûl [|||||]](#-misi-3-isolasi-sang-nazgûl-)
        - [Soal 1](#a-soal-1)

## Walkthrough

### • Misi 1: Memetakan Medan Perang

#### a. Soal 1

<blockquote>
	<ol start="1">
		<li>
			<p align="justify">
				Identifikasi Perangkat:
				<ul>
					<li>Narya: Berfungsi sebagai DNS Server.</li>
					<li>Vilya: Berfungsi sebagai DHCP Server.</li>
					<li>Web Servers: Palantir  dan IronHills.</li>
					<li>Client (Pasukan):</li>
					<ul>
						<li>Khamul: 5 host (Target/Burnice).</li>
						<li>Cirdan: 20 host (Lycaon).</li>
						<li>Isildur: 30 host (Policeboo).</li>
						<li>Durin: 50 host (Caesar).</li>
						<li>Gilgalad: 100 host (Ellen).</li>
						<li>Elendil: 200 host (Jane).</li>
					</ul>
				</ul>
			</p>
		</li>
	</ol>
</blockquote>


#### b. Soal 2

<blockquote>
	<ol start="2">
		<li>
			<p align="justify">
				Setelah membagi alamat IP menggunakan VLSM (Prefix IP sesuai kelompok), gambarkan pohon subnet yang menunjukkan hierarki pembagian IP di jaringan Aliansi. Lingkari subnet yang akan dilewati.
			</p>
		</li>
	</ol>
</blockquote>


#### c. Soal 3

<blockquote>
	<ol start="3">
		<li>
			<p align="justify">
				Buatlah konfigurasi rute untuk menghubungkan semua subnet dengan benar. Pastikan perangkat dapat saling terhubung.
			</p>
		</li>
	</ol>
</blockquote>

#### d. Soal 4

<blockquote>
	<ol start="4">
		<li>
			<p align="justify">
				Konfigurasi Service → Dikerjakan setelah Misi 2 No. 1:
				<ul>
					<li>Vilya sebagai DHCP Server agar perangkat dalam Khamul, Durin, Gilgalad, Elendil, Cirdan, dan Isildur menerima IP otomatis.</li>
					<li>AnduinBanks, Rivendell, dan Minastir berfungsi sebagai DHCP Relay.</li>
					<li>Narya sebagai DNS Server.</li>
					<li>Palantir dan IronHills sebagai Web Server (Apache/Nginx).</li>
					<li>Buat index.html berisikan : "Welcome to {hostname}".</li>
				</ul>
			</p>
		</li>
	</ol>
</blockquote>

### • Misi 2: Menemukan Jejak Kegelapan (Security Rules)

#### a. Soal 1

<blockquote>
	<ol start="1">
		<li>
			<p align="justify">
				Agar jaringan aman, terapkan aturan firewall berikut. 
				<ul>
					<li>Agar jaringan Aliansi bisa terhubung ke luar (Valinor/Internet), konfigurasi routing menggunakan iptables.</li>
					<li>Syarat: Kalian TIDAK DIPERBOLEHKAN menggunakan target MASQUERADE.</li>
				</ul>
			</p>
		</li>
	</ol>
</blockquote>

#### b. Soal 2

<blockquote>
	<ol start="2">
		<li>
			<p align="justify">
				Karena Vilya (DHCP) menyimpan data vital, pastikan tidak ada perangkat lain yang bisa melakukan PING ke Vilya.
				<ul>
					<li>Namun, Vilya tetap leluasa dapat mengakses/ping ke seluruh perangkat lain.</li>
				</ul>
			</p>
		</li>
	</ol>
</blockquote>



#### c. Soal 3

<blockquote>
	<ol start="3">
		<li>
			<p align="justify">
				Agar lokasi pasukan tidak bocor, hanya Vilya yang dapat mengakses Narya (DNS).
				<ul>
					<li>Gunakan nc (netcat) untuk memastikan akses port DNS (53) ini.</li>
					<li><i>[Hapus aturan ini setelah pengujian agar internet lancar untuk install paket]</i></li>
				</ul>
			</p>
		</li>
	</ol>
</blockquote>


#### d. Soal 4

<blockquote>
	<ol start="4">
		<li>
			<p align="justify">
				Aktivitas mencurigakan terdeteksi di IronHills. Berdasarkan dekrit Raja, IronHills hanya boleh diakses pada Akhir Pekan (Sabtu & Minggu).
				<ul>
					<li>Akses hanya diizinkan untuk Faksi Kurcaci & Pengkhianat (Durin & Khamul) serta Faksi Manusia (Elendil & Isildur).</li>
					<li>Karena hari ini adalah Rabu (Simulasikan waktu server), mereka harusnya tertolak. Gunakan curl untuk membuktikan blokir waktu ini.</li>
				</ul>
			</p>
		</li>
	</ol>
</blockquote>

#### e. Soal 5

<blockquote>
	<ol start="5">
		<li>
			<p align="justify">
				Sembari menunggu, pasukan berlatih di server Palantir. Akses dibatasi berdasarkan ras:
				<ul>
					<li>Faksi Elf (Gilgalad & Cirdan): Boleh akses jam 07.00 - 15.00.</li>
					<li>Faksi Manusia (Elendil & Isildur): Boleh akses jam 17.00 - 23.00.</li>
					<li>Gunakan curl untuk memastikan akses sesuai jam.</li>
				</ul>
			</p>
		</li>
	</ol>
</blockquote>

#### f. Soal 6

<blockquote>
	<ol start="6">
		<li>
			<p align="justify">
				Pasukan Manusia (Elendil) diminta menguji keamanan Palantir. Lakukan simulasi port scan dengan nmap rentang port 1-100.
				<ul>
					<li>Web server harus memblokir scan port yang melebihi 15 port dalam waktu 20 detik.</li>
					<li>Penyerang yang terblokir tidak dapat melakukan ping, nc, atau curl ke Palantir.</li>
					<li>Catat log iptables dengan prefix "PORT_SCAN_DETECTED".</li>
				</ul>
			</p>
		</li>
	</ol>
</blockquote>

#### g. Soal 7

<blockquote>
	<ol start="7">
		<li>
			<p align="justify">
				Hari Sabtu tiba. Akses ke IronHills dibatasi untuk mencegah overload.
				<ul>
					<li>Akses ke IronHills hanya boleh berasal dari 3 koneksi aktif per IP dalam waktu bersamaan.</li>
					<li>Lakukan uji coba beban (stress test) menggunakan curl atau ab.</li>
				</ul>
			</p>
		</li>
</blockquote>

#### h. Soal 8

<blockquote>
	<ol start="8">
		<li>
			<p align="justify">
				Selama uji coba, terdeteksi anomali. Setiap paket yang dikirim Vilya menuju Khamul, ternyata dibelokkan oleh sihir hitam menuju IronHills.
				<ul>
					<li>Gunakan nc untuk memastikan alur pengalihan ini (Redirect trafik dari Client ke Server).</li>
				</ul>
		</li>
</blockquote>

### • Misi 3: Isolasi Sang Nazgûl [|||||]

#### a. Soal 1

<blockquote>
	<ol start="1">
		<li>
			<p align="justify">
				Penjara Barad-dûr: Mengetahui pengkhianatan Khamul, Aliansi mengambil langkah final: Blokir semua lalu lintas masuk dan keluar dari Khamul.
				<ul>
					<li>Gunakan nc dan ping untuk membuktikan Khamul terisolasi total.</li>
					<li>Penting: Yang diblokir adalah Khamul (5 Host), BUKAN Durin (50 Host). Jangan sampai salah sasaran.</li>
				</ul>
		</li>
</blockquote>
