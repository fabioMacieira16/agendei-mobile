/*
    Formato para usar no bancode dos dados MySQL
*/

CREATE TABLE users (
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(100)
);

CREATE TABLE admins (
    id_admin INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(100)
);

CREATE TABLE doctors (
    id_doctor INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    specialty VARCHAR(50),
    icon VARCHAR(10)
);

CREATE TABLE services (
    id_service INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(50)
);

CREATE TABLE doctors_services (
    id_doctor_service INT AUTO_INCREMENT PRIMARY KEY,
    id_doctor INT,
    id_service INT,
    price DECIMAL(9,2),
    FOREIGN KEY (id_doctor) REFERENCES doctors(id_doctor),
    FOREIGN KEY (id_service) REFERENCES services(id_service)
);

CREATE TABLE appointments (
    id_appointment INT AUTO_INCREMENT PRIMARY KEY,
    id_doctor INT,
    id_service INT,
    id_user INT,
    booking_date DATE,
    booking_hour VARCHAR(5),
    FOREIGN KEY (id_doctor) REFERENCES doctors(id_doctor),
    FOREIGN KEY (id_service) REFERENCES services(id_service),
    FOREIGN KEY (id_user) REFERENCES users(id_user)
);