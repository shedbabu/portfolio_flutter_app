class Resume {
  final String name;
  final String title;
  final String about;
  final List<String> skills;
  final List<Project> projects;
  final List<Education> education;
  final List<Experience> experience;
  final List<Publication> publications;
  final List<ConferencePresentation> conferencePresentations;

  Resume({
    required this.name,
    required this.title,
    required this.about,
    required this.skills,
    required this.projects,
    required this.education,
    required this.experience,
    required this.publications,
    required this.conferencePresentations,
  });
}

class Project {
  final String title;
  final String description;

  Project({required this.title, required this.description});
}

class Education {
  final String degree;
  final String institution;
  final String year;

  Education({required this.degree, required this.institution, required this.year});
}

class Experience {
  final String title;
  final String company;
  final String duration;

  Experience({required this.title, required this.company, required this.duration});
}

class Publication {
  final String title;
  final String journal;
  final String year;

  Publication({required this.title, required this.journal, required this.year});
}

class ConferencePresentation {
  final String title;
  final String conference;
  final String year;

  ConferencePresentation({required this.title, required this.conference, required this.year});
}
