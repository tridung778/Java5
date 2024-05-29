package com.lab.lab5.ultils;

public enum Message {
    SUCCESS_CREATE("Create success!"),
    SUCCESS_UPDATE("Update success!"),
    SUCCESS_DELETE("Delete success!"),
    ERROR_EXISTING_ID("Id đã tồn tại!"),
    ERROR_NOT_FOUND("Id không tồn tại!"),
    ERROR_LENGTH("Độ dài id loại hàng là 4 ký tự!"),
    ERROR_VALIDATION("Validation error!");

    private final String text;

    Message(String text) {
        this.text = text;
    }

    public String getText() {
        return text;
    }
}
