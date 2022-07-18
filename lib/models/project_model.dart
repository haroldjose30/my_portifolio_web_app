class ProjectModel {
  final String projectId;
  final String projectTitle;
  final String projectDescription;
  final String projectUrl;
  final String technologies;
  final String? imageUrl;

  ProjectModel({
    required this.projectId,
    required this.projectTitle,
    required this.projectDescription,
    required this.projectUrl,
    required this.technologies,
    this.imageUrl,
  });
}

//TODO:_move to repository pattern
final List<ProjectModel> dataProjectModels = [
  ProjectModel(
    projectId: "homecomeasy",
    projectTitle: "HomeCom Easy",
    projectDescription: "",
    technologies: "",
    projectUrl: "",
    imageUrl: "assets/images/projects/meusucesso/screen01.png",
  ),
  ProjectModel(
    projectId: "homeplus",
    projectTitle: "HomePlus",
    projectDescription: "",
    technologies: "",
    projectUrl: "",
    imageUrl: "",
  ),
  ProjectModel(
    projectId: "dq90x",
    projectTitle: "DQ90x",
    projectDescription:
        "IOT - Internet of things mobile project, developed to connect with Electrolux's smart devices.",
    technologies: "IOS, SwiftUI, Combine,Alamofire",
    projectUrl: "",
    imageUrl: "",
  ),
  ProjectModel(
    projectId: "vvsplayer",
    projectTitle: "V.V.S. Android Player",
    projectDescription:
        "This is a video player component based in google exoplayer with the objective to reuse it on all apps, this allowed for huge cost savings and increase development time in many projects.",
    technologies: "Android Native Kotlin, ExoPlayer, Android component, gradle",
    projectUrl: "",
    imageUrl: "",
  ),
  ProjectModel(
    projectId: "meusucesso",
    projectTitle: "Meu Sucesso App",
    projectDescription:
        "MeuSucesso.com is the School of Insights for you who dream of taking that project of yours out of paper. Here, knowledge and entertainment go together to lead you to the success you are looking for.",
    technologies: "Android Native Java and Kotlin",
    projectUrl: "",
    imageUrl: "",
  ),
  ProjectModel(
    projectId: "numberone",
    projectTitle: "Number One Online App",
    projectDescription:
        "Number One Online is an extension application for the Number One English school.",
    technologies: "Android Native Java and Kotlin",
    projectUrl: "",
    imageUrl: "",
  ),
  ProjectModel(
    projectId: "wiseupplus",
    projectTitle: "Wise Up Plus App",
    projectDescription:
        "Wise Up Plus is an extension application for the Wise Up English school.",
    technologies: "Android Native Java and Kotlin",
    projectUrl: "",
    imageUrl: "",
  ),
  ProjectModel(
    projectId: "trail",
    projectTitle: "Trail App Data Colector",
    projectDescription:
        "Trail is a WMS-Warehouse Management System, Shop Floor and inventory app integrated with ERP Totvs/Protheus.",
    technologies: "Android Xamarin Forms",
    projectUrl: "",
    imageUrl: "",
  ),
  ProjectModel(
    projectId: "minervaa",
    projectTitle: "Minerva Mobile App",
    projectDescription:
        "Minerva Mobile is an app for appointments of employees and consultants. Used by RSAC Solutions company.",
    technologies: "Android and IOS Xamarin Forms",
    projectUrl: "",
    imageUrl: "",
  ),
  ProjectModel(
    projectId: "rds",
    projectTitle: "RDS Web",
    projectDescription:
        "RDS-Reception and Dispatch System, is a Webapp for receiving and shipping grain in ports and warehouses.",
    technologies: "Asp.net core MVC and WebApi",
    projectUrl: "",
    imageUrl: "",
  ),
  ProjectModel(
    projectId: "myportfoliowebapp",
    projectTitle: "This Web App",
    projectDescription: "",
    technologies: "Flutter",
    projectUrl: "",
    imageUrl: "",
  ),
];
