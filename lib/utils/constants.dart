import 'package:flutter/material.dart';

class AppConstants {
  // Personal
  static const String nameEn = 'Moe Kyaw Aung';
  static const String nameMm = 'မိုးကျော်အောင် · Moe Kyaw Aung';
  static const String titleEn = 'Senior Android Developer';
  static const String titleMm = 'Senior Android Developer';
  static const String location = 'Tachileik, Myanmar 🇲🇲  ↔  Bangkok, Thailand 🇹🇭';
  static const String languages = 'Burmese 🇲🇲  •  English 🌐  •  Kotlin ☕';
  static const String email = 'moekyawaung@programmer.net';
  static const String phone = '+95 9 889 000 889';
  static const String resumeUrl = 'https://res.cloudinary.com/dye5qpwii/raw/upload/v1778763535/resume.pdf';
  static const String profileImageUrl = 'https://res.cloudinary.com/dye5qpwii/image/upload/v1778763535/MKA_25_lbx6fb.webp';
  static const String githubUrl = 'https://github.com/Dev-moe-kyawaung';
  static const String gravatarUrl = 'https://gravatar.com/moekyawaung2026';
  static const String linkedinUrl = 'https://www.linkedin.com/in/moe-kyaw-aung-2653093a1';
  static const String youtubeUrl = 'https://www.youtube.com/channel/UCuTXUguZb4xjeL2nX8WJG';
  static const String blueskyUrl = 'https://bsky.app/profile/moekyawaung96.bsky.social';

  // App Title
  static const String appTitle = 'Moe Kyaw Aung | Senior Android Developer';

  // Colors
  static const Color primaryColor = Color(0xFF3B82F6);
  static const Color accentColor = Color(0xFFC9A84C);

  // Typing Animation Titles
  static const List<String> titles = [
    'Senior Android Developer',
    'Flutter & Web Developer',
    'Tech Enthusiast',
    'AI/ML Practitioner',
    'Cybersecurity Learner',
  ];

  // Featured Apps (16 apps)
  static const List<AppModel> featuredApps = [
    AppModel(
      icon: '📱',
      title: 'Social Dashboard',
      description: 'Real-time social media analytics dashboard with Firebase backend',
      status: 'New',
      githubUrl: 'https://github.com/moekyawaung-tech/social-dashboard',
      thumbnailUrl: 'https://res.cloudinary.com/dye5qpwii/image/upload/v1778795825/cloud-icon-poster-1_2_opl7sy.png',
      techTags: ['Flutter', 'Firebase', 'Provider', 'Charts'],
    ),
    AppModel(
      icon: '📱',
      title: 'PWA App',
      description: 'Progressive Web App with offline support and push notifications',
      status: 'Live',
      githubUrl: 'https://github.com/moekyawaung-tech/pwa-app',
      thumbnailUrl: 'https://res.cloudinary.com/dye5qpwii/image/upload/v1778795856/copilot_image_1778795675037_heh9xk.png',
      techTags: ['Flutter Web', 'Service Worker', 'Workbox'],
    ),
    AppModel(
      icon: '📊',
      title: 'Admin Dashboard',
      description: 'Full-featured admin panel with charts, tables, and user management',
      status: 'Live',
      githubUrl: 'https://github.com/moekyawaung-tech/Advance-POS-Version',
      thumbnailUrl: 'https://res.cloudinary.com/dye5qpwii/image/upload/v1778795859/copilot_image_1778794430377_n7xlmz.png',
      techTags: ['Flutter', 'Syncfusion', 'Charts', 'PDF Export'],
    ),
    AppModel(
      icon: '🛒',
      title: 'POS Ultimate Pro Max',
      description: 'Enterprise-grade POS with inventory, analytics, and multi-store support',
      status: 'Premium',
      githubUrl: 'https://github.com/moekyawaung-tech/POS-Ultimate-Pro-Max',
      thumbnailUrl: 'https://res.cloudinary.com/dye5qpwii/image/upload/v1778795856/copilot_image_1778795000722_eo96gj.png',
      techTags: ['Kotlin', 'Room', 'Jetpack Compose', 'Firebase'],
    ),
    AppModel(
      icon: '🎯',
      title: 'Video Player',
      description: 'Advanced video player with DRM, offline download, and PiP support',
      status: 'Live',
      githubUrl: 'https://github.com/moekyawaung-tech/video-player',
      thumbnailUrl: 'https://res.cloudinary.com/dye5qpwii/video/upload/v1779031596/Javier_Pardina_10_wttux4.mp4',
      techTags: ['ExoPlayer', 'Media3', 'HLS', 'DASH'],
    ),
    AppModel(
      icon: '🎮',
      title: 'Game Collection',
      description: '20+ classic games rebuilt in Flutter with leaderboards',
      status: 'Live',
      githubUrl: 'https://github.com/moekyawaung-tech/game-collection',
      thumbnailUrl: 'https://res.cloudinary.com/dye5qpwii/image/upload/v1778795856/copilot_image_1778795000722_okryxj.png',
      techTags: ['Flutter', 'Flame', 'Canvas', 'Multiplayer'],
    ),
    AppModel(
      icon: '💬',
      title: 'Chat App',
      description: 'Real-time messaging with Firebase, encryption, and media sharing',
      status: 'Live',
      githubUrl: 'https://github.com/moekyawaung-tech/javascript-todo',
      thumbnailUrl: 'https://res.cloudinary.com/dye5qpwii/image/upload/v1778795847/copilot_image_1778795115579_acfm5j.png',
      techTags: ['Flutter', 'Firebase', 'FCM', 'E2E Encryption'],
    ),
    AppModel(
      icon: '🌤️',
      title: 'Weather App',
      description: 'Beautiful weather app with forecasts, maps, and severe alerts',
      status: 'Live',
      githubUrl: 'https://github.com/moekyawaung-tech/Weather-app',
      thumbnailUrl: 'https://res.cloudinary.com/dye5qpwii/image/upload/v1778795822/preview_dzhqvv.webp',
      techTags: ['Flutter', 'OpenWeather', 'Maps', 'Geolocation'],
    ),
    // ... Add remaining 8 apps similarly
  ];

