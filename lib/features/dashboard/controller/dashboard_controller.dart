import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masdr_hr_insights/features/dashboard/model/graph_model.dart';
import 'package:masdr_hr_insights/features/dashboard/utils/enums.dart';
import 'package:masdr_hr_insights/features/dashboard/utils/repository_impl.dart';

class DashboardController extends GetxController {
  DashboardRepositoryImpl repository = DashboardRepositoryImpl();
  RxString selectedTab = TabEnums.Turnover.value.obs;
  RxList turnoverDetailsList = [].obs;
  RxList turnoverGraphList = [].obs;
  RxList<GraphModel> turnoverForCompetitorList = <GraphModel>[].obs;

  onChangeTab(String value) {
    selectedTab.value = value;
  }

  Future<void> fetchTurnoverDetails() async {
    try {
      final response = await repository.fetchTurnoverDetails(
        '1589301',
        {"operation": 'turnover'},
      );
      final turnOversList = [
        {
          "label": 'Headcount',
          "value": 255,
          'perc': "0.01",
          "bg": const Color(0xffE5ECF6)
        },
        {
          "label": 'New Joiners',
          "value": 101,
          'perc': "0.01",
          'bg': const Color(0xffE3F5FF)
        },
        {
          "label": 'Turnover',
          "value": response.totalTurnover,
          'perc': '${response.turnoverRate}%',
          'bg': const Color(0xffE5ECF6),
          'isPositive': !response.turnoverRate!.isNegative,
        },
      ];
      print('here');
      turnoverDetailsList.value = turnOversList;
      turnoverDetailsList.refresh();
      update();
    } catch (ex) {
      log('Error ${ex.toString()}');
    }
  }

  Future<void> fetchTurnoverGraph(String? filterBy) async {
    try {
      final response = await repository.fetchTurnoverGraph(
        '1589301',
        {'operation': 'graphTurnover', "filterBy": filterBy},
      );
      turnoverGraphList.value = response;
    } catch (ex) {
      log(ex.toString());
    }
  }

  Future<void> fetchTurnoverGraphForCompetitors(String? filterBy) async {
    try {
      final response = await repository.fetchTurnoverGraphForCompetitors(
        '1589301',
        {'operation': 'graphTurnover', "filterBy": filterBy},
      );
      turnoverForCompetitorList = response as RxList<GraphModel>;
    } catch (ex) {
      log(ex.toString());
    }
  }
}
