package com.iyunhe.pojo;

import java.util.List;

public class TbType {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_type.type_id
     *
     * @mbg.generated Thu Aug 16 22:00:51 CST 2018
     */
    private Integer typeId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_type.type_name
     *
     * @mbg.generated Thu Aug 16 22:00:51 CST 2018
     */
    private String typeName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_type.parent_id
     *
     * @mbg.generated Thu Aug 16 22:00:51 CST 2018
     */
    private Integer parentId;
    
    private List<TbType> chilrenTbtypeList;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_type.type_id
     *
     * @return the value of tb_type.type_id
     *
     * @mbg.generated Thu Aug 16 22:00:51 CST 2018
     */
    public Integer getTypeId() {
        return typeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_type.type_id
     *
     * @param typeId the value for tb_type.type_id
     *
     * @mbg.generated Thu Aug 16 22:00:51 CST 2018
     */
    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_type.type_name
     *
     * @return the value of tb_type.type_name
     *
     * @mbg.generated Thu Aug 16 22:00:51 CST 2018
     */
    public String getTypeName() {
        return typeName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_type.type_name
     *
     * @param typeName the value for tb_type.type_name
     *
     * @mbg.generated Thu Aug 16 22:00:51 CST 2018
     */
    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_type.parent_id
     *
     * @return the value of tb_type.parent_id
     *
     * @mbg.generated Thu Aug 16 22:00:51 CST 2018
     */
    public Integer getParentId() {
        return parentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_type.parent_id
     *
     * @param parentId the value for tb_type.parent_id
     *
     * @mbg.generated Thu Aug 16 22:00:51 CST 2018
     */
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    
    
    
	public List<TbType> getChilrenTbtypeList() {
		return chilrenTbtypeList;
	}

	public void setChilrenTbtypeList(List<TbType> chilrenTbtypeList) {
		this.chilrenTbtypeList = chilrenTbtypeList;
	}

	@Override
	public String toString() {
		return "TbType [typeId=" + typeId + ", typeName=" + typeName
				+ ", parentId=" + parentId + ", chilrenTbtypeList="
				+ chilrenTbtypeList + "]";
	}

	
    
    
    
}