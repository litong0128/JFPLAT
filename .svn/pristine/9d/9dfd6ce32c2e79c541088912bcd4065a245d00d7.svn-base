package com.unicompay.jf.action;

import com.unicompay.jf.model.ReportCondis;
import com.unicompay.jf.util.ReportParamTools;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


/**
 * Filename:XxsbReportAction.java
 * Description: 行销设备
 * @author litong
 * @date 2017年3月13日 下午1:58:49
 */
@Controller  
@Scope("prototype")  
public class XxsbReportAction extends BaseActionSupport {

	private static Logger logger = Logger.getLogger(XxsbReportAction.class);
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
	public String sign(){
		return "sign";

	}	

	public String trade(){
		return "trade";

	}	

	public ReportCondis getReportCondis() {
		return reportCondis;
	}

	public void setReportCondis(ReportCondis reportCondis) {
		this.reportCondis = reportCondis;
	}
}
