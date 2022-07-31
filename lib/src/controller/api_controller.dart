import 'dart:convert';
import 'dart:html';
import 'dart:io';

import 'package:get/get.dart';
import 'package:intro/src/controller/data_controller.dart';
import 'package:http/http.dart' as http;
import 'package:intro/src/models/certifications_model.dart';
import 'package:intro/src/models/config_model.dart';
import 'package:intro/src/models/education_model.dart';
import 'package:intro/src/models/projects_model.dart';
import 'package:intro/src/models/user_model.dart';
import 'package:intro/utils/api_config.dart';

class ApiController extends GetxController {
  String hostName = window.location.hostname as String;
  String baseUrl = ApiConfig.baseUrl;

  late DataController _dataController;

  ApiController() {
    _dataController = Get.find<DataController>();
  }

  Future loadPortfolio() async {
    try {
      print(baseUrl + '/portfolio/load?domain=$hostName');
      http.Response response = await http
          .get(Uri.parse(baseUrl + '/portfolio/load?domain=$hostName'));
      if (response.statusCode != 200) {
        _dataController.showScreenNotFound(error: 'Error 404 Page not found');
        return;
      }
      _dataController.stopHomeLoading();
      User user = User.fromJSON(json.decode(response.body)['profile']);
      PortfolioConfig portfolioConfig =
          PortfolioConfig.fromJSON(json.decode(response.body)['config']);
      String portfolioId = json.decode(response.body)['_id'];
      await _dataController.setInitialData(
          user: user, portfolioConfig: portfolioConfig, pid: portfolioId);
      return;
    } catch (e) {
      _dataController.stopHomeLoading();
      _dataController.showScreenNotFound(error: e.toString());
    }
  }

  Future getProjects() async {
    try {
      http.Response response = await http.get(Uri.parse(ApiConfig.baseUrl +
          '/portfolio/projects?pid=' +
          _dataController.portfolioId.value));

      if (response.statusCode != 200) {
        throw HttpException(response.body);
      }
      List<ProjectModel> project = [];

      if (json.decode(response.body).length > 0) {
        json.decode(response.body).forEach((e) {
          project.add(ProjectModel.fromJSON(e));
        });
        _dataController.setProjects(projects: project);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future getEducations() async {
    try {
      http.Response response = await http.get(Uri.parse(ApiConfig.baseUrl +
          '/portfolio/education?pid=' +
          _dataController.portfolioId.value));
      if (response.statusCode != 200) {
        throw HttpException(response.body);
      }
      List<EducationModel> project = [];

      if (json.decode(response.body)['education'].length > 0) {
        json.decode(response.body)['education'].forEach((e) {
          project.add(EducationModel.fromJSON(e));
        });
        _dataController.setEducation(education: project);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future getCertifications() async {
    try {
      http.Response response = await http.get(Uri.parse(ApiConfig.baseUrl +
          '/portfolio/certification?pid=' +
          _dataController.portfolioId.value));
      if (response.statusCode != 200) {
        throw HttpException(response.body);
      }
      List<CertificationModel> project = [];

      if (json.decode(response.body)['certifications'].length > 0) {
        json.decode(response.body)['certifications'].forEach((e) {
          project.add(CertificationModel.formJSON(e));
        });
        _dataController.setCertifications(certifications: project);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future getBlogs() async {}

  Future getOverview() async {}

  Future getActivity() async {}

  Future getAbout() async {}
}
