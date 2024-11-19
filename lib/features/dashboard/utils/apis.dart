class DashboardAPI {
  static String fetchTurnoverDetails(String estId) {
    return '/establishment/$estId/employee';
  }

  static String fetchTurnoverGraph(String estId) {
    return '/establishment/$estId/employee';
  }

  static String fetchTurnoverForCompetitors(String estId) {
    return '/establishment/$estId/employee';
  }

  // Salary Growth
  static String fetchEmployeeSalary(String estId) {
    return '/establishment/$estId/employeesalary';
  }

  static String fetchEmployeeGraph(String estId) {
    return '/establishment/$estId/employeesalary';
  }

  static String fetchEmployeeGraphForCompetitors(String estId) {
    return '/establishment/$estId/industry';
  }
}
