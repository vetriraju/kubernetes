package docker.run.test;

import java.util.ArrayList;
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
			   for (int i=counter ; i<counter+5; counter++) {
				   logger.info("the value push from counter >"+counter);
				   RestTemplate restTemplate = new RestTemplate();
				   String fooResourceUrl
				     = env.getApp()+"/svc/push?counter="+counter;
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
		   
		  
}
