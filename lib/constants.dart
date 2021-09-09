import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
const Color kPrimaryColor = Color(0xffC0392B);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
];

final kCommunityLinks = [
  "https://www.comsats.edu.pk/",
  "https://web.facebook.com/FlutterIslamabadPakistan/",
  "https://dsc.community.dev/comsats-university-islamabad/"
];

const kSocialLinks = [
  "https://instagram.com/stephen_kachi",
  "https://twitter.com/k_steephen",
  "https://github.com/steph9600",
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Community

// Tools & Tech
final kTools = ["Flutter", "Dart", "HTML", "CSS", "Bootstrap", "WordPress"];

// services
final kServicesIcons = [
  "assets/services/app.png",
  "assets/services/wordpress.png",
  "assets/services/ui.png",
  "assets/services/rapid.png",
  "assets/services/open.png",
];

final kServicesTitles = [
  "App Development",
  "WordPress Development",
  "UI/UX Designing",
  "Prototyping",
  "Open Source - GitHub",
];

// final kServicesDescriptions = [
//   "For now, I can only develop Android Apps using Flutter, that's because I don't own a MacBook right now so can't test or debug apps for iOS. Hopefully this missing piece will be filled soon :)",
//   "Although I'm mainly a flutter developer but I do care about the UI/UX for my client. Hence, I also do UI designing for applications. So, feel free to ask me for getting you UI/UX for your apps",
//   "Having a startup idea? Or maybe just want a prototype for your clients? With Flutter I can get you basic version of your app in no time and you are good to go for your project in future.",
//   "I have been writing technical blogs on Medium for over a year now. So, I can get you technical blogs with awesome header images with interesting topics.\nMy Medium profile @mhamzadev",
//   "Working as open source contributor on GitHub with 200+ stars and numerous forks on various projects liked and shared by other developers.\nMy GitHub Profile @mhmzdev",
// ];

final kServicesDescriptions = [
  "Android app development via Flutter\n- Splash Screen\n- Firebase Auth/Cloud\n-  Maps integration and more...!",
  "WordPress Developer\n- ECommerce sites\n- Unique Site Design\n- SEO friendly\n- Fully optimized and more...!",
  "Modern UI/UX Designing\n- Adobe XD\n- Mobile & Web designs\n- Interactive UI designs\n- Responsiveness\n- Promo Videos and more..!",
  "Rapid Prototype via Flutter\n- Working MVP\n- Quick & Working prototype",
  "Open source GitHub Projects\n- Awesome README.md\n- Well documented\n- Header images and more...!",
];

final kServicesLinks = [
  "https://wa.me/+2349018400014?text=Hi%20Stephen!%20I'm%20interested%20in%20working%20with%20you.",
  "https://wa.me/+2349018400014?text=Hi%20Stephen!%20I'm%20interested%20in%20working%20with%20you.",
  "https://wa.me/+2349018400014?text=Hi%20Stephen!%20I'm%20interested%20in%20working%20with%20you.",
  "https://wa.me/+2349018400014?text=Hi%20Stephen!%20I'm%20interested%20in%20working%20with%20you.",
  "https://github.com/steph9600"
];

// projects
final kProjectsBanner = [
  "assets/projects/driver.png",
  "assets/projects/taxilogo.png",
  "assets/projects/auth.png",
  "assets/projects/shop.png",
  "assets/projects/portfolio.png",
  "assets/projects/BMI.png",
  'assets/projects/chat.png'
];

final kProjectsIcons = [
  "assets/projects/driver.png",
  "assets/projects/taxilogo.png",
  "assets/projects/auth.png",
  "assets/projects/shop.png",
  "assets/projects/portfolio.png",
  "assets/projects/BMI.png",
  'assets/projects/chat.png'
];

final kProjectsTitles = [
  "CabIt",
  "Cab it Rider App",
  "Auth App",
  "Antiques Shop",
  "Portfolio",
  "BMI App",
  "Flash Chat",
];

final kProjectsDescriptions = [
  "Prototype of ride sharing app developed using Flutter powered with Firebase as database",
  "A rider side app for the ride sharing app. Developed using Flutter. Powered with Firebase",
  "A simple authentication app that integrates, email verification and forgot password functionality",
  "UI for a furniture shop specialized in selling antiques",
  "A portfolio site that runs on mobile as well as the web. Utilizes flutter web and is highly responsive",
  "A simple app for calculating BMI",
  "A simple instant messaging app. Powered by firebase",
];

final kProjectsLinks = [
  "https://github.com/steph9600/CabIt",
  "https://github.com/steph9600/Rider-App",
  "https://github.com/steph9600/Authy",
  "https://github.com/steph9600/antiques",
  "https://github.com/steph9600/portfolio",
  "https://github.com/steph9600/Chat-App",
  "https://github.com/steph9600/BMI-Calculator",
];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Port Harcourt, Nigeria",
  "(+234) 9018400014",
  "ka.steph05@gmail.com"
];
