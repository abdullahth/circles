package com.athena.circles.Models;

import androidx.annotation.NonNull;

import org.jetbrains.annotations.NotNull;

import java.sql.Date;
import java.sql.Timestamp;

public class Message {
    private String body, senderUid;
    private Date sentIn;
    private int msgId;

    public Message(@NotNull int msgId, @NonNull String body, @NotNull String senderUid, @NotNull Date sentIn) {
        this.body = body;
        this.senderUid = senderUid;
        this.sentIn = sentIn;
        this.msgId = msgId;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getSenderUid() {
        return senderUid;
    }

    public void setSenderUid(String senderUid) {
        this.senderUid = senderUid;
    }

    public Date getSentIn() {
        return sentIn;
    }

    public void setSentIn(Date sentIn) {
        this.sentIn = sentIn;
    }

    public int getMsgId() {
        return msgId;
    }

    public void setMsgId(int msgId) {
        this.msgId = msgId;
    }
}
