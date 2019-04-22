package com.boardweb.biz.exception;

public class AlreadyExistingNameException extends RuntimeException{
	private static final long serialVersionUID = 1L;

	public AlreadyExistingNameException(String message) {
        super(message);
    }
}