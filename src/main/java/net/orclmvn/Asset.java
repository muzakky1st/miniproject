package net.orclmvn;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tbl_asset")
public class Asset {
	private Integer assetid;
	private String assetnumber;
	private String assetname;
	private String category;
	
	public Asset() {
		
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	

	public Integer getAssetid() {
		return assetid;
	}

	public void setAssetid(Integer assetid) {
		this.assetid = assetid;
	}

	public String getAssetnumber() {
		return assetnumber;
	}

	public void setAssetnumber(String assetnumber) {
		this.assetnumber = assetnumber;
	}

	public String getAssetname() {
		return assetname;
	}

	public void setAssetname(String assetname) {
		this.assetname = assetname;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
}
