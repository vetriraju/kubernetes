package docker.run.test;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class CounterLayer {
	
	private static final Logger logger = LoggerFactory.getLogger(CounterLayer.class);

	public int counter = 0;
	
	@Autowired
	EnvironmentDetails env;

		   @RequestMapping(value="/getcounter", method=RequestMethod.POST, produces = {"application/JSON"}, consumes = {"application/JSON"})
		    public List<Employee> getEmployees() 
		    {
		      List<Employee> employeesList = new ArrayList<Employee>();
		      employeesList.add(new Employee(1,"lokesh","gupta","howtodoinjava@gmail.com"));
		      return employeesList;
		    }
		   
		   @RequestMapping("/")
		   public String getStartcounter()  
		   {
			   String success = null;
			   try {
			   for (int i=0 ; i<counter+5; i++) {
				   logger.info("the value push from counter >"+i);
				   RestTemplate restTemplate = new RestTemplate();
				   String fooResourceUrl
				     = env.getApp()+"/svc/push?counter="+i;
				   ResponseEntity<String> response
				     = restTemplate.getForEntity(fooResourceUrl, String.class);
				   success = response.getBody();
				   logger.info("the value retrieved from counter >"+success);
			   }
			   } catch(Exception e) {
				   logger.info("the Exception getStartcounter >"+e.getMessage());
				   return "Failed";
			   }
		     return success;
		   }
		   
		   @RequestMapping("/svc/push")
		   public String getSvcPush(@RequestParam String counter)  
		   {
			   String success = null;
			   try {
				   logger.info("the value push from service >"+counter);
				   RestTemplate restTemplate = new RestTemplate();
				   String fooResourceUrl
				     = env.getData()+"/data/push?counter="+counter;
				   ResponseEntity<String> response
				     = restTemplate.getForEntity(fooResourceUrl, String.class);
				   success = response.getBody();
				   logger.info("the value retrieved from service >"+success);
			   } catch(Exception e) {
				   logger.info("the Exception getSvcPush >"+e.getMessage());
				   return "Failed";
			   }
		     return success;
		   }
		   
		   @RequestMapping("/data/push")
		   public String getDataPush(@RequestParam String counter)  
		   {
			   try {
				   logger.info("the value push from data >"+counter);
				   logger.info("the value retrieved from service >"+counter);
				   return counter;
			   } catch(Exception e) {
				   logger.info("the Exception getDataPush >"+e.getMessage());
				   return "Failed";
			   }
		   }
		   
		   
		   @RequestMapping("/nfile/push")
		   public String getFilePush(@RequestParam String counter)  
		   {
			   try {
				   logger.info("the value push from data >"+counter);
				   logger.info("the value retrieved from service >"+counter);
				   String currentPath = new java.io.File(".").getCanonicalPath();
				   logger.info("Current dir:" + currentPath);
				   File fl = new File(currentPath+"/data/logs.txt");			   
				   if (Files.notExists(Paths.get(currentPath+"/data/logs.txt")) ) {
					   if(Files.notExists(Paths.get(currentPath+"/data"))) new File(currentPath+"/data").mkdirs();
					   fl.createNewFile();
					   logger.info("File created: " + fl.getName());
				      } else {
				    	  logger.info("File already exists.");
				      }
				   String str = "current time > "+ (new Date()).toString()+"\n";
				   Files.write(Paths.get(currentPath+"/data/logs.txt"), str.getBytes(), StandardOpenOption.APPEND);
				   FileReader fr = new FileReader(fl);
				   int ch;
				   String txt ="";
				   while ((ch=fr.read())!=-1)
					   txt += ""+((char)ch);
				   logger.info("read text =====>"+txt);
				   fr.close();
				   return counter;
			   } catch(Exception e) {
				   logger.info("the Exception getDataPush >"+e.getMessage());
				   logger.error("exception > ",e);
				   return "Failed";
			   }
		   }
		   
		   @RequestMapping("/efile/push")
		   public String geteFilePush(@RequestParam String counter)  
		   {
			   try {
				   logger.info("the value push from data >"+counter);
				   logger.info("the value retrieved from service >"+counter);
				   String currentPath = new java.io.File(".").getCanonicalPath();
				   logger.info("Current dir:" + currentPath);
				   File fl = new File(currentPath+"/tmp/logs.txt");			   
				   if (Files.notExists(Paths.get(currentPath+"/tmp/logs.txt")) ) {
					   if(Files.notExists(Paths.get(currentPath+"/tmp"))) new File(currentPath+"/tmp").mkdirs();
					   fl.createNewFile();
					   logger.info("File created: " + fl.getName());
				      } else {
				    	  logger.info("File already exists.");
				      }
				   String str = "current time > "+ (new Date()).toString()+"\n";
				   Files.write(Paths.get(currentPath+"/tmp/logs.txt"), str.getBytes(), StandardOpenOption.APPEND);
				   FileReader fr = new FileReader(fl);
				   int ch;
				   String txt ="";
				   while ((ch=fr.read())!=-1)
					   txt += ""+((char)ch);
				   logger.info("read text =====>"+txt);
				   fr.close();
				   return counter;
			   } catch(Exception e) {
				   logger.info("the Exception getDataPush >"+e.getMessage());
				   logger.error("exception > ",e);
				   return "Failed";
			   }
		   }
		   
		   public static void main(String args[]) {
			   CounterLayer layer = new CounterLayer();
			   logger.info("main method >");
			   layer.getFilePush("main method");
		   }
		  
}
