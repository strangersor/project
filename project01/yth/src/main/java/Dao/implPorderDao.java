package Dao;

import java.util.List;

public interface implPorderDao {

	
//create
void add(Object o);
//read
Object query(int id);
List<Object> queryNickName(String nickname);
List<Object> queryUnfinish();
List<Object> queryMonth();

//update
void update(Object o);	
//delete
void delete(Object o);	
}
