package com.athena.circles.Models;

import java.util.ArrayList;
import java.util.Map;

public class User {
    /**
     * @interests: All Interests Ids that the user follow
     * @circles: All the Circles that the User was in;
     * @settings: String: Settings' item Token, Integer: Value (1, 0, -1) ->
     * 0: Auto, 1: On, -1: Off; Some Setting will not have Auto Option;
     * @relations: String: UserUid , Integer: Relation Id;
     * */
    private ArrayList<Circle> circles;
    private String displayName;
    private String bio;
    private Map<String, Integer> settings, relations;
    private ArrayList<Integer> interests;

    public User(ArrayList<Circle> circles, String userUid, String displayName, String bio, Map<String, Integer> settings, Map<String, Integer> relations, ArrayList<Integer> intersets) {
        this.circles = circles;
        this.displayName = displayName;
        this.bio = bio;
        this.settings = settings;
        this.relations = relations;
        this.interests = intersets;
    }

    public ArrayList<Circle> getCircles() {
        return circles;
    }

    public void setCircles(ArrayList<Circle> circles) {
        this.circles = circles;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public Map<String, Integer> getSettings() {
        return settings;
    }

    public void setSettings(Map<String, Integer> settings) {
        this.settings = settings;
    }

    public Map<String, Integer> getRelations() {
        return relations;
    }

    public void setRelations(Map<String, Integer> relations) {
        this.relations = relations;
    }

    public ArrayList<Integer> getIntersets() {
        return interests;
    }

    public void setIntersets(ArrayList<Integer> intersets) {
        this.interests = intersets;
    }

    public User() {
    }
}
