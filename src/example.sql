-- create stream temp_sensor(id Integer, vTemp Integer, tStamp Integer) port 8888;
-- create view view_x as continuous select id from temp_sensor where vTemp > 30 SLIDE 10;
create stream room_temperature_sensor(room_id integer, temperature integer, timestamp integer) port 8888;

-- create view fire_alert as select room_id from  room_temperature_sensor where temperature>30;

create view fire_alert as continuous select room_id from  room_temperature_sensor where temperature>30  SLIDE 10;
-- insert into x values(1);