package com.boardweb.biz.vo;

import javax.persistence.Column;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Entity;

@Entity
public class UserVO {
    //------------------------------------------------------------
	private int serial;
	@Column
    @Pattern(regexp="\\w{2,16}", message="���̵� 2~16�ڷ� �Է����ּ���.")
    private String id;
    @Column
    @Pattern(regexp="\\S{2,12}", message="�̸��� ������� 2~12�ڷ� �Է����ּ���.")
    private String name;
    @Column
    @Size(min=4, max=12, message="��й�ȣ�� 4~12�ڷ� �Է����ּ���.")
    private String password;
    @Column
    private String checkPw;
    private String role;
    //------------------------------------------------------------
    public boolean isPwEqualToCheckPw() {
        return password.equals(checkPw);
    }
    //------------------------------------------------------------
    public int getSerial() {
        return serial;
    }
    public void setSerial(int serial) {
        this.serial = serial;
    }
    //------------------------------------------------------------
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    //------------------------------------------------------------
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    //------------------------------------------------------------
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    //------------------------------------------------------------
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }
    //------------------------------------------------------------
    public String getCheckPw() {
        return checkPw;
    }
    public void setCheckPw(String checkPw) {
        this.checkPw = checkPw;
    }
	//------------------------------------------------------------
	public boolean matchPassword(String password) {
		return this.password.equals(password);
	}
    //------------------------------------------------------------
	@Override
	public String toString() {
		return "UserVO [serial=" + serial + ", name=" + name + ", id=" + id + ", password=" + password + ", role="
				+ role + "]";
	}
    //------------------------------------------------------------
}
