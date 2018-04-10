//Table Creation

/*
Create Table City(
cityid int(7),
 cityname varchar(20),
 stateid int(7));
*/
//Package Creation



//Importing Packages
package jquery_test;
import java.sql.*;
import java.io.*;
import java.util.*;

public class City
{
	 ConnectionPool c;
	int  cityid ; 
	String  cityname ; 
	int  stateid ; 

//Constructors Definition

public City()
{
	cityid = 0; 
	cityname = new String(); 
	stateid = 0; 
}
public City(int cityid)
{
	this.cityid = cityid;
	stateid = 0; 
}

public City(String cityname,int stateid)
{
	this.cityname = cityname;
	this.stateid = stateid;
}
public City(int cityid,String cityname,int stateid)
{
	this.cityid = cityid;
	this.cityname = cityname;
	this.stateid = stateid;
}
//Get and Set Methods 

public int getCityid()
{
	return cityid ;
}

public  void  setCityid(int cityid)
{
	this.cityid = cityid;
}
public String getCityname()
{
	return cityname ;
}

public  void  setCityname(String cityname)
{
	this.cityname = cityname;
}
public int getStateid()
{
	return stateid ;
}

public  void  setStateid(int stateid)
{
	this.stateid = stateid;
}

//Method to Add Record

public boolean add()
{
int x=0;
Connection conn=null;
try
{
if(c==null)
{
 c=ConnectionPool.getInstance();
c.initialize();
}
conn=c.getConnection();
Statement stmt = conn.createStatement(); 
String sql= "Insert into city (cityname ,stateid )  values('"+ getCityname() +"',"+ getStateid() +")";
int y = 0;
y=stmt.executeUpdate(sql);
if(y==0)
{
c.putConnection(conn);
 return false;
}
}
catch(Exception e)
{
System.out.println(e); 
 return false;
}
c.putConnection(conn);
return true;
}
public boolean update()
{
int y = 0;
Connection conn=null;
try
{
if(c==null)
{
 c=ConnectionPool.getInstance();
c.initialize();
}
conn=c.getConnection();
Statement stmt=conn.createStatement();
String sql= "Update city set cityname='"+ getCityname() +"',stateid="+ getStateid() +" where cityid = " + getCityid();
y=stmt.executeUpdate(sql);
c.putConnection(conn);
}
catch(Exception e)
{
System.out.println(e); 
return false;
}
if(y==0)
return false;
else
return true;
}
public boolean delete()
{
int x=0;
Connection conn=null;
try
{
if(c==null)
{
 c=ConnectionPool.getInstance();
c.initialize();
}
conn=c.getConnection();
Statement stmt = conn.createStatement();
String sql = "delete from city where cityid= " + getCityid();
x=stmt.executeUpdate(sql);
c.putConnection(conn);
}
catch(Exception e)
{
System.out.println(e); 
 return false;
}
if(x==0)
return false;
else
return true;
}
public static Vector getRecords()
{
Vector rows=new Vector();
ConnectionPool c=null;
Connection conn=null;
try
{
if(c==null)
{
 c=ConnectionPool.getInstance();
c.initialize();
}
conn=c.getConnection();
Statement stmt =conn.createStatement(); 	
String sql="Select * from city";
ResultSet rs=stmt.executeQuery(sql); 
while( rs.next() )
{
Vector cr = new Vector();
cr.addElement(rs.getString(1));
cr.addElement(rs.getString(2));
cr.addElement(rs.getString(3));
rows.addElement(cr);
}
c.putConnection(conn) ;
}
catch(Exception e)
{
System.out.println(e); 
return null;
}
return rows ;
}
public static City  getRecord( int id )
{
City obj = new City();
try{
ConnectionPool c = null;
Connection conn = null;
if(c == null)
{
c = ConnectionPool.getInstance();
c.initialize();
}
conn = c.getConnection();
Statement stmt = conn.createStatement();
String sql="Select * from city where  cityid =" + id ;
ResultSet rs=stmt.executeQuery(sql);
if(!rs.next())
return null;
obj = new City(rs.getInt(1),rs.getString(2),rs.getInt(3));
c.putConnection(conn) ;
System.out.println(sql); 
}catch(Exception e){System.out.println(e); 
return null; }
return obj;
}

 public static String getOptionsByState(int stateid)
{
String rows =new String();
try{
ConnectionPool c = null;
Connection conn = null;
if(c == null)
{
c = ConnectionPool.getInstance();
c.initialize();
}
conn = c.getConnection();
Statement stmt = conn.createStatement();
String sql = "select *  from city where stateid="+stateid;
ResultSet rs=stmt.executeQuery(sql);
while(rs.next())
{
rows+= " <option value="+rs.getInt(1)+"> " +"  "+rs.getString(2)+"\n";
}
c.putConnection(conn) ;
}
catch(Exception e)
{
System.out.println(e);
 }
return rows;
}


 public static String getOptions()
{
String rows =new String();
try{   
ConnectionPool c = null;
Connection conn = null;
if(c == null)
{
c = ConnectionPool.getInstance();
c.initialize();
}
conn = c.getConnection();
Statement stmt = conn.createStatement();
String sql = "select *  from city "; 
ResultSet rs=stmt.executeQuery(sql);
while(rs.next())
{
rows+= " <option value="+rs.getInt(1)+"> " +"  "+rs.getString(2)   +"  "+rs.getInt(3)+"\n";
}
c.putConnection(conn) ;
}
catch(Exception e)
{
System.out.println(e);
 }
return rows;
}
public static String cDate(String dt)
{
String months[]={"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
int a = dt.indexOf("-");
int b = dt.lastIndexOf("-");
int c=dt.indexOf(" ");
String yyyy=dt.substring(0,a);
String mm=dt.substring(a+1,b);
String dd=dt.substring(b+1,c);
int x=Integer.parseInt(mm);
String mmm=months[x-1];
String a1=dd+"-"+mmm+"-"+yyyy;
return a1;
}
}
