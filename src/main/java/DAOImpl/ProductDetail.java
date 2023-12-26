package DAOImpl;

import java.awt.Image;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;

public class ProductDetail {
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/webonline", "tungnq", "tung08012002");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public List<Product> getAllProducts() {
        Connection conn = null; // ket noi voi sql server
        PreparedStatement ps = null; // gui cau lenh query sang sql server
        ResultSet rs = null; // nhan ket qua tra ve
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM bai_tap_lon_ltw.tblproduct;";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product x = new Product(rs.getString("id"), rs.getDouble("vote"), rs.getString("name"), rs.getString("unit"), rs.getString("brand"), rs.getInt("sold"), rs.getDouble("discount"), rs.getDouble("price"), rs.getString("image"), rs.getString("tblcategoryid"));
                list.add(x);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllCategories() {
        Connection conn = null; // ket noi voi sql server
        PreparedStatement ps = null; // gui cau lenh query sang sql server
        ResultSet rs = null; // nhan ket qua tra ve
        List<Category> list = new ArrayList<>();
        String query = "SELECT * FROM bai_tap_lon_ltw.tblcategory;";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category x = new Category(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                list.add(x);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Category getCategoryByID(String categoryID) {
        Connection conn = null; // ket noi voi sql server
        PreparedStatement ps = null; // gui cau lenh query sang sql server
        ResultSet rs = null; // nhan ket qua tra ve
        Category tmp = new Category();
        String query = "SELECT * FROM bai_tap_lon_ltw.tblcategory WHERE id = ?;";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, categoryID);
            rs = ps.executeQuery();
            while (rs.next()) {
                tmp = new Category(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
        }
        return tmp;
    }
    
    public int getQuantityOfImages(){
        Connection conn = null; // ket noi voi sql server
        PreparedStatement ps = null; // gui cau lenh query sang sql server
        ResultSet rs = null; // nhan ket qua tra ve
        int result = 0;
        String query = "SELECT count(*) FROM bai_tap_lon_ltw.tblimage;";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                result = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return result;
    }

    public void addProduct(Product product) {
        System.out.println(product);
        Connection conn = null; // ket noi voi sql server
        PreparedStatement ps = null; // gui cau lenh query sang sql server
        ResultSet rs = null; // nhan ket qua tra ve
        String query = """
               INSERT INTO bai_tap_lon_ltw.`tblproduct` (id, vote, name, unit, brand, sold, discount, price, image, tblcategoryid) 
               VALUES 
               (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
               """;
        try {
            conn = getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, product.getId());
            ps.setDouble(2, product.getVote());
            ps.setString(3, product.getName());
            ps.setString(4, product.getUnit());
            ps.setString(5, product.getBrand());
            ps.setInt(6, product.getSold());
            ps.setDouble(7, product.getDiscount());
            ps.setDouble(8, product.getPrice());
            ps.setString(9, product.getImage());
            ps.setString(10, product.getTblcategoryid());
            ps.executeUpdate();
            System.out.println(query);
        } catch (Exception e) {
            System.out.println("looix");
        }
    }
    
    public void addListProductImg(Image image, String productId) {
        Connection conn = null; // ket noi voi sql server
        PreparedStatement ps = null; // gui cau lenh query sang sql server
        ResultSet rs = null; // nhan ket qua tra ve
        String query = """
               INSERT INTO `bai_tap_lon_ltw`.`tblimage` (`id`, `tblproductdetail`, `path`) VALUES (?, ?, ?);
               """;
        try {
            conn = getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, image.getId());
            ps.setString(2, productId);
            ps.setString(3, image.getPath());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("looix");
        }
    }
    
    public void addProductDetail(ProductDetail productDetail) {
        Connection conn = null; // ket noi voi sql server
        PreparedStatement ps = null; // gui cau lenh query sang sql server
        ResultSet rs = null; // nhan ket qua tra ve
        String query = """
               INSERT INTO bai_tap_lon_ltw.`tblproductdetail` (tblproductid, size, description, quantity, typeskin, origin, problem, ingredient, instruct,`characteris`)
               VALUES 
               (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
               """;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productDetail.getId());
            ps.setString(2, productDetail.getSize());
            ps.setString(3, productDetail.getDescription());
            ps.setInt(4, productDetail.getQuantity());
            ps.setString(5, productDetail.getTypeskin());
            ps.setString(6, productDetail.getOrigin());
            ps.setString(7, productDetail.getProblem());
            ps.setString(8, productDetail.getIngredient());
            ps.setString(9, productDetail.getInstruct());
            ps.setString(10, productDetail.getCharacteris());
            ps.executeUpdate();
            System.out.println(query);
        } catch (Exception e) {
            System.out.println("looix");
        }
    }
    public Product getProduct(String productIdString) {
        String sql = "select * from tblproduct where id =? ;";
        try{
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1,productIdString);
            ResultSet rs =st.executeQuery();
            while(rs.next()){
                Product product = new Product(productIdString, rs.getDouble(2), rs.getString(3), rs.getString(4),
                rs.getString(5),rs.getInt(6),rs.getDouble(7),rs.getDouble(8),rs.getString(9),rs.getString(10));
                return product;
            }
            System.out.println(rs);
        }catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
    public ProductDetail getProductDetail(String productIdString) {
        String sql = "select * from tblproductdetail where tblproductid=?; ;";
        try{
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1,productIdString);
            ResultSet rs =st.executeQuery();
            ArrayList<Image> imgsList = getListProductImages(productIdString);
            Product product = getProduct(productIdString);
            while(rs.next()){
                ProductDetail productDetail;
                productDetail = new ProductDetail(imgsList,rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5)
                        ,rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10)
                        ,product.getId(),product.getVote(),product.getName(),product.getUnit(),product.getBrand()
                        ,product.getSold(),product.getDiscount(),product.getPriceDouble(),product.getImage(),product.getCategory().getId());
                return productDetail;
            }
            System.out.println(rs);
        }catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
    public ArrayList<Image> getListProductImages(String productIdString){
        ArrayList<Image> imgsList = new ArrayList<>();
        String sql = "select * from tblimage where tblproductdetail=?";
        try{
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1,productIdString);
            ResultSet rs =st.executeQuery();
            while(rs.next()){
                Image img = new Image(rs.getString(3));
                imgsList.add(img);
            }
            System.out.println(rs);
            return imgsList;
        }catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
    public static void main(String[] args) {
        DAO dao = new DAO();
        Product p = dao.getProduct("TDM0005");
        System.out.println(p);
        ProductDetail pd = dao.getProductDetail("TDM0005");
        System.out.println(pd.getImagesDetail());
    }
}
