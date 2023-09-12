# Вариант задания 21
- Причесывание бьютификатором HTML
    - Производится в контейнере tester
- Анализ по 10 существующим критериям
    - Прописаны в pylintrc
- Проверка на загрузку файла
    - По команде пробует выполнить .py
- Правка HTML кода страницы
    - По команде пробует выполнить .py
- Внешний доступ в SSH контейнеры - в app по сгенерированной паре ключей (в файле)
    - Не реализовано
- Вывод логов (docker log + файл, оба потока)
    - Логи записываются в файл ./logs/tester-logs.txt на хосте
	- Логи отображаются в консоли по команде: 
	```docker logs 8310_ivanov_y-tester-1```
- Передача параметров - ssh ключ
- Ограничения ресурсов - количество процессов
    - Ограничены в 50

# Сборка и поднятие контейнеров
```
docker compose build
```
```
docker compose up
```

# Запуск тестов
Запуск HTML Prettify
```
docker exec -it 8310_ivanov_y-tester-1 sh tests/prettify.sh
```

Запуск Integration
```
docker exec -it 8310_ivanov_y-tester-1 sh tests/integration.sh
```

Запуск Pylint
```
docker exec -it 8310_ivanov_y-tester-1 sh tests/pylint.sh
```

Запуск Selenium
```
docker exec -it 8310_ivanov_y-tester-1 sh tests/selenium.sh
```
