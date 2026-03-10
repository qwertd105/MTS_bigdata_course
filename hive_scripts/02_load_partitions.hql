USE demo;

-- Явно добавляем партиции и загружаем данные из HDFS в каждую партицию
ALTER TABLE events ADD IF NOT EXISTS PARTITION (dt='2026-03-01');
LOAD DATA INPATH '/tmp/hive_input/dt=2026-03-01/data.csv' INTO TABLE events PARTITION (dt='2026-03-01');

ALTER TABLE events ADD IF NOT EXISTS PARTITION (dt='2026-03-02');
LOAD DATA INPATH '/tmp/hive_input/dt=2026-03-02/data.csv' INTO TABLE events PARTITION (dt='2026-03-02');

-- Проверка
SELECT dt, count(*) AS cnt FROM events GROUP BY dt ORDER BY dt;
