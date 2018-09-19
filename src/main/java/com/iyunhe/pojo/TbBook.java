package com.iyunhe.pojo;

import java.util.Date;

public class TbBook {

    private Integer bookId;

    private String bookName;

    private String bookLogoSmall;

    private String bookLogoBig;

    private Double bookPrice;

    private Double bookPriceOld;

    private String bookAuthor;

    private String bookPress;

    private Integer typeId;
    
    private TbType tbType;

    private Date bookDate;

    private Integer storeCount;

    private Integer status;

    private Integer isNew;

    private Integer isHot;

    private Integer isGarbage;

    private String bookDescription;

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookLogoSmall() {
        return bookLogoSmall;
    }

    public void setBookLogoSmall(String bookLogoSmall) {
        this.bookLogoSmall = bookLogoSmall;
    }

    public String getBookLogoBig() {
        return bookLogoBig;
    }

    public void setBookLogoBig(String bookLogoBig) {
        this.bookLogoBig = bookLogoBig;
    }

    public Double getBookPrice() {
        return bookPrice;
    }

    public void setBookPrice(Double bookPrice) {
        this.bookPrice = bookPrice;
    }

    public Double getBookPriceOld() {
        return bookPriceOld;
    }

    public void setBookPriceOld(Double bookPriceOld) {
        this.bookPriceOld = bookPriceOld;
    }

    public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public TbType getTbType() {
		return tbType;
	}

	public void setTbType(TbType tbType) {
		this.tbType = tbType;
	}

	public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public String getBookPress() {
        return bookPress;
    }

    public void setBookPress(String bookPress) {
        this.bookPress = bookPress;
    }

    public TbType getTbtype() {
		return tbType;
	}

	public void setTbtype(TbType tbType) {
		this.tbType = tbType;
	}

    public Date getBookDate() {
        return bookDate;
    }

    public void setBookDate(Date bookDate) {
        this.bookDate = bookDate;
    }

    public Integer getStoreCount() {
        return storeCount;
    }

    public void setStoreCount(Integer storeCount) {
        this.storeCount = storeCount;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getIsNew() {
        return isNew;
    }

    public void setIsNew(Integer isNew) {
        this.isNew = isNew;
    }

    public Integer getIsHot() {
        return isHot;
    }

    public void setIsHot(Integer isHot) {
        this.isHot = isHot;
    }

    public Integer getIsGarbage() {
        return isGarbage;
    }

    public void setIsGarbage(Integer isGarbage) {
        this.isGarbage = isGarbage;
    }

    public String getBookDescription() {
        return bookDescription;
    }

    public void setBookDescription(String bookDescription) {
        this.bookDescription = bookDescription;
    }

	@Override
	public String toString() {
		return "TbBook [bookId=" + bookId + ", bookName=" + bookName
				+ ", bookLogoSmall=" + bookLogoSmall + ", bookLogoBig="
				+ bookLogoBig + ", bookPrice=" + bookPrice + ", bookPriceOld="
				+ bookPriceOld + ", bookAuthor=" + bookAuthor + ", bookPress="
				+ bookPress + ", typeId=" + typeId + ", tbType=" + tbType
				+ ", bookDate=" + bookDate + ", storeCount=" + storeCount
				+ ", status=" + status + ", isNew=" + isNew + ", isHot="
				+ isHot + ", isGarbage=" + isGarbage + ", bookDescription="
				+ bookDescription + "]";
	}
    
    
    
}