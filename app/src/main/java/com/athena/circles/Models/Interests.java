package com.athena.circles.Models;

public class Interests {
    private String name, avatarHex;
    private int imageRec;

    public Interests(String name, String avatarHex, int imageRec) {
        this.name = name;
        this.avatarHex = avatarHex;
        this.imageRec = imageRec;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAvatarHex() {
        return avatarHex;
    }

    public void setAvatarHex(String avatarHex) {
        this.avatarHex = avatarHex;
    }

    public int getImageRec() {
        return imageRec;
    }

    public void setImageRec(int imageRec) {
        this.imageRec = imageRec;
    }
}
