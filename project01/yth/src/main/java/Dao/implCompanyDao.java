package Dao;

import java.util.List;

public interface implCompanyDao {

//Create
void add(Object o);


//read
List<Object> queryAll();
Object query(int id);
List<Object> queryNickname(String nickname);
List<Object> queryName(String name);
//update
void update(Object o);	
//delete
void delete(Object o);	
	
}
