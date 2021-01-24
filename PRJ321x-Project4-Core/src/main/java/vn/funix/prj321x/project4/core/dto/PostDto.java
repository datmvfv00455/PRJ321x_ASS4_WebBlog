package vn.funix.prj321x.project4.core.dto;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Objects;

import lombok.Data;

@Data
public class PostDto implements Serializable {

	private Integer id;
	private String  title;
	private String  summary;
	private String  detail;
	private Date    createdDate;
	private String  author;
	private boolean isPublish;

	public String getSimpleDateFormat() {
		return new SimpleDateFormat("dd/MM/yy").format(createdDate);
	}

	public void setPublish(String isPublish) {
		if (Objects.isNull(isPublish) || isPublish.equalsIgnoreCase("false")) {
			this.isPublish = false;
		} else {
			this.isPublish = true;
		}
	}

	public String getStatus() {
		return this.isPublish ? "Publish" : "Draf";
	}

}
