package vn.funix.prj321x.project4.gui.common;

import java.util.Locale;
import java.util.ResourceBundle;

public class WebConstant {
	public static final String USER        = "user";
	public static final String URL_REFERER = "url_referer";

	public static final String POST_LIST = "post_list";

	/* ==================== Begin ResourceBundle ==================== */
	public static final ResourceBundle MESSAGES_BUNDLE = ResourceBundle
			.getBundle("messages", new Locale("en", "EN"));
	/* ==================== End ResourceBundle ==================== */

	/* ==================== Begin URL Patterns ==================== */
	public static final String URL_LOGIN  = "/login";
	public static final String URL_LOGOUT = "/logout";

	public static final String URL_POST_ALL    = "";
	public static final String URL_POST_EDIT   = "/post-edit";
	public static final String URL_POST_DETAIL = "/post-detail";
	public static final String URL_POST_NEW    = "/post-new";

	/* ==================== End URL Patterns ==================== */

	/* ==================== Begin Filter ==================== */
	public static final String FILTER_LOGIN_HTML = "*.html";
	public static final String FILTER_LOGIN_JSP  = "*.jsp";
	/* ==================== End Filter ==================== */

	/* ==================== Begin JSP ==================== */
	public static final String MESSAGE_RESPONSE = "messageResponse";

	public static final String ERROR = "error";

	public static final String ALERT   = "alert";
	public static final String DANGER  = "danger";
	public static final String SUCCESS = "success";

	public static final String VERIFY_USERNAME = "verifyUsername";
	public static final String VERIFY_PASSWORD = "verifyPassword";

	/* ==================== End JSP ==================== */

}
