-- Hapus database jika ada
DROP DATABASE IF EXISTS portfolio_db;

-- Buat database baru
CREATE DATABASE portfolio_db;
USE portfolio_db;

-- Tabel users
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    photo VARCHAR(255) DEFAULT 'default.jpg',
    bio TEXT,
    skills TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabel portfolio items
CREATE TABLE portfolio_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    image VARCHAR(255),
    project_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Insert users satu per satu untuk menghindari error
INSERT INTO users (username, password, full_name, email, photo, bio, skills) VALUES
('Saddam_Davi', '$2y$10$K8J5/6rKjW0XNrwzAEUeseOJ5KQxB7zTWCHr8XzqyeDbRKM5kGOxi', 'Saddam Davi', 'madas54@gmail.com', 'sddm.jpg', 'Translator yang suka belajar bahasa asing', 'bahasa arab, latin, mandarin');

INSERT INTO users (username, password, full_name, email, photo, bio, skills) VALUES
('Arto_Ragil', '$2y$10$K8J5/6rKjW0XNrwzAEUeseOJ5KQxB7zTWCHr8XzqyeDbRKM5kGOxi', 'Muhamad Arto Ragil Putra', 'artoagil14@gmail.com', 'arts.jpg', 'seorang seniman dan pencinta keindahan yang hidup bebas dan mandiri, tak dikendalikan oleh siapa pun. ', 'Menggambar (manual atau digital), Melukis (cat minyak akrilik cat air dll');

INSERT INTO users (username, password, full_name, email, photo, bio, skills) VALUES
('ipan', '$2y$10$K8J5/6rKjW0XNrwzAEUeseOJ5KQxB7zTWCHr8XzqyeDbRKM5kGOxi', 'Irvan Firmansyah', 'irvanfirmansyah335@gmail.com', 'ipan.jpg', 'orang yang senang belajar musik (masih pemula)', 'gitar, drum, nyanyi');

INSERT INTO users (username, password, full_name, email, photo, bio, skills) VALUES
('rdhohkim_', '$2y$10$K8J5/6rKjW0XNrwzAEUeseOJ5KQxB7zTWCHr8XzqyeDbRKM5kGOxi', 'Muhamad Ridho Hakim', 'mridhohakim66@gmail.com', 'idoy.jpg', 'IT support membantu instalasi jaringan', 'Ubuntu, NodeJS, Python');

INSERT INTO users (username, password, full_name, email, photo, bio, skills) VALUES
('Faiz', '$2y$10$K8J5/6rKjW0XNrwzAEUeseOJ5KQxB7zTWCHr8XzqyeDbRKM5kGOxi', 'Faiz Arko Alhaqni', 'faizarkogaming@gmail.com', 'Faiz.jpg', 'Konten kreator gaming dengan keahlian dalam editing', 'Konten kreator gaming,microsoft word dan Microsoft excel');

INSERT INTO users (username, password, full_name, email, photo, bio, skills) VALUES
('dio', '$2y$10$K8J5/6rKjW0XNrwzAEUeseOJ5KQxB7zTWCHr8XzqyeDbRKM5kGOxi', 'Azriel Widioko Deswanto', 'Widioko04@gmail.com', 'dio.jpg', 'Seorang traveler dengan kemampuan manajemen keuangan', 'Manage Keuangan, Beretika, Bernegosiasi');

INSERT INTO users (username, password, full_name, email, photo, bio, skills) VALUES
('samudr44', '$2y$10$K8J5/6rKjW0XNrwzAEUeseOJ5KQxB7zTWCHr8XzqyeDbRKM5kGOxi', 'Achmad Samudra Alfatihah', 'alfasamudra7494@gmail.com', 'alfa.jpg', 'Kenek kuli yang Mengoperasikan molen (mesin adukan semen)', 'Ngecor,Ngecat, mlaster');

INSERT INTO users (username, password, full_name, email, photo, bio, skills) VALUES
('Amud', '$2y$10$K8J5/6rKjW0XNrwzAEUeseOJ5KQxB7zTWCHr8XzqyeDbRKM5kGOxi', 'Mahmud', 'mahmudg561@gmail.com', 'amud.jpg', 'Setiap hari dimulai dengan niat bangun produktif', 'bangun tidur, Hadehhhh apa-apaan ini, tidur lagi');

-- Insert portfolio items satu per satu
INSERT INTO portfolio_items (user_id, title, description, image, project_url) VALUES
(1, 'E-Commerce Website', 'Website toko online dengan fitur pembayaran lengkap', 'project1.jpg', 'https://github.com/johndoe/ecommerce');

INSERT INTO portfolio_items (user_id, title, description, image, project_url) VALUES
(1, 'Task Management App', 'Aplikasi manajemen tugas berbasis web', 'project2.jpg', 'https://github.com/johndoe/taskapp');

INSERT INTO portfolio_items (user_id, title, description, image, project_url) VALUES
(2, 'Mobile Banking UI', 'Desain interface untuk aplikasi mobile banking', 'design1.jpg', 'https://dribbble.com/janesmith');

INSERT INTO portfolio_items (user_id, title, description, image, project_url) VALUES
(2, 'Restaurant Website Design', 'Desain website untuk restaurant chain', 'design2.jpg', 'https://behance.net/janesmith');

INSERT INTO portfolio_items (user_id, title, description, image, project_url) VALUES
(3, 'API Gateway System', 'Sistem gateway untuk microservices architecture', 'backend1.jpg', 'https://github.com/mikewilson/api-gateway');

INSERT INTO portfolio_items (user_id, title, description, image, project_url) VALUES
(4, 'Portfolio Website', 'Website portfolio responsive dengan animasi modern', 'frontend1.jpg', 'https://github.com/sarahjohnson/portfolio');

INSERT INTO portfolio_items (user_id, title, description, image, project_url) VALUES
(5, 'Fitness Tracking App', 'Aplikasi mobile untuk tracking aktivitas fitness', 'mobile1.jpg', 'https://github.com/davidbrown/fitness-app');

INSERT INTO portfolio_items (user_id, title, description, image, project_url) VALUES
(6, 'Sales Prediction Model', 'Model machine learning untuk prediksi penjualan', 'data1.jpg', 'https://github.com/lisagarcia/sales-prediction');

INSERT INTO portfolio_items (user_id, title, description, image, project_url) VALUES
(7, 'CI/CD Pipeline Setup', 'Setup automated deployment pipeline', 'devops1.jpg', 'https://github.com/alexmartinez/cicd-pipeline');

-- Verifikasi data
SELECT 'Users created:' as Info, COUNT(*) as Count FROM users;
SELECT 'Portfolio items created:' as Info, COUNT(*) as Count FROM portfolio_items;

-- Password untuk semua user: password123

UPDATE users SET photo = 'img/john.jpg' WHERE username = 'john_doe';