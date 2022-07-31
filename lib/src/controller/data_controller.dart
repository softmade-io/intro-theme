import 'package:get/get.dart';
import 'package:intro/src/models/certifications_model.dart';
import 'package:intro/src/models/config_model.dart';
import 'package:intro/src/models/education_model.dart';
import 'package:intro/src/models/projects_model.dart';
import 'package:intro/src/models/user_model.dart';

class DataController extends GetxController {
  Rx<PortfolioConfig> pConfig = PortfolioConfig().obs;
  RxList educations = [].obs;
  RxList projects = [].obs;
  RxList certifications = [].obs;
  Rx<User> user = User().obs;
  RxString portfolioId = ''.obs;
  RxBool mainLoading = true.obs;
  RxBool mainError = false.obs;
  String errorMessage = '';

  showScreenNotFound({required String error}) {
    mainLoading.value = false;
    errorMessage = error;
    mainError.value = true;
  }

  stopHomeLoading() {
    mainLoading.value = false;
  }

  Future<bool> setInitialData(
      {required User user,
      required PortfolioConfig portfolioConfig,
      required String pid}) async {
    this.user.value = user;
    pConfig.value = portfolioConfig;
    portfolioId.value = pid;
    return true;
  }

  setProjects({required List<ProjectModel> projects}) {
    this.projects.value = projects;
  }

  setEducation({required List<EducationModel> education}) {
    educations.value = education;
  }

  setCertifications({required List<CertificationModel> certifications}) {
    this.certifications.value = certifications;
  }
}
