import 'package:flutter/material.dart';

class Experience {
  final String company;
  final String companyDescription;
  final String jobName;
  final String jobDescription;
  final String jobStarted;
  final String jobFinished;
  final IconData? iconData;
  final String? iconUrl;
  final List<Skill> skillsList;

  Experience({
    required this.company,
    required this.companyDescription,
    required this.jobName,
    required this.jobDescription,
    required this.jobStarted,
    required this.jobFinished,
    required this.skillsList,
    this.iconData,
    this.iconUrl,
  });
}

class Skill {
  final String group;
  final String name;

  const Skill({
    required this.group,
    required this.name,
  });
}

//TODO:_move to repository pattern
final List<Experience> dataExperiences = [
  Experience(
    company: "Olisipo/Bosch",
    companyDescription: "IT Services and IT Consulting.",
    jobName: "IOS developer",
    jobDescription:
        "Part of the IOS team that develops and maintains a multi-branding application, connected with Bosch/Vulcano smart appliances such as air conditioners, heat pumps, boilers, etc.",
    jobStarted: "Nov 2021",
    jobFinished: "Present",
    iconData: null,
    iconUrl: "assets/icons/apple.png",
    skillsList: const [
      Skill(
        group: "Mobile Technologies",
        name:
            "RxSwift,Realm,Swinject,lottie, UiKit Storyboard, Firebase, Testfligth, Cocoa pods, Dependency injection",
      ),
      Skill(
        group: "Other tools",
        name: "Miro, Abstract, Jira, bitbucket",
      )
    ],
  ),
  Experience(
    company: "Blendit/Electrolux",
    companyDescription: "IT Consulting Company.",
    jobName: "IOS developer",
    jobDescription:
        "Responsible for the development of the revamp of HomePlus App, an IOT project developed to connect with Electrolux's smart devices.",
    jobStarted: "Aug. 2020",
    jobFinished: "Nov 2021",
    iconData: null,
    iconUrl: "assets/icons/apple.png",
    skillsList: const [
      Skill(
        group: "Mobile technologies",
        name:
            "SwiftUI, Combine, Alamofire, Rest API, Azure Devops Repository,Azure DevOps Boards, Microsoft App Center, Firebase Analytics and crashlytics, App Center to Distribute,Swift Manage Package, Cocoa pods, xCode and Jetbrain AppCode",
      ),
      Skill(group: "Others Tools", name: "Zeplin, OverFlow, AdobeXD")
    ],
  ),
  Experience(
    company: "Samcorp Solution",
    companyDescription:
        "A Software development company to customers in Brazil and Argentina.",
    jobName: "Android Developer",
    jobDescription:
        "I worked as Android Developer responsible for the maintenance of all android java and kotlin for Wiser Educação Group. My best project was creating an android video player component based in google Exoplayer with the objective to reuse it on all apps, this allowed for huge cost savings and increase development time in many projects. I Developed the React Native Bridge of this player to be used in all React Native projects by other developers. Some of these applications have more than 20k active users, of which 1,500 are simultaneous users per day. Today the Android Video component has more than 120k active users, adding up all the apps.",
    jobStarted: "Dec 2019",
    jobFinished: "Aug 2020",
    iconData: null,
    iconUrl: "assets/icons/android.png",
    skillsList: const [
      Skill(
        group: "Mobile technologies",
        name:
            "Android Studio, Java / Kotlin, Video Streaming, Google ExoPlayer, Firebase Remote Config, Push notifications, React Native and TypeScript, BitBucket Pipeline, Fastlane, Firebase Analytics, Firebase Crashlytics.",
      ),
      Skill(
          group: "Local Database",
          name: "RealmDb and Room framework to sync with backend."),
      Skill(
        group: "Automated Test",
        name: "Firebase TestLab and Android Expresso UI Test.",
      ),
    ],
  ),
  Experience(
    company: "Samcorp Solution",
    companyDescription:
        "A Software development company to customers in Brazil and Argentina.",
    jobName: ".Net Software Engineer",
    jobDescription:
        "I worked as Fullstack .net software engineer, participating in the development and go-live in 3 ships ports in Argentina of the RDS( Receipt and Dispatch System of Trucks and Ships).",
    jobStarted: "May. 2019",
    jobFinished: "Dec. 2019",
    iconData: null,
    iconUrl: "assets/icons/csharp.png",
    skillsList: const [
      Skill(
        group: "Frontend technologies",
        name: "Asp.net Core MVC/Razor, JavaScript, JQuery",
      ),
      Skill(
        group: "Backend technologies",
        name:
            "Asp.net REST WebApi,Dapper, Design Patterns, DDD-Domain Driven Design, Sql Server for database.",
      ),
      Skill(
        group: "Automated test technologies",
        name:
            "Selenium WebDriver for UI Tests, xUnit for unit test and integration test.",
      ),
      Skill(
        group: "Management methodology",
        name: "Kanban,Git flow and github enterprise for source control.",
      ),
      Skill(
        group: "Other technologies",
        name:
            "RFID,PLC/ModBus integration for weighing, loading and unloading trucks and trains without operator intervention.",
      ),
    ],
  ),
  Experience(
    company: "Rsac Solutions",
    companyDescription:
        "Consulting Company for ERP(Enterprise Resource Planning System) Totvs/Protheus (the biggest Brazilian ERP) helping the client to implement, customize, and integrate Web/Mobile solutions",
    jobName: "Tech Leader/Mobile Developer",
    jobDescription:
        "I worked as a tech leader, with 4 mobile developers, in projects for WMS-Warehouse Management System,Shop Floor and inventory integrated with ERP Totvs/Protheus.",
    jobStarted: "Aug. 2010",
    jobFinished: "May. 2019",
    iconData: null,
    iconUrl: "assets/icons/cross.png",
    skillsList: const [
      Skill(
        group: "Tech Leader",
        name:
            "As a Tech Leader, I've trained 2 Junior C# developer to start in our Team. Also implemented Source Control Versioning using GitLab in all projects and implement a development process using Kanban to management our tasks.",
      ),
      Skill(
        group: "Mobile",
        name:
            "As developer, I finished 5 Projects in Xamarin Forms. I started this initiative 2 years ago as a strategy to replace the older applications to Android apps. This allowed the company to acquire new customers in 2018, because the total cost of the project was reduced by up to 60%.",
      ),
      Skill(
        group: "Backend",
        name:
            "I Developed 4 Backend project in Aps.net core WebApi to support our mobile apps.",
      ),
      Skill(
          group: "IOT",
          name:
              "I finished 8 Project in C# Windows Mobile 6 using WinForms integrated with ERP Totvs/Protheus."),
      Skill(
        group: "Mobile",
        name:
            "I Developed 1 Android Native app for appointments of our employees and consultants,called Minerva Mobile, this project is active today, but was converted to Xamarin.",
      ),
    ],
  ),
  Experience(
    company: "Ábaco IT",
    companyDescription: "Software Developer company to Government",
    jobName: "Project Manager",
    jobDescription:
        "Project manager of consortium between two business company to development a Software for Social security government.",
    jobStarted: "Aug. 2010",
    jobFinished: "May. 2019",
    iconData: Icons.groups,
    skillsList: const [
      Skill(
        group: "Managment",
        name: """
I managed 8 Project in 7 states in Brazil, and Leading Team for 20 developer and Business Analyst.
I participated in the PMO-Project Management Office methodology implementation team.
Was Responsible to make project plans, risks, schedules, performance indicators, meetings for strategic and operational alignment.
My biggest result was to be able to recover a lost project of \$250 thousand, after a negotiation with the customer, writing the project plan and monitoring the execution of the project for a month.
""",
      ),
    ],
  ),
];
