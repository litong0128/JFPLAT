package com.unicompay.jf.util;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.runqian.report4.usermodel.Context;
import com.runqian.report4.usermodel.DataSourceConfig;
/**
 * 2015年3月10日上午10:37:00
 * $
 * JFPLAT
 * CalReportUtils.java
 * @author litong
 */
public class CalReportUtils {
	public static Context getContext() {
		// 读取spring配置文件，生成Spring上下文环境
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				new String[] { "/resource/spring/applicationContext.xml" });
		// 通过getBean方式获取到Spring配置文件内的数据源，其中"mysqlDataSource"为//Spring内数据库连接池的Bean名称。
		DataSource ds = (DataSource) ctx.getBean("dataSource");
		Connection connection = null;
		try {
			// 通过DataSource获取到数据库连接对象connection
			connection = ds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 设置报表运算使用的授权文件，这里是固定格式。

		// String license = "/WEB-INF/runqianWindowServer.lic";
		// ExtCellSet.setLicenseFileName(license);
		// 创建报表运行时的上下文环境，这里引入类时要注意，应该是润乾包内的Context
		Context ct = new Context();
		// 设置报表设计时使用的数据源名称
		ct.setDefDataSourceName("vertica");
		// 设置报表运行的数据库连接
		ct.setConnection("vertica", connection);
		// 数据源配置
		DataSourceConfig dsoc = new DataSourceConfig(10, true, "UTF-8",
				"UTF-8", false);
		ct.setDataSourceConfig("vertica", dsoc);
		// 返回报表运行的上下文环境对象ct
		return ct;
	}
}