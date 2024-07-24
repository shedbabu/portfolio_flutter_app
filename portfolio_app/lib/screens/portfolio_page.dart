import 'package:flutter/material.dart';
import '../models/resume.dart'; // Ensure you have this file with the necessary classes

class PortfolioPage extends StatelessWidget {
  final Resume myResume = Resume(
    name: 'Shadrack Babu Kale',
    title: 'Research Associate, Global Health Innovation-Kenya',
    projects: [], // Provide an empty list or list of projects here
    about: 'I am a licensed and practicing Psychologist, and a tech enthusiast with more than 10 years of experience in mental health/counseling for medical conditions, and coordination of HIV and allied research programs. '
           'My vested interests are in: Maternal and child health, mental health, infectious diseases, public health surveillance, and software development. I love designing beautiful and functional mobile applications.',
    skills: ['Research Coordination', 'Mental Health Support', 'Software Development'],
    education: [
      Education(degree: 'Software Development Certificate', institution: 'Technical University of Mombasa', year: '2024'),
      Education(degree: 'Bachelors of Arts in Counselling Psychology', institution: 'Kenya Methodist University', year: '2018'),
    ],
    experience: [
      Experience(title: 'Research Associate', company: 'Global Health Innovation-Kenya', duration: '2023 - Present'),
      Experience(title: 'Lead Clinical Psychologist (Covid-19)', company: 'Coast General Teaching and Referral Hospital', duration: 'March 2020 - Feb 2022'),
      Experience(title: 'Study Coordinator (DTG Pregnancy Outcomes Study)', company: 'NASCOP/CHS (Centre for Health Solutions)', duration: 'October 2018 - June 2019'),
      Experience(title: 'Sites’ Study Coordinator (HITSystem Project)', company: 'KEMRI/CVR (University of Kansas Medical Center)', duration: 'March 2013 - October 2018'),
      Experience(title: 'Research Counselor/Transcriber (IAVI HIV/STI Project)', company: 'KEMRI/Welcome Trust', duration: 'March 2011 - February 2013'),
    ],
    publications: [
      Publication(title: 'Title of Publication 1', journal: 'Journal Name 1', year: 'Year 1'),
      Publication(title: 'Title of Publication 2', journal: 'Journal Name 2', year: 'Year 2'),
    ],
    conferencePresentations: [
      ConferencePresentation(title: 'Title of Presentation 1', conference: 'Conference Name 1', year: 'Year 1'),
      ConferencePresentation(title: 'Title of Presentation 2', conference: 'Conference Name 2', year: 'Year 2'),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio - ${myResume.name}'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            SizedBox(height: 20),
            _buildAboutSection(),
            SizedBox(height: 20),
            _buildSkillsSection(),
            SizedBox(height: 20),
            _buildProjectsSection(),
            SizedBox(height: 20),
            _buildEducationSection(),
            SizedBox(height: 20),
            _buildExperienceSection(),
            SizedBox(height: 20),
            _buildPublicationsSection(),
            SizedBox(height: 20),
            _buildConferencePresentationsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/pp.png'),
            // You can also use NetworkImage for web images
            // backgroundImage: NetworkImage('https://example.com/profile.jpg'),
          ),
        ),
        SizedBox(height: 10),
        Text(
          myResume.name,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          myResume.title,
          style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }

  Widget _buildAboutSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About Me',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(myResume.about),
      ],
    );
  }

  Widget _buildSkillsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skills',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: myResume.skills.map((skill) => Text(skill)).toList(),
        ),
      ],
    );
  }

  Widget _buildProjectsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Projects',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        myResume.projects.isEmpty
            ? Text('No projects available.')
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: myResume.projects.map((project) => ListTile(
                  title: Text(project.title),
                  subtitle: Text(project.description),
                )).toList(),
              ),
      ],
    );
  }

  Widget _buildEducationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Education',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: myResume.education.map((edu) => ListTile(
            title: Text(edu.degree),
            subtitle: Text('${edu.institution}, ${edu.year}'),
          )).toList(),
        ),
      ],
    );
  }

  Widget _buildExperienceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Experience',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: myResume.experience.map((exp) => ListTile(
            title: Text(exp.title),
            subtitle: Text('${exp.company}, ${exp.duration}'),
          )).toList(),
        ),
      ],
    );
  }

  Widget _buildPublicationsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Publications',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: myResume.publications.map((pub) => ListTile(
            title: Text(pub.title),
            subtitle: Text('${pub.journal}, ${pub.year}'),
          )).toList(),
        ),
      ],
    );
  }

  Widget _buildConferencePresentationsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Conference Presentations',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: myResume.conferencePresentations.map((conf) => ListTile(
            title: Text(conf.title),
            subtitle: Text('${conf.conference}, ${conf.year}'),
          )).toList(),
        ),
      ],
    );
  }
}
