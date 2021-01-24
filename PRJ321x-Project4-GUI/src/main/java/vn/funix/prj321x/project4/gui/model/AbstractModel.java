package vn.funix.prj321x.project4.gui.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AbstractModel<T> {
	protected T    bean;
	private String url;
	private String messageResponse;

}