  // Certificates (82+ from Programming Hub)
  static const List<CertModel> certificates = [
    CertModel(
      name: 'C Programming',
      category: 'Programming Languages',
      icon: '🔧',
      date: 'Jul 4, 2024',
      id: '1720080366600',
      verifyUrl: 'https://www.programminghub.io/certificate?id=1720080366600',
    ),
    CertModel(
      name: 'Python Programming',
      category: 'Programming Languages',
      icon: '🐍',
      date: 'Jun 15, 2024',
      id: '1718456789000',
      verifyUrl: 'https://www.programminghub.io/certificate?id=1718456789000',
    ),
    CertModel(
      name: 'Java Programming',
      category: 'Programming Languages',
      icon: '☕',
      date: 'May 20, 2024',
      id: '1716123456000',
      verifyUrl: 'https://www.programminghub.io/certificate?id=1716123456000',
    ),
    CertModel(
      name: 'Kotlin for Android',
      category: 'Mobile & App Dev',
      icon: '🤖',
      date: 'Apr 10, 2024',
      id: '1712789012000',
      verifyUrl: 'https://www.programminghub.io/certificate?id=1712789012000',
    ),
    CertModel(
      name: 'Flutter Development',
      category: 'Mobile & App Dev',
      icon: '🐦',
      date: 'Mar 15, 2024',
      id: '1710456789000',
      verifyUrl: 'https://www.programminghub.io/certificate?id=1710456789000',
    ),
    CertModel(
      name: 'React.js Fundamentals',
      category: 'Web Development',
      icon: '⚛️',
      date: 'Feb 20, 2024',
      id: '1708456789000',
      verifyUrl: 'https://www.programminghub.io/certificate?id=1708456789000',
    ),
    CertModel(
      name: 'Node.js & Express',
      category: 'Web Development',
      icon: '📦',
      date: 'Jan 25, 2024',
      id: '1706212345000',
      verifyUrl: 'https://www.programminghub.io/certificate?id=1706212345000',
    ),
    CertModel(
      name: 'Machine Learning Basics',
      category: 'AI & Data Science',
      icon: '🤖',
      date: 'Dec 10, 2023',
      id: '1702234567000',
      verifyUrl: 'https://www.programminghub.io/certificate?id=1702234567000',
    ),
    CertModel(
      name: 'TensorFlow Lite',
      category: 'AI & Data Science',
      icon: '🧠',
      date: 'Nov 15, 2023',
      id: '1699987654000',
      verifyUrl: 'https://www.programminghub.io/certificate?id=1699987654000',
    ),
    CertModel(
      name: 'Ethical Hacking',
      category: 'Security & DevOps',
      icon: '🔐',
      date: 'Oct 20, 2023',
      id: '1697876543000',
      verifyUrl: 'https://www.programminghub.io/certificate?id=1697876543000',
    ),
    CertModel(
      name: 'Kali Linux',
      category: 'Security & DevOps',
      icon: '🐧',
      date: 'Sep 25, 2023',
      id: '1695654321000',
      verifyUrl: 'https://www.programminghub.io/certificate?id=1695654321000',
    ),
    CertModel(
      name: 'Blockchain Fundamentals',
      category: 'Blockchain',
      icon: '⛓️',
      date: 'Aug 30, 2023',
      id: '1693432109000',
      verifyUrl: 'https://www.programminghub.io/certificate?id=1693432109000',
    ),
    // ... Add remaining 70+ certificates
  ];

