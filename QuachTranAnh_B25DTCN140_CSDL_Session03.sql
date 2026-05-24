use newschema;
alter table design 
add constraint architect_id
foreign key(architect_id) references architect(id);

alter table design 
add constraint building_id
foreign key (building_id) references building(id);

alter table building
add constraint host_id
foreign key(host_id) references host(id);

alter table building
add constraint contractor_id
foreign key (contractor_id) references contractor(id);

alter table work
add constraint fk_building_id
foreign key(building_id) references building(id);

alter table work
add constraint worker_id
foreign key(worker_id) references worker(id);


select * from architect;

select name,sex from architect;

select distinct birthday from architect;

select name,birthday 
from architect
order by birthday;

select name,birthday 
from architect
order by birthday desc;

select * from building 
order by cost, city;


select * from architect
where name = "le thanh tung";

select name,birthday from worker
where skill = "han" or skill = "dien";

select name from worker
where skill = "han" or skill = "dien" and birthday > 1948;

select * from worker
where birthday + 20 > year;

select * from worker 
where birthday = 1945 or birthday = 1940 or birthday = 1948;

select * from worker 
where birthday like "%1945%" or birthday like "%1940%" or birthday like "%1948%";

select * from building
where cost >= 200 and cost <= 500;

select * from building
where cost between 200 and 500;

select * from architect
where name like"nguyen%";

select * from architect
where name like "% anh %";

select * from architect 
where name like "th___";

select * from contractor
where phone is null;



