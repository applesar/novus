create table disease_chat_tree (
     id int(11) auto_increment primary key, 
     from_id int(11),
     keyword varchar(254),
     keyword2 varchar(254),      
     response varchar(254),
     response2 varchar(254),
     response3 varchar(254),
     comment varchar(254));

