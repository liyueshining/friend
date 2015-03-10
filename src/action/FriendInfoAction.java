package action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import biz.SelectBiz;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FriendInfoAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	//处理获取好友详细信息的请求
	public String execute() throws Exception{
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)actionContext.get(ServletActionContext.HTTP_REQUEST);
		
		String name = new String(request.getParameter("name").getBytes("ISO8859_1"),"UTF-8");
		
		SelectBiz selectBiz = new SelectBiz();
		List list = selectBiz.getFriendInfo(name);
		request.setAttribute("friendinfolist", list);
		return SUCCESS;
	}
	
	//处理获取所有好友列表的请求
	public String allFriend() throws Exception{
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)actionContext.get(ServletActionContext.HTTP_REQUEST);
		
		String name = new String(request.getParameter("name").getBytes("ISO8859_1"),"UTF-8");
		
		SelectBiz selectBiz = new SelectBiz();
		List list = selectBiz.getFriend(name);
		request.setAttribute("allfriendlist", list);
		return SUCCESS;
	}
}
