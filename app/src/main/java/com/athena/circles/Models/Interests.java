package com.athena.circles.Models;

public class Interests {
    private int id;
    private long followers;
    private String name;
    private int avatarHex;
    private int imageRec;

    public Interests(int id, String name, int imageRec, int avatarHex) {
        this.id = id;
        this.name = name;
        this.avatarHex = avatarHex;
        this.imageRec = imageRec;
    }

    public Interests(int id, String name, int imageRec, int avatarHex, long followers) {
        this.id = id;
        this.followers = followers;
        this.name = name;
        this.avatarHex = avatarHex;
        this.imageRec = imageRec;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public long getFollowers() {
        return followers;
    }

    public void setFollowers(long followers) {
        this.followers = followers;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAvatarHex() {
        return avatarHex;
    }

    public void setAvatarHex(int avatarHex) {
        this.avatarHex = avatarHex;
    }

    public int getImageRec() {
        return imageRec;
    }

    public void setImageRec(int imageRec) {
        this.imageRec = imageRec;
    }
}
