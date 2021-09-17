package docker.run.test;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmployeeController 
{
   @RequestMapping(value="/emp", method=RequestMethod.POST, produces = {"application/JSON"}, consumes = {"application/JSON"})
    public List<Employee> getEmployees() 
    {
      List<Employee> employeesList = new ArrayList<Employee>();
      employeesList.add(new Employee(1,"lokesh","gupta","howtodoinjava@gmail.com"));
      return employeesList;
    }
   
   @RequestMapping("/hello")
   public String getHello() throws UnknownHostException 
   {
     return "Hellow World :D "+InetAddress.getLocalHost().getHostAddress();
   }
   
  
}