# pgAdmin4Python
Конфиг для сборки Docker образа pgAdmin4python
Команда сборки 
```
  docker build . -tag you_name_build
```
Команда запуска
```
  docker run -p 5050:5050 you_name_build you_Email you_password
```

Можно собрать везде, где есть поддержка python3
Собран специально для работы на RasperryPi4
