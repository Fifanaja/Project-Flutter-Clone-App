// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SuggestedFollower {
  final String id;
  final String username;
  final String profileImageUrl;
  final bool isFollowing;

  SuggestedFollower(
      {required this.id,
      required this.username,
      required this.profileImageUrl,
      required this.isFollowing});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'profileImageUrl': profileImageUrl,
      'isFollowing': isFollowing,
    };
  }

  factory SuggestedFollower.fromMap(Map<String, dynamic> map) {
    return SuggestedFollower(
      id: map['id'] as String,
      username: map['username'] as String,
      profileImageUrl: map['profileImageUrl'] as String,
      isFollowing: map['isFollowing'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory SuggestedFollower.fromJson(String source) =>
      SuggestedFollower.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<SuggestedFollower> suggestedFollowers = [
  SuggestedFollower(
    id: '1',
    username: 'โอม อร่อยเห่าะ',
    profileImageUrl: 'assets/profile_1.jpeg',
    isFollowing: true,
  ),
  SuggestedFollower(
    id: '2',
    username: 'ปีเตอร์ โกโรโกโส',
    profileImageUrl: 'assets/profile_2.jpeg',
    isFollowing: false,
  ),
  SuggestedFollower(
    id: '3',
    username: 'จ่าขม ลมโชยยยยยยย',
    profileImageUrl: 'assets/profile_3.jpeg',
    isFollowing: false,
  ),
  SuggestedFollower(
    id: '4',
    username: 'แกไม่รอดแน่ คนอีSAnnnnnnn',
    profileImageUrl: 'assets/profile_4.jpeg',
    isFollowing: true,
  ),
  SuggestedFollower(
    id: '5',
    username: 'หกปีนี้ขื่นขม',
    profileImageUrl: 'assets/profile_5.jpeg',
    isFollowing: false,
  ),
];
