import java.sql.*;

import com.mysql.cj.jdbc.Driver;

public class myDB {
    public static void main (String[] args) {
        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/codeup_test_db?serverTimezone=UTC&useSSL=false",
                    "root",
                    "codeup"
            );

            Statement stmt = connection.createStatement();

            ResultSet rs = stmt.executeQuery("SELECT * FROM albums");

//            while(rs.next()) {
//                System.out.println("Artist: " + rs.getString("artist"));
//                System.out.println("Album: " + rs.getString("name"));
//                System.out.println("Release Year: " + rs.getInt("release_date"));
//                System.out.println("");
//            }

            rs = stmt.executeQuery("SELECT * FROM albums WHERE artist = 'Celine Dion'");
            while(rs.next()) {
                System.out.println("Album: " + rs.getString("name"));
            }
            System.out.println("");

            stmt.executeUpdate("INSERT INTO albums(artist, name) VALUES ('Celine Dion', 'The Best Songs')");

            rs = stmt.executeQuery("SELECT * FROM albums WHERE artist = 'Celine Dion'");
            while(rs.next()) {
                System.out.println("Album: " + rs.getString("name"));
            }
            System.out.println("");

            stmt.execute("DELETE FROM albums WHERE name = 'The Best Songs'");

            rs = stmt.executeQuery("SELECT * FROM albums WHERE artist = 'Celine Dion'");
            while(rs.next()) {
                System.out.println("Album: " + rs.getString("name"));
            }
            System.out.println("");




        } catch (SQLException e) {

        }





    }

}
