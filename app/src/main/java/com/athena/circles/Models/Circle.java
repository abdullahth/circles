package com.athena.circles.Models;

import android.location.Location;

import java.sql.Date;
import java.util.ArrayList;

public class Circle {
    private String head, desc, creatorId;
    private int totalSates, available;
    private ArrayList<Integer> relatedInterests;
    private Location location;
    private Date scheduledIn;

    public Circle(String head, String desc, String creatorId, int totalSates, int available, ArrayList<Integer> relatedInterests, Location location, Date scheduledIn) {
        this.head = head;
        this.desc = desc;
        this.creatorId = creatorId;
        this.totalSates = totalSates;
        this.available = available;
        this.relatedInterests = relatedInterests;
        this.location = location;
        this.scheduledIn = scheduledIn;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(String creatorId) {
        this.creatorId = creatorId;
    }

    public int getTotalSates() {
        return totalSates;
    }

    public void setTotalSates(int totalSates) {
        this.totalSates = totalSates;
    }

    public int getAvailable() {
        return available;
    }

    public void setAvailable(int available) {
        this.available = available;
    }

    public ArrayList<Integer> getRelatedInterests() {
        return relatedInterests;
    }

    public void setRelatedInterests(ArrayList<Integer> relatedInterests) {
        this.relatedInterests = relatedInterests;
    }

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    public Date getScheduledIn() {
        return scheduledIn;
    }

    public void setScheduledIn(Date scheduledIn) {
        this.scheduledIn = scheduledIn;
    }
}
