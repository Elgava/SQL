create table my_contacts (
id serial not null,
first_name varchar(30),
last_name varchar(30),
phone bigint,
email varchar(50),
gender varchar(10),
birthday date,
constraint cont_id primary key(id)
);

create table profession(
prof_id serial not null,
profession varchar(20),
constraint proff_id primary key(prof_id)
);

create table zip_code(
zip_code_id serial not null,
city varchar(25),
province varchar(20),
constraint zip_id primary key(zip_code_id)
);

create table status(
status_id serial not null,
status varchar(15),
constraint stat_id primary key(status_id)
);

create table interests(
int_id serial not null,
interest varchar(30),
constraint interest primary key(int_id)
);

create table seeking(
seeking_id serial not null,
seek varchar(10),
constraint seeking_ primary key(seeking_id)
);

create table contact_interest(
cont_int_id serial not null,
int_id integer,
primary key (int_id, cont_int_id)
);

create table contact_seeking(
cont_seek_id serial not null,
seeking_id integer,
primary key (cont_int_id, int_id)
);

alter table my_contacts
add column professions integer references profession(prof_id);

alter table my_contacts
add column zip_code_ids integer references zip_code(zip_code_id);

alter table my_contacts 
add column status_ integer references status(status_id);

alter table contact_interest
add column contact_ids integer references my_contacts(id);
alter table contact_interest
add column int_id integer references interests(int_id);

alter table contact_seeking
add column conta_id integer references my_contacts(id);
alter table contact_seeking
add column seeking_s integer references seeking(seeking_id);

insert into my_contacts(first_name, last_name, phone, email, gender, birthday, 
						professions, status_)
values('livashen', 'moodley', 0721596848, 'moodley.livi02@gmail.com', 'male', 
	   '11-11-2000', 1, 1),
	  ('tristan', 'ferris', 0665543830, 'tferrris096@gmail.com', 'male',
	  '03-11-2000', 2, 1),
	  ('duncan', 'De Waal', 0740387232, 'bakthul_snackful@gmail.com', 'male',
	  '09-03-1998', 4, 2);

insert into profession(profession)
Values('sofware engineer'),
	  ('therapist'),
	  ('veterinarian'),
	  ('twitch streamer');
	  
insert into zip_code(city, province)
values ('Centurion', 'gauteng'),
	   ('johannesburg', 'gauteng'),
	   ('johannesburg', 'gauteng'),
	   ('Centurion', 'gauteng');
	   
insert into status(status)
values('single'),
	  ('single'),
	  ('sinle'),
	  ('divorced');
	  
insert into interests(interest)
values('cars and gyming'),
	  ('cars and food'),
	  ('food and movies'),
	  ('video games and food');
	  
insert into seeking(seek)
values('marriage'),
	  ('friendship'),
	  ('long term'),
	  ('dating');