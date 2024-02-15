package com.tech.userService.external.entities;

import lombok.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Game {
    private String gameId;
    private String title;
    private String description;
    private LocalDate releaseDate;
    private String platform;
    private String developer;
    private String publisher;
    private double price;
    private int gameLength;
    private String imageUrl;
    private String enterpriseId;
    private String categoryId;
    private List<Rating> ratings=new ArrayList<>();
}