drop procedure if exists test_loop;

delimiter //
create procedure test_loop(in i int)
begin
  declare cnt int default 0;
  while cnt < i do
    set cnt = cnt + 1;
    insert into Shohin values(cnt,concat('test', cnt));
  end while;
end
//


delimiter ;

call test_loop(100);