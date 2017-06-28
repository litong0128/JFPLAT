package com.unicompay.jf.action;

import com.unicompay.jf.model.ReportCondis;
import com.unicompay.jf.util.ReportParamTools;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/** 
 * @author litong
 * @version 2016年4月12日 下午3:21:02 
 * 冲提转账
 */
@Controller  
@Scope("prototype")  
public class CtzzReportAction extends BaseActionSupport {

	private static Logger logger = Logger.getLogger(CtzzReportAction.class);
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
	public String cash(){
		return "cash";

	}
	public String transfer(){
		return "transfer";

	}

	public ReportCondis getReportCondis() {
		return reportCondis;
	}

	public void setReportCondis(ReportCondis reportCondis) {
		this.reportCondis = reportCondis;
	}
}
