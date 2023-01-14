package banwol.com.web;

import javax.sql.DataSource;
import javax.inject.Inject;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

//import banwol.com.filesetting.Path;

@Configuration
public class RootContextConfig {
	@Inject
    private SqlSessionFactory sqlFactory;
	
	public void testSession() throws Exception {
		try(SqlSession session = sqlFactory.openSession()) { 
	        
	        System.out.println(" >>>>>>>>>> session 출력 : "+session+"\n");
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	/*
	@Bean(destroyMethod = "close")
	public DataSource dataSource() {
		
		//BasicDataSource dataSource = new BasicDataSource();
		//dataSource.setDriverClassName("org.mariadb.jdbc.Driver");
		//dataSource.setUrl("jdbc:mariadb://localhost:3306/creakok");
		
		//if(Path.STORE_PATH == Path.CAFE24_PATH) {
		//	dataSource.setUsername("creakok");
		//	dataSource.setPassword("creakokpass123");			
		//} else {
		//	dataSource.setUsername("root");
		//	dataSource.setPassword("java0420");
		//}
		
		
		HikariConfig hikariConfig = new HikariConfig();
		hikariConfig.setDriverClassName("org.mariadb.jdbc.Driver");
		hikariConfig.setJdbcUrl("jdbc:mariadb://localhost:3306/banwol");
		
		if(Path.STORE_PATH == Path.CAFE24_PATH) {
			hikariConfig.setUsername("banwol");
			hikariConfig.setPassword("banwol1234");			
		} else {
			hikariConfig.setUsername("banwol");
			hikariConfig.setPassword("banwol1234");
		}

		HikariDataSource dataSource = new HikariDataSource(hikariConfig);

		return dataSource;
	}
	*/
}
