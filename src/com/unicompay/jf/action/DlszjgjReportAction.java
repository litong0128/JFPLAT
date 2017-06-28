package com.unicompay.jf.action;

import com.unicompay.jf.model.ReportCondis;
import com.unicompay.jf.util.ReportParamTools;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


/**
 * Filename:DlszjgjReportAction.java
 * Description: 代理商资金归集
 * @author litong
 * @date 2016年5月9日 上午11:23:00
 */
@Controller  
@Scope("prototype")  
public class DlszjgjReportAction extends BaseActionSupport {

	private static Logger logger = Logger.getLogger(DlszjgjReportAction.class);
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
	public String signadd(){
		return "signadd";

	}
	public String signtotal(){
		return "signtotal";

	}

	public String tradeuser(){
		return "tradeuser";

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
