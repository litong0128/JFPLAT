package com.unicompay.jf.action;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unicompay.jf.model.ReportCondis;
import com.unicompay.jf.util.ReportParamTools;

/** 
 * @author guoyk8@chinaunicom.cn
 * @version 2015年6月19日 下午3:21:02 
 * 
 */
@Controller  
@Scope("prototype")  
public class LLHyyqyReportAction extends BaseActionSupport {

	private static Logger logger = Logger.getLogger(LLHyyqyReportAction.class);  
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
