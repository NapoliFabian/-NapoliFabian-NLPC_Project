package it.meucci;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.Properties;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.io.BufferedReader;
public class GestoreFile {
	private String default_config;
	private String db_settings;
	public GestoreFile() {
		
		this.db_settings ="C:\\Users\\CATALDO SIMONE\\git\\-NapoliFabian-NLPC_Project01\\NLCP_gymapp2.0\\config\\dbsettings.properties";
		this.default_config ="C:\\Users\\CATALDO SIMONE\\git\\-NapoliFabian-NLPC_Project01\\NLCP_gymapp2.0\\config\\defaultconf.properties";
		
	}
	
	public String[] DBSettings() throws IOException {
		 System.out.println("Leggo dati del db.....");
		 Properties prop = readDB_Settings(db_settings);
	      String[] dati;
	      dati = new String[3];
	      dati[0] = prop.getProperty("IP_DB");
	      dati[1] = prop.getProperty("USER_DB");
	      dati[2] = prop.getProperty("PW_DB");
	      System.out.println("Lettura effettuata");
	      return dati;
	}
/*	public String[] DefaultConfig() {
		
		
	};*/

public static Properties readDB_Settings(String streamOfString) throws IOException {
    FileInputStream fis = null;
    Properties prop = null;
    try {
       fis = new FileInputStream(streamOfString);
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