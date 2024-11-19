import 'package:masdr_hr_insights/features/dashboard/model/employee_salary_model.dart';
import 'package:masdr_hr_insights/features/dashboard/model/turnover_details_model.dart';

abstract class DashboardRepository {
  Future<TurnoverDetailsModel> fetchTurnoverDetails(
    String args1,
    Map<String, dynamic> args2,
  );


Future<List> fetchTurnoverGraph(
    String arg1,
    Map<String, dynamic>? arg2,
  );


  Future<List> fetchTurnoverGraphForCompetitors(
    String arg1,
    Map<String, dynamic>? arg2,
  );

  Future<EmployeeSalaryModel> fetchEmployeeSalary(
    String arg1,
    Map<String, dynamic>? arg2,
  );

  Future<List> fetchEmployeeGraph(
    String arg1,
    Map<String, dynamic>? arg2,
  );

  Future<List> fetchEmployeeGraphForCompetitors(
    String arg1,
    Map<String, dynamic>? arg2,
  );

}
