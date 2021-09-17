package docker.run.test;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;


@Component
public class EnvironmentDetails {
	
	@Value("${APP_SVC}")
    private String app;
	
	@Value("${DATA_SVC}")
    private String data;

	public String getApp() {
		return app;
	}

	public void setApp(String app) {
		this.app = app;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	
	
	
}
