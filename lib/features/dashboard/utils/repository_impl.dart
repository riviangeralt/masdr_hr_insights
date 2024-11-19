import 'package:masdr_hr_insights/dio/api_client.dart';
import 'package:masdr_hr_insights/features/dashboard/model/employee_salary_model.dart';
import 'package:masdr_hr_insights/features/dashboard/model/graph_model.dart';
import 'package:masdr_hr_insights/features/dashboard/model/turnover_details_model.dart';
import 'package:masdr_hr_insights/features/dashboard/utils/apis.dart';
import 'package:masdr_hr_insights/features/dashboard/utils/repository.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  ApiClient apiClient = ApiClient();

  @override
  Future<List> fetchTurnoverGraph(
    String estId,
    Map<String, dynamic>? queryParams,
  ) async {
    final response = await apiClient.get(
      DashboardAPI.fetchTurnoverGraph(estId),
      queryParams: queryParams,
    );
    return response.data.map((ele) => GraphModel.fromJson(ele)).toList();
  }

  @override
  Future<TurnoverDetailsModel> fetchTurnoverDetails(
    String estId,
    Map<String, dynamic>? queryParams,
  ) async {
    final response = await apiClient.get(
      DashboardAPI.fetchTurnoverDetails(estId),
      queryParams: queryParams,
    );
    return TurnoverDetailsModel.fromJson(response.data);
  }

  @override
  Future<List<GraphModel>> fetchTurnoverGraphForCompetitors(
    String estId,
    Map<String, dynamic>? queryParams,
  ) async {
    final response = await apiClient.get(
      DashboardAPI.fetchTurnoverForCompetitors(estId),
      queryParams: queryParams,
    );

    return (response.data as List).map((ele) {
      if (ele['value'] is num) {
        ele['value'] = (ele['value'] as num).toInt();
      }
      return GraphModel.fromJson(ele);
    }).toList();
  }

  @override
  Future<EmployeeSalaryModel> fetchEmployeeSalary(
      String estId, Map<String, dynamic>? queryParams) async {
    final response = await apiClient.get(
      DashboardAPI.fetchEmployeeSalary(estId),
      queryParams: queryParams,
    );
    return EmployeeSalaryModel.fromJson(response.data);
  }

  @override
  Future<List> fetchEmployeeGraph(
      String estId, Map<String, dynamic>? queryParams) async {
    final response = await apiClient.get(
      DashboardAPI.fetchEmployeeGraph(estId),
      queryParams: queryParams,
    );
    return response.data.map((ele) => GraphModel.fromJson(ele)).toList();
  }

  @override
  Future<List> fetchEmployeeGraphForCompetitors(
      String estId, Map<String, dynamic>? queryParams) async {
    final response = await apiClient.get(
      DashboardAPI.fetchEmployeeGraphForCompetitors(estId),
      queryParams: queryParams,
    );
    return response.data.map((ele) => GraphModel.fromJson(ele)).toList();
  }
}
