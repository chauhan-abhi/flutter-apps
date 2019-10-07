class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});

}

  List<ChatModel> mockData = [
    new ChatModel(
      name: "Abhijeet",
      message: "Flutter is so amazing!",
      time: "04:30",
      avatarUrl: "https://avatars1.githubusercontent.com/u/20797673?s=460&v=4"
    ),
    new ChatModel(
      name: "Veronica",
      message: "Its all widgets!",
      time: "01:30",
      avatarUrl: "https://i.pravatar.cc/400?img=47"
    ),
    new ChatModel(
      name: "Kaylie",
      message: "Can you help me?",
      time: "07:30",
      avatarUrl: "https://i.pravatar.cc/400?img=37"
    ),
    new ChatModel(
      name: "Sizel",
      message: "Hacktoberfest PR",
      time: "12:30",
      avatarUrl: "https://i.pravatar.cc/400?img=24"
    ),
    new ChatModel(
      name: "Sanaya",
      message: "Merge my PR",
      time: "04:22",
      avatarUrl: "https://i.pravatar.cc/400?img=1"
    ),
    new ChatModel(
      name: "George",
      message: "Coming over this weekend",
      time: "10:10",
      avatarUrl: "https://i.pravatar.cc/400?img=2"
    )
  ];