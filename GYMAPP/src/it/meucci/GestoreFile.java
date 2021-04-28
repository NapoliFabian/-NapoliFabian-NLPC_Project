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


  
		
		//CATALDO
		this.db_settings ="C:\\Users\\CATALDO SIMONE\\git\\-NapoliFabian-NLPC_Project00\\GYMAPP\\config\\dbsettings.properties";
		this.default_config ="C:\\Users\\CATALDO SIMONE\\git\\-NapoliFabian-NLPC_Project00\\GYMAPP\\config\\defaultconf.properties";

		
		
		///NAPOLI
		//this.db_settings = "C:\\Users\\thema\\git\\-NapoliFabian-NLPC_Project\\GYMAPP\\config\\dbsettings.properties";
		// this.default_config = "C:\\Users\\thema\\git\\-NapoliFabian-NLPC_Project\\GYMAPP\\config\\defaultconf.properties";

	

		//SAMUEL
		//this.db_settings ="C:\\Users\\Samuel\\Desktop\\eclipse\\-NapoliFabian-NLPC_Project\\GYMAPP\\config\\dbsettings.properties";
		//this.default_config ="C:\\Users\\Samuel\\Desktop\\eclipse\\-NapoliFabian-NLPC_Project\\GYMAPP\\config\\defaultconf.properties";
	

	
		//LONGO
<<<<<<< HEAD
		this.db_settings ="C:\\Users\\user\\git\\-NapoliFabian-NLPC_Project\\NapoliFabian-NLPC_Project\\GYMAPP\\config\\dbsettings.properties";
		this.default_config ="C:\\Users\\user\\git\\-NapoliFabian-NLPC_Project\\NapoliFabian-NLPC_Project\\GYMAPP\\config\\defaultconf.properties";;
=======
		//this.db_settings ="C:\\Users\\user\\git\\-NapoliFabian-NLPC_Project\\GYMAPP\\config\\dbsettings.properties";
		//this.default_config ="C:\\Users\\user\\git\\-NapoliFabian-NLPC_Project\\GYMAPP\\config\\defaultconf.properties";;
>>>>>>> branch 'master30' of https://github.com/NapoliFabian/-NapoliFabian-NLPC_Project.git



	}
	public String[] getConfig() throws IOException {
		System.out.println("Leggo dati conf");
		Properties prop = readConfig(default_config);
		int max = 3;
		String[] config;
		config = new String[max];
		config[0] = prop.getProperty("color_theme");
		config[1] = prop.getProperty("language");
		config[2] = prop.getProperty("app_name");
		if(config[0]==null)config[0]="gold";
		if(config[1]==null)config[1] ="ing";
		if(config[2]==null)config[2] ="GYM";
		return config;
		
	}
	public String[] setConfig(String colore,String titolo,String lang)throws IOException {
		OutputStream output = new FileOutputStream(default_config);
		String[] vet;
		vet = new String[3];
		vet[0] = colore;
		vet[1] = titolo;
		vet[2] = lang;
        try {
    		Properties prop = new Properties();
   		 prop.setProperty("app_name", titolo);
   		prop.setProperty("color_theme",colore);
           prop.setProperty("language", lang);
           prop.store(output, null);
		} catch (Exception e) {
			System.out.println("Error on set Properties: GestoreFile->setConfig"+e.getMessage());
		};
        System.out.println("Cambiamenti effettuati");
        return vet;
	}
	//
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
	public String[] readLan(String language) throws IOException {
		System.out.println("Leggo dati lingua");	
		int max = 32;
		if(language==null)
			language = "ing";
		

	

				//LONGO
				Properties prop = readLanguage("C:\\Users\\user\\git\\-NapoliFabian-NLPC_Project\\NapoliFabian-NLPC_Project\\GYMAPP\\config\\Language\\"+language+".properties");
				
				
				//FABIAN
				//Properties prop = readLanguage("C:\\Users\\thema\\git\\-NapoliFabian-NLPC_Project\\GYMAPP\\config\\Language\\"+language+".properties");

				
				//SIMONE
				Properties prop = readLanguage("C:\\Users\\CATALDO SIMONE\\git\\-NapoliFabian-NLPC_Project00\\GYMAPP\\config\\Language\\"+language+".properties");// simone


				//SAMUEL
				//Properties prop = readLanguage("C:\\Users\\Samuel\\Desktop\\eclipse\\-NapoliFabian-NLPC_Project\\GYMAPP\\config\\Language"+"\\ing"+".properties"); //Samuel


			

		
	
	
		String[] config;
		config = new String[max];
		config[0] = prop.getProperty("WELCOME_MESSAGE");
		config[1] = prop.getProperty("SOCI_NAME");
		config[2] = prop.getProperty("ISTRUTTORI_NAME");
		config[3] = prop.getProperty("ABBONAMENTI_NAME");
		config[4] = prop.getProperty("ALLENAMENTI_NAME");
		config[5] = prop.getProperty("CORSI_NAME");
		config[6] = prop.getProperty("SCHEDE_NAME");
		config[7] = prop.getProperty("CORSI_NAME");
		config[8] = prop.getProperty("SCHEDE_NAME");
		config[9] = prop.getProperty("SOCI_TOTALI");
		config[10] = prop.getProperty("COGNOME");
		config[11] = prop.getProperty("NOME");
		config[12] = prop.getProperty("TELEFONO");
		config[13] = prop.getProperty("DATAN");
		config[14] = prop.getProperty("SESSO");
		config[15] = prop.getProperty("TELEFONO");
		config[16] = prop.getProperty("ANNULLA");
		config[17] = prop.getProperty("INSERISCI SOCIO");
		config[18] = prop.getProperty("ISTRUTTORI_TOTALI");
		config[19] = prop.getProperty("INSERISCI ISTRUTTORE");
		config[20] = prop.getProperty("ABBONAMENTI_TOTALI");
		config[21] = prop.getProperty("CODFISCALE");
		config[22] = prop.getProperty("INIZIO");
		config[23] = prop.getProperty("FINE");
		config[24] = prop.getProperty("NOME_CORSO");
		config[25] = prop.getProperty("INSERISCI ABBONAMENTO");
		config[26] = prop.getProperty("ALLENAMENTI_TOTALI");
		config[27] = prop.getProperty("DATA");
		config[28] = prop.getProperty("DURATA_ALLENAMENTO");
		config[29] = prop.getProperty("PREZZO");
		config[30] = prop.getProperty("DESCRIZIONE");
		config[31] = prop.getProperty("INSERISCI CORSO");
		return config;
		
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

public static Properties readConfig(String pathfile) throws IOException
{
    FileInputStream fis = null;
    Properties prop = null;
    try {
       fis = new FileInputStream(pathfile);
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
public static Properties readLanguage(String pathfile) throws IOException
{
    FileInputStream fis = null;
    Properties prop = null;
    try {
       fis = new FileInputStream(pathfile);
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