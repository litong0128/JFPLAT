package com.unicompay.jf.action;

import com.unicompay.jf.model.ReportCondis;
import com.unicompay.jf.util.ReportParamTools;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/** 
 * @author guoyk8@chinaunicom.cn
 * @version 2015年6月19日 下午3:21:02 
 * 
 */
@Controller  
@Scope("prototype")  
public class WoAccountReportAction extends BaseActionSupport {

	private static Logger logger = Logger.getLogger(WoAccountReportAction.class);
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
	public String add(){
		return "add";

	}
	public String login(){
		return "login";

	}
	public String total(){
		return "total";

	}
	public ReportCondis getReportCondis() {
		return reportCondis;
	}

	public void setReportCondis(ReportCondis reportCondis) {
		this.reportCondis = reportCondis;
	}
}
