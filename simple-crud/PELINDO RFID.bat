@echo off
start chrome "http://localhost:8000/"
Rem Change Directory to your project
%cd%
Rem Run Artisan Command
php artisan serve
