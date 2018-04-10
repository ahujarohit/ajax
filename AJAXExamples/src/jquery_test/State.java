//Table Creation

/*
Create Table State(
stateid int(7),
 statename varchar(20));
*/
//Package Creation



//Importing Packages
package jquery_test;
import java.sql.*;
import java.io.*;
import java.util.*;

public class State
{
	 ConnectionPool c;
	int  stateid ; 
	String  statename ; 

//Constructors Definition

public State()
{
	stateid = 0; 
	statename = new String(); 
}
public State(int stateid)
{
	this.stateid = stateid;
}

public State(String statename)
{
	this.statename = statename;
}
public State(int stateid,String statename)
{
	this.stateid = stateid;
	this.statename = statename;
}
//Get and Set Methods 

public int getStateid()
{
	return stateid ;
}

public  void  setStateid(int stateid)
{
	this.stateid = stateid;
}
public String getStatename()
{
	return statename ;
}

public  void  setStatename(String statename)
{
	this.statename = statename;
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
String sql= "Insert into state (statename )  values('"+ getStatename() +"')";
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
String sql= "Update state set statename='"+ getStatename() +"' where stateid = " + getStateid();
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
String sql = "delete from state where stateid= " + getStateid();
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
String sql="Select * from state";
ResultSet rs=stmt.executeQuery(sql); 
while( rs.next() )
{
Vector cr = new Vector();
cr.addElement(rs.getString(1));
cr.addElement(rs.getString(2));
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
public static State  getRecord( int id )
{
State obj = new State();
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
String sql="Select * from state where  stateid =" + id ;
ResultSet rs=stmt.executeQuery(sql);
if(!rs.next())
return null;
obj = new State(rs.getInt(1),rs.getString(2));
c.putConnection(conn) ;
System.out.println(sql); 
}catch(Exception e){System.out.println(e); 
return null; }
return obj;
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
String sql = "select *  from state "; 
ResultSet rs=stmt.executeQuery(sql);
while(rs.next())
{
rows+= " <option value="+rs.getInt(1)+"> " +"  "+rs.getString(2)  +"\n";
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
