import 'dart:convert';

class DashboardModel {
  final double send;
  final double receive;
  DashboardModel({
    required this.send,
    required this.receive,
  });

  DashboardModel copyWith({
    double? send,
    double? receive,
  }) {
    return DashboardModel(
      send: send ?? this.send,
      receive: receive ?? this.receive,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'send': send,
      'receive': receive,
    };
  }

  factory DashboardModel.fromMap(Map<String, dynamic> map) {
    return DashboardModel(
      send: map['send']?.toDouble() ?? 0.0,
      receive: map['receive']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory DashboardModel.fromJson(String source) =>
      DashboardModel.fromMap(json.decode(source));

  @override
  String toString() => 'DashboardModel(send: $send, receive: $receive)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DashboardModel &&
        other.send == send &&
        other.receive == receive;
  }

  @override
  int get hashCode => send.hashCode ^ receive.hashCode;
}
