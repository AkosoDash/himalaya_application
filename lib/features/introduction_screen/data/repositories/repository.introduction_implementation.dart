import 'package:himalaya_application/core/constants/app_constants.dart';
import 'package:himalaya_application/features/introduction_screen/data/models/model.introduction.dart';
import 'package:himalaya_application/features/introduction_screen/domain/entities/entity.introduction.dart';
import 'package:himalaya_application/features/introduction_screen/domain/repositories/repository.introduction.dart';

class IntroductionRepositoryImplementation implements IntroductionRepository {
  @override
  List<Introduction> getAllIntroductions() {
    return AppConstants.introductionScreen
        .map((introductionData) => IntroductionModel.fromJson(introductionData))
        .toList();
  }
}
