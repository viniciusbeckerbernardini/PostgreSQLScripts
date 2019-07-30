/**
Backup do código raw do banco trazendo todos os dados
sem criptografia

pg_dump -U postgres DVDRental > bkp1.sql

Restore 

psql -U postgres DVDRentalBKP < bkp1.sql