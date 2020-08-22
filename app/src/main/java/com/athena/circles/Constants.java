package com.athena.circles;

import com.athena.circles.Models.Interests;
import com.athena.circles.Models.Relation;

public class Constants {
    /**
     * This Class will contain all the constant data for the app includes the Relations Row Data,
     * Interests Row Data/ Real Time ImagesRecs and another Data will be mentioned if was added;
     */

    Relation[] relations = new Relation[]{
            new Relation(1001, "Buddy", R.drawable.buddy, R.color.avatar_color_1),
            new Relation(1002, "New Friend", R.drawable.new_friend, R.color.avatar_color_2),
            new Relation(1003, "Fiancee", R.drawable.fiancee, R.color.avatar_color_3),
            new Relation(1004, "Husband", R.drawable.marrige, R.color.avatar_color_4),
            new Relation(1005, "Wife", R.drawable.marrige, R.color.avatar_color_4),
            new Relation(1006, "Relationship", R.drawable.relation, R.color.avatar_color_5),
    };

    Interests[] interests = new Interests[]{
            new Interests(10001, "Concerts", R.drawable.concerts, R.color.avatar_color_1),
            new Interests(10002, "Music", R.drawable.music, R.color.avatar_color_2),
            new Interests(10003, "Gaming", R.drawable.gaming, R.color.avatar_color_4),
            new Interests(10004, "Food", R.drawable.food, R.color.avatar_color_6),
            new Interests(10005, "Cinema", R.drawable.cinema, R.color.avatar_color_6),
            new Interests(10006, "Reading", R.drawable.reading, R.color.avatar_color_9),
            new Interests(10007, "Sports", R.drawable.sport, R.color.avatar_color_8),
    };

}
