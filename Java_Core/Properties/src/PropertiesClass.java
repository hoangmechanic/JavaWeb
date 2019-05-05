import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;

import java.io.OutputStreamWriter;
import java.util.Properties;
import java.util.Set;

public class PropertiesClass {

	public static void main(String[] args) {
		Properties dictionary = new Properties();
		dictionary.setProperty("house","ngôi nhà");
		try {
			dictionary.load(new InputStreamReader(new FileInputStream("C:/Workspace/00_Softwave/03_Eclipse_Oxygen/git/JavaWeb/Java_Core/Properties/dic.properties"),"UTF8"));
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dictionary.setProperty("love", "yêu");
		Set<String>keys = dictionary.stringPropertyNames();
		for (String key : keys) {
			String mean = dictionary.getProperty(key);
			System.out.printf(">> key: %s \t Mean: %s \r\n",key,mean);
		}
		try {
			dictionary.store(new OutputStreamWriter(new FileOutputStream(
					"C:/Workspace/00_Softwave/03_Eclipse_Oxygen/git/JavaWeb/Java_Core/Properties/dic.properties"),
					"UTF8"), null);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
