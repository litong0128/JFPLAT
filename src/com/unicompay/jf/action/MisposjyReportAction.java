package com.unicompay.jf.action;

import com.unicompay.jf.model.ReportCondis;
import com.unicompay.jf.util.ReportParamTools;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/** 
 * @author lit8@chinaunicom.cn
 * @version 2015年6月19日 下午3:21:02 
 * mispos交易报表
 */
@Controller  
@Scope("prototype")  
public class MisposjyReportAction extends BaseActionSupport {

	private static Logger logger = Logger.getLogger(MisposjyReportAction.class);
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
   
	public String trade(){
		return "trade";

	}
	
	public String active(){
		return "active";

	}

	public ReportCondis getReportCondis() {
		return reportCondis;
	}

	public void setReportCondis(ReportCondis reportCondis) {
		this.reportCondis = reportCondis;
	}
}
