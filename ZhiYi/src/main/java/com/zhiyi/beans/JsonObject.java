package com.zhiyi.beans;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Component;
@Component("jsonObject")
public class JsonObject<T> implements Serializable{
	private static final long serialVersionUID = 1L;
	private int total;
	private List<T> rows;
	private Object obj;
	private int result;
	@Override
	public String toString() {
		return "JsonObject [total=" + total + ", rows=" + rows + ", obj=" + obj + ", result=" + result + "]";
	}
	public JsonObject(int total, List<T> rows, Object obj, int result) {
		super();
		this.total = total;
		this.rows = rows;
		this.obj = obj;
		this.result = result;
	}
	public JsonObject() {
		super();
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	public Object getObj() {
		return obj;
	}
	public void setObj(Object obj) {
		this.obj = obj;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((obj == null) ? 0 : obj.hashCode());
		result = prime * result + this.result;
		result = prime * result + ((rows == null) ? 0 : rows.hashCode());
		result = prime * result + total;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		@SuppressWarnings("rawtypes")
		JsonObject other = (JsonObject) obj;
		if (this.obj == null) {
			if (other.obj != null)
				return false;
		} else if (!this.obj.equals(other.obj))
			return false;
		if (result != other.result)
			return false;
		if (rows == null) {
			if (other.rows != null)
				return false;
		} else if (!rows.equals(other.rows))
			return false;
		if (total != other.total)
			return false;
		return true;
	}
	
	
}
