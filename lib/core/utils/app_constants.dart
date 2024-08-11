import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomService> services = [
    CustomService(
      service: 'MOBILE DEVELOPMENT',
      logo: AppAssets.androidLogo,
      description:
          'I am a Junior mobile developer. I have experience using Dart and Flutter Framework.',
    ),
    CustomService(
      service: 'WEB DEVELOPMENT',
      logo: AppAssets.uiDesignLogo,
      description:
          'I am a Junior react developer. I have experience using React and JS.',
    ),
    // CustomService(
    //   service: 'WEB SCRAPING',
    //   logo: AppAssets.scrappingLogo,
    //   description:
    //       'I can collect content and data from the internet then manipulate and analyze as needed.',
    // ),
  ];
  static const List<Project> projects = [
    Project(
      name: 'Story',
      imageUrl:
          'https://play-lh.googleusercontent.com/55zbOUfDqSrIrn1i_8UG3mW0Nt-n6KuibC9_peSt9E08SbmhgZpQirw9OPGEjcmza3dG=w240-h480-rw',
      description:
          'The story" is a location-based social media platform that allows users to share photos and videos with others in their immediate vicinity. ',
      // githubRepoLink: '',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.story.social.np',
    ),
    Project(
      name: 'Advance note',
      imageUrl:
          'https://play-lh.googleusercontent.com/g9iQVrVOqRPD7mpimfAcMoHM2AzQsEVWt2GiFYM9qAu2EYMi8lKb3jlHFxL4yhxsF2g=w240-h480-rw',
      description:
          '"Advance Note" is a versatile app designed to enhance your note-taking experience. ',
      githubRepoLink: 'https://github.com/pujanbohora/advanced_note_app',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.advance.notes.np',
    ),
    Project(
      name: 'Run Number',
      imageUrl:
          'https://play-lh.googleusercontent.com/cz3PLsqIFd7xLFkmjgwpF50xIJSXoluwgdkyHU8uDBN9xX2vP8JwSWxEy3vFRDbeBw=w240-h480-rw',
      description:
          'Calculator Game: Run Number is a new game that will teach you how to count quickly and accurately, as well as learn the multiplication table.',
      githubRepoLink: 'https://github.com/pujanbohora/math_game',
      googlePlay:
          'https://play.google.com/store/apps/details?id=np.mathgame.com',
    ),
    Project(
      name: 'E-kurakani-Counselling',
      imageUrl:
          'https://raw.githubusercontent.com/pujanbohora/e-kurakani-Counselling-/master/frontend/assets/images/LOGO.png',
      description:
          'An application designed to digitize counseling services. Organizations, whether hospitals or schools with Khalti payment integration.',
      githubRepoLink:
          'https://github.com/pujanbohora/e-kurakani-Counselling-/tree/master',
      // previewLink: 'https://youtu.be/wK9Y9BhP190',
    ),
    Project(
      name: 'Elevator Management',
      imageUrl:
          'https://raw.githubusercontent.com/pujanbohora/elevatormanagement/development/assets/images/app_logo2.png',
      description:
          'An application designed for elevator management that allows tracking of tasks in progress, monitoring the completion status of work, and assigning tasks.',
      githubRepoLink: 'https://github.com/pujanbohora/elevatormanagement',
      // googlePlay: '',
    ),
    Project(
      name: 'E-Learning UI',
      imageUrl:
          'https://drive.google.com/uc?id=1hd7U3HgoDqXEi9eDKYjrY9iqlWa6qt8E',
      description: 'UI of Learning application.',
      githubRepoLink: 'https://github.com/pujanbohora/e-learning',
      // googlePlay: '',
    ),
    // Project(
    //   name: 'Ghaslah',
    //   imageUrl:
    //       'https://drive.google.com/uc?id=1ed4H2-cH6yk_kVkDdxOLcUkgP1xpuo72',
    //   description:
    //       'An application for add wash cars reservation with location in map and the picker will come to wash the cars',
    //   previewLink: 'https://youtu.be/gkeRSAfCZaI',
    // ),
    // Project(
    //   name: 'Zawilan',
    //   imageUrl:
    //       'https://drive.google.com/uc?id=1ElTwguynMLqhS295-IE7bTTabsZGZp8s',
    //   description:
    //       'Zwailan is an education app based on units and sections system, you start by sign up on app and wait until the teacher accept your join request.',
    //   previewLink: 'https://youtu.be/g92W-SmfkKc',
    //   googlePlay:
    //       'https://play.google.com/store/apps/details?id=com.radyhaggag.zawilan',
    // ),
  ];
}
