package vn.funix.prj321x.project4.dal.enity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "post_table")
public class PostEntity {

	@Id
	@Column(name = "post_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "post_title")
	private String title;

	@Column(name = "post_summary")
	private String summary;

	@Column(name = "post_detail")
	private String detail;

	@Column(name = "post_create_date")
	private Date createdDate;

	@Column(name = "post_author")
	private String author;

	@Column(name = "post_is_publish")
	private boolean isPublish;

}
