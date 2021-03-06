package action;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import biz.MessageBiz;
import biz.SelectBiz;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Message;

public class MessageAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private String username;
	private String liuname;
	private String message;
	private String messagetime;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getLiuname() {
		return liuname;
	}
	public void setLiuname(String liuname) {
		this.liuname = liuname;
	}
	public String getMessagetime() {
		return messagetime;
	}
	public void setMessagetime(String messagetime) {
		this.messagetime = messagetime;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	//分清楚两个用户，即谁给谁留言
	public String execute() throws Exception{
		ActionContext actionContext =ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)actionContext.get(ServletActionContext.HTTP_REQUEST);
		
		String name = new String(request.getParameter("name").getBytes("ISO8859_1"),"UTF-8");
		String username = new String(request.getParameter("username").getBytes("ISO8859_1"),"UTF-8");
		
		this.setUsername(name);
		this.setLiuname(username);
		
		Map session = actionContext.getSession();
		session.put("messageuser", name);
		return SUCCESS;
	}
	
	//有请求生成message对象，最后调用逻辑将留言保存到数据库中
	public String saveMessage(){
		Date date = new Date();
		Timestamp timestamp = new Timestamp(date.getTime());
		
		Message message = new Message();
		message.setLiuname(this.getLiuname());
		message.setUsername(this.getUsername());
		message.setMessage(this.getMessage());
		message.setMessagetime(timestamp);
		new MessageBiz(message);
		return SUCCESS;
	}
	
	//根据请求调用逻辑获取所有用户的留言信息
	public String allMessage() throws Exception{
		ActionContext actionContext =ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)actionContext.get(ServletActionContext.HTTP_REQUEST);
		
		String name = new String(request.getParameter("name").getBytes("ISO8859_1"),"UTF-8");
		
		SelectBiz selectBiz = new SelectBiz();
		List list = selectBiz.getAllMessages(name);
		request.setAttribute("allmessage", list);
		return SUCCESS;
	}
}
