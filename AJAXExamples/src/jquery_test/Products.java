package jquery_test;

import java.sql.*;
import java.util.*;

public class Products {

    static Connection conn;
    int productid;
    int categoryid;
    String productname;
    float productprice;
    int stockinhand;
    int dangerlevel;
    Vector ids;
    Vector categories;
//Constructors Definition

    public Products() {
        productid = 0;
        categoryid = 0;
        productname = new String();
        productprice = 0.0f;
        stockinhand = 0;
        dangerlevel = 0;
        try {
            ConnectionPool cp=ConnectionPool.getInstance();
           cp.initialize();
            conn = cp.getConnection();
            populate();

        } catch (Exception e) {
            System.out.println("Unable to connect to database.");
        }
    }

    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    public int getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(int categoryid) {
        this.categoryid = categoryid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public float getProductprice() {
        return productprice;
    }

    public void setProductprice(float productprice) {
        this.productprice = productprice;
    }

    public int getStockinhand() {
        return stockinhand;
    }

    public void setStockinhand(int stockinhand) {
        this.stockinhand = stockinhand;
    }

    public int getDangerlevel() {
        return dangerlevel;
    }

    public void setDangerlevel(int dangerlevel) {
        this.dangerlevel = dangerlevel;
    }

    public Vector getIds() {
        return ids;
    }

    public Vector getCategories() {
        return categories;
    }

//Method to Add Record
    public boolean add() {
        try {
            Statement stmt = conn.createStatement();
            int cid = ((Integer) ids.elementAt(categoryid)).intValue();
            String sql = "Insert into products (categoryid ,productname ,productprice ,stockinhand ,dangerlevel )  values(" + cid + ",'" + getProductname() + "'," + getProductprice() + "," + getStockinhand() + "," + getDangerlevel() + ")";
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
            int cid = ((Integer) ids.elementAt(categoryid)).intValue();
            String sql = "Update products set categoryid=" + cid + ",productname='" + getProductname() + "',productprice=" + getProductprice() + ",stockinhand=" + getStockinhand() + ",dangerlevel=" + getDangerlevel() + " where productid = " + getProductid();
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
            String sql = "delete from products where productid= " + getProductid();
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

    public void populate() {
        try {
            Statement stmt = conn.createStatement();
            String sql = "Select CategoryId, CategoryName from category";
            ResultSet rs = stmt.executeQuery(sql);
            ids = new Vector();
            categories = new Vector();
            while (rs.next()) {
                ids.addElement(rs.getInt(1));
                categories.addElement(rs.getString(2));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public Products getRecord(int num) {
        try {
            Statement stmt = conn.createStatement();
            String sql = "Select * from products";
            ResultSet rs = stmt.executeQuery(sql);
            rs.absolute(num);
            setProductid(rs.getInt(1));
            int cid = rs.getInt(2);
            int index = ids.indexOf(new Integer(cid));
            setCategoryid(index);
            setProductname(rs.getString(3));
            setProductprice(rs.getFloat(4));
            setStockinhand(rs.getInt(5));
            setDangerlevel(rs.getInt(6));
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
        return this;
    }
    public String getRecords() {
        String rows = new String();
        try {
            Statement stmt = conn.createStatement();
            String sql = "SELECT * from products";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                rows+=",\""+rs.getString(3)+"\"";
            }

        rows=rows.substring(1);

        } catch (Exception e) {
            System.out.println(e);
            System.out.println("Here One");
            return null;
        }
        return rows;
    }

    public Vector getRecords(int cat) {
        Vector rows = new Vector();
        try {
            Statement stmt = conn.createStatement();
            int cid = ((Integer) ids.elementAt(cat)).intValue();
            String sql = "SELECT  ProductName, ProductPrice, StockInHand, DangerLevel FROM products p, category c where p.categoryid=c.categoryid and c.categoryid=" + cid;
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                Vector temp = new Vector();
                temp.addElement(rs.getString(1));
                temp.addElement(new Float(rs.getFloat(2)));
                temp.addElement(new Integer(rs.getInt(3)));
                temp.addElement(new Integer(rs.getInt(4)));
                rows.addElement(temp);
            }

        } catch (Exception e) {
            System.out.println(e);
            System.out.println("Here One");
            return null;
        }
        return rows;
    }

    public Vector getRecordsOne(int cat) {
        Vector rows = new Vector();
        try {
            Statement stmt = conn.createStatement();
            String sql = "SELECT  ProductName, ProductPrice, StockInHand, DangerLevel FROM products p, category c where p.categoryid=c.categoryid and c.categoryid=" + cat;
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                Vector temp = new Vector();
                temp.addElement(rs.getString(1));
                temp.addElement(new Float(rs.getFloat(2)));
                temp.addElement(new Integer(rs.getInt(3)));
                temp.addElement(new Integer(rs.getInt(4)));
                rows.addElement(temp);
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("Here One");
            return null;
        }
        return rows;
    }
     public Vector getRecordsName(int cat) {
        Vector rows = new Vector();
        try {
            Statement stmt = conn.createStatement();
            String sql = "SELECT  * FROM products where categoryid=" + cat;
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                Vector temp = new Vector();
                temp.addElement(rs.getString(1));
                temp.addElement(rs.getString(3));
                temp.addElement(rs.getString(4));
                temp.addElement(rs.getString(5));
                rows.addElement(temp);
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("Here One");
            return null;
        }
        return rows;
    }

    public Vector getRecordsTwo() {
        Vector rows = new Vector();
        try {
            Statement stmt = conn.createStatement();
            String sql = "SELECT  * from Category";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                int cid = rs.getInt(1);
                String cname = rs.getString(2);
                Vector columns = new Vector();
                columns.add(cname);
                columns.add(new String());
                columns.add(new String());
                columns.add(new String());
                columns.add(new String());
                rows.add(columns);
                Statement stmt1 = conn.createStatement();
                String sql1 = "SELECT  ProductName, ProductPrice, StockInHand, DangerLevel FROM products p, category c where p.categoryid=c.categoryid and c.categoryid=" + cid;
                ResultSet rs1 = stmt1.executeQuery(sql1);
                while (rs1.next()) {
                    String pname = rs1.getString(1);
                    float price = rs1.getFloat(2);
                    int sih = rs1.getInt(3);
                    int dl = rs1.getInt(4);
                    Vector columns1 = new Vector();
                    columns1.add(new String());
                    columns1.add(pname);
                    columns1.add(new Float(price));
                    columns1.add(new Integer(sih));
                    columns1.add(new Integer(dl));
                    rows.add(columns1);
                }
                stmt1.close();
                rs1.close();
            }

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
        return rows;
    }

    public Vector getColumns() {
        Vector columns = new Vector();
        columns.add("Product Name");
        columns.add("Product Price");
        columns.add("Product Stock In Hand");
        columns.add("Product Danger Level");
        return columns;
    }

    public Vector getColumnsOne() {
        Vector columns = new Vector();
        columns.add("Category Name");
        columns.add("Product Name");
        columns.add("Product Price");
        columns.add("Product Stock In Hand");
        columns.add("Product Danger Level");
        return columns;
    }

    public int getTotal() {
        try {
            Statement stmt = conn.createStatement();
            String sql = "Select * from products";
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
}