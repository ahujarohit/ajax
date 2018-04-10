package jquery_test;

/**
 * @author Rohit Ahuja
 * rohitahuja@email.com
 * 9893075987
 */



//Importing Packages
import java.sql.*;
import java.util.Vector;

public class Category {

    static Connection conn;
    int categoryid;
    String categoryname;
    String categorydetails;

//Constructors Definition
    public Category() {
        categoryid = 0;
        categoryname = new String();
        categorydetails = new String();
        try {
           ConnectionPool cp=ConnectionPool.getInstance();
           cp.initialize();
            conn = cp.getConnection();

        } catch (Exception e) {
            System.out.println("Unable to connect to database.");
        }
    }
//Get and Set Methods

    public int getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(int categoryid) {
        this.categoryid = categoryid;
    }

    public String getCategoryname() {
        return categoryname;
    }

    public void setCategoryname(String categoryname) {
        this.categoryname = categoryname;
    }

    public String getCategorydetails() {
        return categorydetails;
    }

    public void setCategorydetails(String categorydetails) {
        this.categorydetails = categorydetails;
    }

//Method to Add Record
    public boolean add() {
        try {
            Statement stmt = conn.createStatement();
            String sql = "Insert into category (categoryname ,categorydetails )values('" + getCategoryname() + "','" + getCategorydetails() + "')";
            int y = 0;
            y = stmt.executeUpdate(sql);
            if (y == 0) {
                return false;
            }
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return true;
    }

    public boolean update() {
        int y = 0;
        try {
            Statement stmt = conn.createStatement();
            String sql = "Update category set categoryname='" + getCategoryname() + "',categorydetails='" + getCategorydetails() + "' where categoryid = " +
                    getCategoryid();
            y = stmt.executeUpdate(sql);
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        if (y == 0) {
            return false;
        } else {
            return true;
        }
    }

    public boolean delete() {
        int x = 0;
        try {
            Statement stmt = conn.createStatement();
            String sql = "delete from category where categoryid= " + getCategoryid();
            x = stmt.executeUpdate(sql);
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        if (x == 0) {
            return false;
        } else {
            return true;
        }
    }

    public Category getRecord(int num) {
        try {
            Statement stmt = conn.createStatement();
            String sql = "Select * from category ";
            ResultSet rs = stmt.executeQuery(sql);
            rs.absolute(num);
            setCategoryid(rs.getInt(1));
            setCategoryname(rs.getString(2));
            setCategorydetails(rs.getString(3));
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
        return this;
    }

    public int getTotal() {
        try {
            Statement stmt = conn.createStatement();
            String sql = "Select * from category ";
            ResultSet rs = stmt.executeQuery(sql);
            boolean b = rs.last();
            if (b) {
                return rs.getRow();
            } else {
                return 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Unable to Fetch total number of rows.");
        }
        return 0;
    }


    public static void main(String[] args) {
        Category c = new Category();
        c = c.getRecord(2);
        System.out.println(c.getCategoryname());
    }
     public static String getOptions()
{
String rows =new String();
try{
 ConnectionPool cp=ConnectionPool.getInstance();
           cp.initialize();
            conn = cp.getConnection();
Statement stmt = conn.createStatement();
String sql = "select *  from category ";
ResultSet rs=stmt.executeQuery(sql);
while(rs.next())
{
rows+= " <option value="+rs.getInt(1)+"> " +"  "+rs.getString(2)   +"\n";
}
}
catch(Exception e)
{
System.out.println(e);
 }
return rows;
}
     public static Vector getRecords()
{
Vector rows =new Vector();
try{
      ConnectionPool cp=ConnectionPool.getInstance();
           cp.initialize();
            conn = cp.getConnection();
Statement stmt = conn.createStatement();
String sql = "select *  from category ";
ResultSet rs=stmt.executeQuery(sql);
while(rs.next())
{
    Vector cr=new Vector();
    cr.addElement(rs.getString(1));
    cr.addElement(rs.getString(2));
    cr.addElement(rs.getString(3));
    rows.addElement(cr);
}
}
catch(Exception e)
{
System.out.println(e);
 }
return rows;
}

}

