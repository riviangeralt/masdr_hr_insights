class EmployeeSalaryModel {
  int? avgSalary;
  int? totalSalary;

  EmployeeSalaryModel({this.avgSalary, this.totalSalary});

  EmployeeSalaryModel.fromJson(Map<String, dynamic> json) {
    avgSalary = json['avg_salary'];
    totalSalary = json['total_salary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['avg_salary'] = avgSalary;
    data['total_salary'] = totalSalary;
    return data;
  }
}
