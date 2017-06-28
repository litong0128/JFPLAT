package com.unicompay.jf.action;

import com.unicompay.jf.model.ReportCondis;
import com.unicompay.jf.util.ReportParamTools;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


/**
 * Filename:DfywReportAction.java
 * Description: 代发业务
 * @author litong
 * @date 2017年4月14日 下午4:44:09
 */
@Controller  
@Scope("prototype")  
public class DfywReportAction extends BaseActionSupport {

	private static Logger logger = Logger.getLogger(DfywReportAction.class);
	private static final long serialVersionUID = 1L;
	@Autowired
	private ReportParamTools rpt;
	private ReportCondis reportCondis;
	
    public String execute() throws Exception {
    	
    	String param = rpt.getParam(reportCondis);
    	
    	logger.info("reportcondition="+param);
    	
    	request.setAttribute("param", param);
    	request.setAttribute("report", reportCondis.getReportName());
    	request.setAttribute("reportFileName", reportCondis.getReportFileName());
        return SUCCESS;  
    }
    
    public String search(){
		return "default";

	}
	public String prov(){
		return "prov";

	}	
	public String fail(){
		return "fail";

	}	
	public String mer(){
		return "mer";

	}	
	public String totalmer(){
		return "totalmer";

	}	

	public ReportCondis getReportCondis() {
		return reportCondis;
	}

	public void setReportCondis(ReportCondis reportCondis) {
		this.reportCondis = reportCondis;
	}
}