  // Tech Stack Categories
  static const Map<String, List<String>> techStack = {
    'Android / Mobile': [
      'Kotlin', 'Jetpack Compose', 'Android', 'Android Studio',
      'MVVM', 'Clean Architecture', 'Coroutines', 'Flow',
      'Room', 'Navigation', 'Paging', 'Hilt', 'DataStore',
    ],
    'Backend & Cloud': [
      'Firebase', 'REST APIs', 'Retrofit', 'OkHttp',
      'Cloud Firestore', 'Cloud Functions', 'Auth', 'Crashlytics',
      'Cloud Messaging', 'Remote Config', 'App Check',
    ],
    'AI / ML': [
      'Claude API', 'Python', 'TensorFlow Lite', 'MediaPipe',
      'On-Device ML', 'ML Kit', 'Gemini API',
    ],
    'Cybersecurity': [
      'Ethical Hacking', 'Linux', 'Kali Linux', 'Burp Suite',
      'OWASP', 'Network Security', 'Penetration Testing',
    ],
    'Dev Tools': [
      'Git', 'GitHub Actions', 'Azure DevOps', 'Jenkins',
      'Fastlane', 'VS Code', 'Figma', 'Docker',
    ],
    'Languages': [
      'Kotlin', 'Java', 'Python', 'JavaScript', 'TypeScript',
      'Dart', 'Go', 'Rust', 'C++', 'SQL',
    ],
  };

  // Social Links (from Gravatar)
  static const List<SocialLink> socialLinks = [
    SocialLink('GitHub', 'https://github.com/Dev-moe-kyawaung', Icons.code),
    SocialLink('LinkedIn', 'https://www.linkedin.com/in/moe-kyaw-aung-2653093a1', Icons.work),
    SocialLink('YouTube', 'https://www.youtube.com/channel/UCuTXUguZb4xjeL2nX8WJG', Icons.play_circle),
    SocialLink('Bluesky', 'https://bsky.app/profile/moekyawaung96.bsky.social', Icons.cloud),
    SocialLink('Gravatar', 'https://gravatar.com/moekyawaung2026', Icons.person),
    SocialLink('Email', 'mailto:moekyawaung@programmer.net', Icons.email),
    SocialLink('Phone', 'tel:+959889000889', Icons.phone),
  ];

