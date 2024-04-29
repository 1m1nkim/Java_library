CREATE DATABASE IF NOT EXISTS j_studyroom;
USE j_studyroom;

-- 학생 정보 테이블
CREATE TABLE IF NOT EXISTS stu (
    num INT PRIMARY KEY,
    name VARCHAR(100),
    pw VARCHAR(100)
);

-- 예약 정보 테이블
CREATE TABLE IF NOT EXISTS res (
    resNum INT PRIMARY KEY,
    roomNum INT,
    resDay INT,
    resTime INT,
    repStuName VARCHAR(100),
    repStuNum INT,
    resState VARCHAR(50),
    accStuCnt INT,
    FOREIGN KEY (repStuNum) REFERENCES stu(num)
);

-- 예약 취소 정보 테이블
CREATE TABLE IF NOT EXISTS cancle (
    resNum INT,
    roomNum INT,
    resDay INT,
    resTime INT,
    repStuName VARCHAR(100),
    repStuNum INT,
    resState VARCHAR(50),
    accStuCnt INT,
    PRIMARY KEY (resNum),
    FOREIGN KEY (repStuNum) REFERENCES stu(num)
);

select * from stu