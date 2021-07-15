create stream x(a) port 10;
create view view_x as continuous select * from x SLIDE 5;