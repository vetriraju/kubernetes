package docker.run.test;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmployeeController 
{
   @RequestMapping("/emp")
    public List<Employee> getEmployees() 
    {
      List<Employee> employeesList = new ArrayList<Employee>();
      employeesList.add(new Employee(1,"lokesh","gupta","howtodoinjava@gmail.com"));
      return employeesList;
    }
   
   @RequestMapping("/")
   public String getHello() throws UnknownHostException 
   {
     return "Hellow World :D "+InetAddress.getLocalHost().getHostAddress();
   }
   
   public static void main(String args[]) throws UnknownHostException  {
	   System.out.println(InetAddress.getLocalHost());
	   
	   try {
		      File myObj = new File("filename.txt");
		      if (myObj.createNewFile()) {
		        System.out.println("File created: " + myObj.getName());
		      } else {
		        System.out.println("File already exists.");
		      }
		      FileWriter myWriter = new FileWriter("filename.txt");
		      myWriter.append("ip addrss >"+InetAddress.getLocalHost());
		      myWriter.close();
		      System.out.println("Successfully wrote to the file.");
		    } catch (IOException e) {
		      System.out.println("An error occurred.");
		      e.printStackTrace();
		    }
   }
}