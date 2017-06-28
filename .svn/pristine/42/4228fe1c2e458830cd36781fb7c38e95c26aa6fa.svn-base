package com.unicompay.jf.action;

import com.unicompay.jf.model.ReportCondis;
import com.unicompay.jf.util.ReportParamTools;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/** 
 * @author lit8@chinaunicom.cn
 * @version 2017年01月19日 下午3:21:02 
 * mispos资金归集报表
 */
@Controller  
@Scope("prototype")  
public class MisposzjgjReportAction extends BaseActionSupport {

	private static Logger logger = Logger.getLogger(MisposzjgjReportAction.class);
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
   
    //签约
	public String sign(){
		return "sign";

	}
	//缴存
	public String deposite(){
		return "deposite";
	}
	//归集
	public String collect(){
		return "collect";
	}
	
	//欠款
	public String arrear(){
		return "arrear";
	}
	
	public ReportCondis getReportCondis() {
		return reportCondis;
	}

	public void setReportCondis(ReportCondis reportCondis) {
		this.reportCondis = reportCondis;
	}
}
