class NavigationItem {

  String title;

  NavigationItem(this.title);

}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem("Jobs"),
    NavigationItem("Applications"),
  ];
}

class Application {

  String position;
  String company;
  String status;
  String price;
  String logo;

  Application(this.position, this.company, this.status, this.price, this.logo);

}

List<Application> getApplications(){
  return <Application>[
    Application("Flutter UI / UX Designer", "Nike Inc.", "Delivered", "40", "assets/images/nike.jpg"),
    Application("Product Designer", "Google LLC", "Opened", "60", "assets/images/google.jpg"),
    Application("UI / UX Designer", "Uber Technologies Inc.", "Cancelled", "55", "assets/images/uber.jpg"),
    Application("Lead UI / UX Designer", "Apple Inc.", "Delivered", "80", "assets/images/apple.jpg"),
    Application("Flutter UI Designer", "Amazon Inc.", "Not selected", "60", "assets/images/amazone.jpg"),
  ];
}

class Job {

  String position;
  String company;
  String price;
  String concept;
  String logo;
  String city;

  Job(this.position, this.company, this.price, this.concept, this.logo, this.city);

}

List<Job> getJobs(){
  return <Job>[
    Job("Flutter UI/UX", "Nike Inc.", "40", "Full-Time", "assets/images/nike.jpg", "San Francisco, California"),
    Job("Product Designer", "Google LLC", "60", "Part-Time", "assets/images/google.jpg", "San Francisco, California"),
    Job("UI / UX Designer", "Uber Technologies Inc.", "55", "Full-Time", "assets/images/uber.jpg", "San Francisco, California"),
    Job("Lead UI/UX Designer", "Apple Inc.", "80", "Part-Time", "assets/images/apple.jpg", "San Francisco, California"),
    Job("Flutter Developer", "Amazon Inc.", "60", "Full-Time", "assets/images/amazone.jpg", "San Francisco, California"),
  ];
}

List<String> getJobsRequirements(){
  return <String>[
    "Exceptional communication skills and team-working skills",
    "Know the principles of animation and you can create high fidelity prototypes",
    "Direct experience using Adobe Premiere, Adobe After Effects & other tools used to create videos, animations, etc.",
    "Good UI/UX knowledge",
  ];
}