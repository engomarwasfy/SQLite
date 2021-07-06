create stream x(a) port 10;
insert into x values (1);
insert into x values (2);
insert into x values (3);
create view view_x as continuous select * from x SLIDE 5;