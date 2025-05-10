-- 1. Yolcu Sayısı
SELECT COUNT(*) AS Yolcu_Sayisi 
FROM titanic;

-- 2. Yaş ortalaması
SELECT AVG(Age) AS Ortalama_Yas 
FROM titanic;

-- 3. Sınıflara Göre Yaş Ortalaması
SELECT Pclass, AVG(Age) AS Ortalama_Yas
FROM titanic
GROUP BY Pclass;

-- 4. Erkek ve Kadın Yolcu Sayısı
SELECT Sex, COUNT(*) AS Yolcu_Sayisi
FROM titanic
GROUP BY Sex;

-- 5. Yaş ve Cinsiyet İlişkisi
SELECT Sex, AVG(Age) AS Ortalama_Yas
FROM titanic
GROUP BY Sex;

-- 6. Hayatta Kalanlar (Survived = 1) ve Kalmayanların (Survived = 0) Sayısı
SELECT Survived, COUNT(*) AS Yolcu_Sayisi
FROM titanic
GROUP BY Survived;

-- 7. Genel Hayatta Kalma Oranı (Survived = 1) ve Kalmayanların (Survived = 0)
SELECT AVG(Survived) AS Hayatta_Kalma_Orani 
FROM titanic;

-- 8. Cinsiyetlere Göre Hayatta Kalma Durumu (Survived = 1) ve Kalmayanların (Survived = 0)
SELECT Sex, AVG(Survived) AS Hayatta_Kalma_Orani
FROM titanic
GROUP BY Sex;

-- 9. Yaş Aralıklarına Göre Hayatta Kalma Oranı (Survived = 1) ve Kalmayanların (Survived = 0)
SELECT CASE 
            WHEN Age < 18 THEN '0-17'
            WHEN Age BETWEEN 18 AND 30 THEN '18-30'
            WHEN Age BETWEEN 31 AND 50 THEN '31-50'
            WHEN Age > 50 THEN '51+'
          END AS Yas_Araligi, AVG(Survived) AS Hayatta_Kalma_Orani
FROM titanic
GROUP BY Yas_Araligi;

-- 10. Kalkış Limanına Göre Hayatta Kalma Durumu (C=Cherbourg, Q=Queenstown, S=Southampton) (Survived = 1) ve Kalmayanların (Survived = 0)
SELECT Embarked, AVG(Survived) AS Hayatta_Kalma_Orani
FROM titanic
GROUP BY Embarked;

-- 11. Hayatta Kalan ve Kalmayanların Ortalama Bilet Fiyatları (Survived = 1) ve Kalmayanların (Survived = 0)
SELECT Survived, AVG(Fare) AS Ortalama_Fiyat
FROM titanic
GROUP BY Survived;
