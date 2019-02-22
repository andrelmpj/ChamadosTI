package br.com.sys.connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class Conexao {
   
 public Statement statement;
 public ResultSet resultset; 
 public Connection con = null; 
 String caminho = "jdbc:mysql://localhost:3306/chamados";
 String user = "root"; 
 String password = "";
 
 
 public Connection conect(String banco) { 
     try {
         Class.forName("com.mysql.jdbc.Driver");
         try {
             con = DriverManager.getConnection(caminho, user, password);
         } catch (SQLException ex) {
             System.out.println("Caminho, senha ou user incorreto");
         }
     
      } catch (ClassNotFoundException ex) {
            System.out.println("Driver não encontrado");
      }
     return con;
        
}

public void ExecuteSql (String sql) { 
    try {
        statement = con.createStatement(resultset.TYPE_SCROLL_INSENSITIVE, resultset.CONCUR_READ_ONLY);
        resultset = statement.executeQuery(sql);
        
    } catch (Exception e) {
        e.printStackTrace();
        JOptionPane.showMessageDialog(null, "ERRO" + e);
    }
} 
}