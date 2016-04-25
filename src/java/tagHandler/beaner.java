package tagHandler;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import bean.FormBean;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author Cokers
 */
public class beaner extends SimpleTagSupport {
    private FormBean bean;
    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            JspFragment f = getJspBody();
            Map<String, String> variables = new HashMap<String, String>();
            variables.put("FName", bean.getFName());
            variables.put("LName", bean.getLName());
            variables.put("UserID", bean.getUserID());
            variables.put("Password", bean.getPasword());
            variables.put("RePassword", bean.getRePassword());
            variables.put("alias", bean.getAlias());
            variables.put("CountryOfRes", bean.getCountryOfRes());
            variables.put("City", bean.getCity());
            variables.put("Language", bean.getLanguage());
            variables.put("SecurityQues", bean.getSercurityQues());
            variables.put("SecurityAns", bean.getSecurityAns());
            variables.put("ContactEmail", bean.getContactEmail());
            variables.put("ContactOther", bean.getContactOther());
            for(Map.Entry<String, String> entry : variables.entrySet()){
                getJspContext().setAttribute("name", entry.getKey());
                getJspContext().setAttribute("value", entry.getValue());
            }
            if (f != null) {
                f.invoke(out);
            }
           
        } catch (java.io.IOException ex) {
            throw new JspException("Error in beaner tag", ex);
        }
    }
    public void setBean(FormBean b){
        this.bean = b;
    }
}
