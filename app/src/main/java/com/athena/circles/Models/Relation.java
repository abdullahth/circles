package com.athena.circles.Models;


public class Relation {
    private int id;
    private String name;
    private int avatarHex; // Referees to R.colors...
    private int imageRec;

    public Relation(int id, String name, int imageRec, int avatarHex) {
        this.id = id;
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

    public Relation(){}

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
