import 'package:himalaya_application/features/introduction_screen/domain/entities/entity.introduction.dart';
import 'package:himalaya_application/features/introduction_screen/domain/repositories/repository.introduction.dart';

class GetIntroduction {
  final IntroductionRepository repository;

  GetIntroduction(this.repository);

  List<Introduction> execute() {
    return repository.getAllIntroductions();
  }
}
