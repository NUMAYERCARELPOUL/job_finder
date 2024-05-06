import 'package:flutter/material.dart';

class SeeAllJob {
  final String title;
  final String address;
  final String companyLogo;
  final String timeAgo;
  final String type;
  final String experienceLevel;
  final String experienceLevelColor;

  bool isMyFav;

  SeeAllJob(this.title, this.address, this.timeAgo, this.companyLogo, this.type, this.experienceLevel, this.experienceLevelColor, this.isMyFav);

  factory SeeAllJob.fromJson(Map<String, dynamic> json) {
    return new SeeAllJob(
        json['title'],
        json['address'],
        json['timeAgo'],
        json['companyLogo'],
        json['type'],
        json['experienceLevel'],
        json['experienceLevelColor'],
        json['isMyFav']
    );
  }
}