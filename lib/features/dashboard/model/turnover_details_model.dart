class TurnoverDetailsModel {
  double? turnoverRate;
  int? totalTurnover;

  TurnoverDetailsModel({this.turnoverRate, this.totalTurnover});

  TurnoverDetailsModel.fromJson(Map<String, dynamic> json) {
    turnoverRate = json['turnover_rate'];
    totalTurnover = json['total_turnover'];
  }
  
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['turnover_rate'] = turnoverRate;
    data['total_turnover'] = totalTurnover;

    return data;
  }
}
