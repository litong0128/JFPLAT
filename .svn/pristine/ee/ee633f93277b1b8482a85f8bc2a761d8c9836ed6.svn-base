package com.unicompay.jf.action;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.*;
import com.unicompay.jf.model.ReportCondis;
import com.unicompay.jf.util.ReportParamTools;

/**
 * 2014骞�12鏈�31鏃ヤ笂鍗�11:10:15
 * $
 * JFPLAT
 * Login.java
 * @author litong
 */
@Controller  
@Scope("prototype")  
public class LLHJYReportAction extends BaseActionSupport {  
    /**
	 * 
	 */
	private static Logger logger = Logger.getLogger(LLHJYReportAction.class);  
	private static final long serialVersionUID = 1L;
	@Autowired
	private ReportParamTools rpt;
	private ReportCondis reportCondis;
	
    public String execute() throws Exception {
    	
    	String param = rpt.getParam(reportCondis);
    	

    	logger.info("reportcondition="+param);
    	
    	request.setAttribute("param", param);
    	request.setAttribute("report", reportCondis.getReportName());
    	
        return SUCCESS;  
    }
    
    public String search(){
		return "default";
    	
    }

	public ReportCondis getReportCondis() {
		return reportCondis;
	}

	public void setReportCondis(ReportCondis reportCondis) {
		this.reportCondis = reportCondis;
	}


  
  
}  
