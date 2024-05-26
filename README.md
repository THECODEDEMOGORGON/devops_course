# ДЗ2. Docker Compose 

## docker-compose.yaml

Этот docker-compose.yml:

- Использует собственные Dockerfile для сервисов jupyter-app и init-db.
- Включает depends_on для сервиса db, который ждет иницализации базы данных.
- Включает volumes для постоянного хранения данных PostgreSQL и данных Jupyter Notebook.
- Использует проброс порта для PostgreSQL и Jupyter Notebook.
- Добавляет healthcheck для сервиса db.
- Использует одну общую сеть для всех сервисов.

## Вопросы

### Ресурсы
- Можно ли ограничивать ресурсы (например, память или CPU) для сервисов в docker-compose.yml? Если нет, то почему, если да, то как?

В docker-compose.yml можно ограничивать ресурсы, такие как память и CPU, для каждого сервиса. Это делается при помощи параметров limits, где можно ограничить использование памяти или CPU

```
deploy:
  resources:
    limits:
      cpus: '0.001'
      memory: 50M
```
### Запуск сервиса
- Как можно запустить только определенный сервис из docker-compose.yml, не запуская остальные?

Для запуска только одного определенного сервиса из файла docker-compose.yml, можно использовать команду docker-compose up, указав имя сервиса после ключевого слова up.

```
docker-compose up -d [service-name]
```
