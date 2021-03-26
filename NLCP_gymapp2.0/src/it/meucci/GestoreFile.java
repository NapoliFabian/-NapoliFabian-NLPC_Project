package it.meucci;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Properties;

public class GestoreFile {

	
	public String[] DBSettings() throws IOException {
		/*try (OutputStream output = new FileOutputStream("configapp.properties")) {
		Properties prop = new Properties();
		prop.setProperty("db.url", "jdbc:mysql://localhost:3306/gym?serverTimezone=UTC");
	    prop.setProperty("db.user", "root");
	    prop.setProperty("db.password", "");
		prop.store(output,null);
		
		}catch (Exception e) {
			System.out.println(e.getMessage()+e.getStackTrace()+e.getCause()+e.getLocalizedMessage());
		}*/
		 Properties prop = readPropertiesFile("C:\\Users\\thema\\git\\-NapoliFabian-NLPC_Project\\NLCP_gymapp2.0\\configapp.properties");
		 System.out.println("Leggo dati del db.....");
	     /* System.out.println("username: "+ prop.getProperty("IP_DB"));
	      System.out.println("user: "+ prop.getProperty("USER_DB"));
	      System.out.println("password: "+ prop.getProperty("PW_DB"));*/
	     // String[] dati = (prop.getProperty("IP_DB"),prop.getProperty("USER_DB"),prop.getProperty("PW_DB"));
	      String[] dati;
	      dati = new String[3];
	      dati[0] = prop.getProperty("IP_DB");
	      dati[1] = prop.getProperty("USER_DB");
	      dati[2] = prop.getProperty("PW_DB");
	      System.out.println("Lettura effettuata");
	      return dati;
	}

public static Properties readPropertiesFile(String fileName) throws IOException {
    FileInputStream fis = null;
    Properties prop = null;
    try {
       fis = new FileInputStream(fileName);
       prop = new Properties();
       prop.load(fis);
    } catch(FileNotFoundException fnfe) {
       fnfe.printStackTrace();
    } catch(IOException ioe) {
       ioe.printStackTrace();
    } finally {
       fis.close();
    }
    return prop;
 }
}