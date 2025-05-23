package features;
import com.intuit.karate.junit5.Karate;

public class Runner5 {
	
	    @Karate.Test
	    Karate testGet() {
	        return Karate.run("TestPut").relativeTo(getClass());
	    }
	}



