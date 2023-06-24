SELECT 
     u.username AS USERNAME,
     u.password AS PASSWORD,
     u.password AS CONFIRM_PASSWORD,
     u.fullname AS FRIST_LAST_NAME,
     u.address AS ADDRESS,
     p.name AS PROVINCES,
     d.name AS DISTRICT,
     s.name AS SUBDISTRICT,
     z.zipcode AS ZIPCODE,
     u.age AS AGE
FROM USERS u 
JOIN ZIPCODES z ON z.id = u.zipcode_fk
JOIN DISTRICT d ON d.id = z.district_fk
JOIN PROVINCES p ON p.id = z.provinces_fk
JOIN SUBDISTRICT s ON s.id = z.subdistrict_fk
WHERE u.username IN ('paiduay' , 'kasidit')
-- WHERE u.username = 'paiduay' OR u.username = 'kasidit'