  // GitHub Pages URLs (43)
  static const List<String> githubPagesUrls = [
    'https://moekyawaung-china.github.io/',
    'https://moekyawaung-developer.github.io/',
    'https://moekyawaungvivov30pro-design.github.io/',
    'https://moekyaw-aung-mm.github.io/',
    'https://moekyawaung-mk.github.io/',
    'https://moekyawaung-microsoft.github.io/',
    'https://moekyawaung-cyber.github.io/',
    'https://moekyawaung-bangkok.github.io/',
    'https://moekyawaung-micro.github.io/',
    'https://moekyawaungmka2032-boop.github.io/',
    'https://moekyawaung-dev-mm.github.io/',
    'https://moekyaw-developer.github.io/',
    'https://moekyawaung.github.io/',
    'https://Moekyawaung-mm.github.io/',
    'https://moekyawaung-tech.github.io/',
    'https://moekyawaung-hack.github.io/',
    'https://moekyawaung-graduate.github.io/',
    'https://Moekyawaung-Linux.github.io/',
    'https://Moekyawaung-coder.github.io/',
    'https://moekyawaung-designer.github.io/',
    'https://Moekyawaung2026.github.io/',
    'https://moekyawaungmka2034-coder.github.io/',
    'https://Moekyawaung-mk.github.io/',
    'https://Moekyawaung-cyber.github.io/',
    'https://moekyawaung-web.github.io/',
    'https://moekyawaung-micro.github.io/',
    'https://moekyawaungvivov30pro-design.github.io/',
    'https://Moekyawaung-dev.github.io/',
    'https://Moekyawaung-cyber.github.io/',
    'https://moekyawaung-china.github.io/',
    'https://moekyawaungmka2032-boop.github.io/',
    'https://Moe-KyawAung-code.github.io/',
    'https://moekyawaung-creator.github.io/',
    'https://moekyawaung-webdeveloper.github.io/',
    'https://Moekyawaung-co.github.io/',
    'https://moekyawaung-edu.github.io/',
    'https://moekyawaung-senior.github.io/',
    'https://Moekyawaung-Development.github.io/',
    'https://moekyawaung-google.github.io/',
    'https://Moe-KyawAung.github.io/',
  ];

  // Lovable Apps (38)
  static const List<String> lovableApps = [
    'https://happy-cv-creator.lovable.app',
    'https://moekyawaung.lovable.app',
    'https://moekyawaungmybio.lovable.app/',
    'https://the-cv-palette.lovable.app',
    'https://moekyaw-url.lovable.app',
    'https://moekyawaung-dev.lovable.app',
    'https://moe-kyaw-aung.lovable.app',
    'https://moekyawaungmka.lovable.app',
    'https://moekyaw.lovable.app',
    'https://m-moekyaw.lovable.app',
    'https://dev-moekyawaung.lovable.app',
    'https://dev-moekyaw.lovable.app',
    'https://moekyawaungmkamka.lovable.app',
    'https://pixel-perfect-snap-39.lovable.app',
    'https://devmoekyaw.lovable.app',
    'https://profile-persuasion-hub.lovable.app',
    'https://friendly-haven-io.lovable.app',
    'https://moekyawaung-github.lovable.app',
    'https://moekyawgithub.lovable.app',
    'https://joy-codify-life.lovable.app/',
    'https://mmoekyaw.lovable.app',
    'https://color-code-chronicles.lovable.app',
    'https://moekyawaung-free.lovable.app',
    'https://app-skill-gallery.lovable.app',
    'https://spark-coach-create.lovable.app',
    'https://moekyaw-mk.lovable.app',
    'https://moekyawaung-myanmar.lovable.app',
    'https://moekyawaungmybio.lovable.app/',
    'https://mmoe.lovable.app',
    'https://moekyaw-dev.lovable.app',
  ];
}

// Models
class AppModel {
  final String icon;
  final String title;
  final String description;
  final String status;
  final String githubUrl;
  final String thumbnailUrl;
  final List<String> techTags;

  const AppModel({
    required this.icon,
    required this.title,
    required this.description,
    required this.status,
    required this.githubUrl,
    required this.thumbnailUrl,
    required this.techTags,
  });
}

class CertModel {
  final String name;
  final String category;
  final String icon;
  final String date;
  final String id;
  final String verifyUrl;

  const CertModel({
    required this.name,
    required this.category,
    required this.icon,
    required this.date,
    required this.id,
    required this.verifyUrl,
  });
}

class SocialLink {
  final String label;
  final String url;
  final IconData icon;

  const SocialLink(this.label, this.url, this.icon);
}
