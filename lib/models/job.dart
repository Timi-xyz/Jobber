class Job {
  final String company;
  final String image;
  final String position;
  final String range;
  final String location;
  final bool isSaved;
  final String type;
  final String time;
  final String requirement;

  Job(
      {this.company,
      this.image,
      this.position,
      this.range,
      this.location,
      this.isSaved,
      this.type,
      this.time,
      this.requirement});

  static List<Job> jobs() {
    String iconPath(String icon) => 'assets/images/$icon';
    List<Job> list = [];
    list.add(Job(
        image: iconPath('duckgo.png'),
        time: '2 min ago',
        type: 'Part Time',
        company: 'Duck Go',
        isSaved: false,
        location: 'Paoli, Pennsylvania',
        position: 'Visual Designer',
        range: '\$74,000/ Yr',
        requirement: ''));
    list.add(Job(
        image: iconPath('amdr.png'),
        time: '2 hrs ago',
        type: 'Full Time',
        company: 'AMD',
        isSaved: true,
        location: 'Santa Clara, California',
        position: 'Information Technology Manager',
        range: '\$127,640/ yr',
        requirement: ''));
    list.add(Job(
        image: iconPath('apple.png'),
        time: '2 days ago',
        type: 'Remote',
        company: 'Apple',
        isSaved: true,
        location: 'Mountain View, California',
        position: 'Product/Packaging Designer',
        range: '\$47,000/ yr',
        requirement: ''));
    list.add(Job(
        image: iconPath('design.png'),
        time: 'now',
        type: 'Full Time',
        company: 'Design Works',
        isSaved: false,
        location: 'Remote',
        position: 'Web Developer/Designer',
        range: '\$65,000/ yr',
        requirement: ''));
    list.add(Job(
        image: iconPath('dribble.webp'),
        time: '10 hrs ago',
        type: 'Remote',
        company: 'Dribbble',
        isSaved: true,
        location: 'Corporate Center Dr, Newbury Park',
        position: 'Senior UI/UX Designer',
        range: '\$89,000/ Yr',
        requirement: ''));
    list.add(Job(
        image: iconPath('freepick.png'),
        time: '4 days ago',
        type: 'Part Time',
        company: 'Freepik',
        isSaved: true,
        location: 'Málaga, Spain',
        position: 'Network and Systems Admin',
        range: '\$75,790/ yr',
        requirement: ''));
    list.add(Job(
        image: iconPath('google.png'),
        time: '9 days ago',
        type: 'Full Time',
        company: 'Google',
        isSaved: false,
        location: 'Mountain View, California',
        position: 'Senior Data Structure Analyst',
        range: '\$110,000/ Yr',
        requirement: ''));
    list.add(Job(
        image: iconPath('ibm.png'),
        time: '30 min ago',
        type: 'Part Time',
        company: 'IBM',
        isSaved: true,
        location: 'Armonk Hamlet, New York',
        position: 'Computer Systems Analyst',
        range: '\$150,500 / Yr',
        requirement: ''));
    list.add(Job(
        image: iconPath('intel.png'),
        time: '1 week ago',
        type: 'Full Time',
        company: 'Intel',
        isSaved: true,
        location: ' Santa Clara, California',
        position: 'Sales Engineer',
        range: '\$96,340/ yr',
        requirement: ''));
    list.add(Job(
        image: iconPath('nike.png'),
        time: '2 mth ago',
        type: 'Remote',
        company: 'Nike',
        isSaved: false,
        location: 'Beaverton, Oregon',
        position: 'Product/Packaging Designer',
        range: '\$50,000/ yr',
        requirement: ''));
    list.add(Job(
        image: iconPath('nvidia.png'),
        time: '5 weeks ago',
        type: 'Remote',
        company: 'Nvidia',
        isSaved: true,
        location: 'Santa Clara, California',
        position: 'Computer Research Scientist',
        range: '\$108,360/ yr',
        requirement: ''));
    return list;
  }
}
