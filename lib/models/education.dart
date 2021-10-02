class Education {
  final String school;
  final String start;
  final String end;
  final String studyFocus;
  final String degree;
  final String location;

  Education(
      {this.school,
      this.start,
      this.end,
      this.studyFocus,
      this.degree,
      this.location});

  static List<Education> edu() {
    List<Education> list = [];
    list.add(Education(
      school: 'University of Benin (Uniben)',
      studyFocus: 'BSc. Computer Science',
      end: 'Aug 2017',
      start: 'Aug 2012',
      degree: 'Bachelor of Science',
      location: 'Benin City, Edo State, Nigeria',
    ));
    list.add(Education(
        school: 'Complete Computer\'s & Technology Institute',
        studyFocus: 'Software Engineering',
        end: 'Aug 2016',
        start: 'Aug 2014',
        degree: 'National Innovative Diplomat',
        location: 'Benin City, Edo State, Nigeria'));
    list.add(Education(
      school: 'Telnet Institute of Technology',
      studyFocus: 'System Automation & Design ',
      end: 'Jan 2020',
      start: 'Aug 2019',
      degree: 'ISA Certification',
      location: 'Durham, North Carolina (NC): Online',
    ));
    return list;
  }
}

class Experience {
  final String company;
  final String position;
  final String start;
  final String end;
  final String mode;

  Experience({this.company, this.position, this.start, this.end, this.mode});

  static List<Experience> exp() {
    List<Experience> list = [];
    list.add(
      Experience(
        company: 'Tech Home',
        position: 'Senior UI/UX Developer',
        start: 'Nov 17',
        end: 'Present',
        mode: 'Full Time'
      ),
    );
    list.add(
      Experience(
        company: 'Capistart',
        position: 'Frontend Developer',
        start: 'Mar 15',
        end: 'Present',
        mode: 'Remote',
      ),
    );
    list.add(
      Experience(
        company: 'O-Mobile Inc',
        position: 'Senior Software Developer',
        start: 'Jan 18',
        end: 'Mar 19',
        mode: 'Part Time',
      ),
    );
    list.add(
      Experience(
        company: 'CodeHub Ng',
        position: 'Senior Software Developer',
        start: 'Mar 17',
        end: 'Oct 19',
        mode: 'Part Time',
      ),
    );
    return list;
  }
}
