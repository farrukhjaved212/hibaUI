import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const DesignerPortfolioApp());
}

// ============================================================
// APP
// ============================================================

class DesignerPortfolioApp extends StatefulWidget {
  const DesignerPortfolioApp({super.key});

  @override
  State<DesignerPortfolioApp> createState() => _DesignerPortfolioAppState();
}

class _DesignerPortfolioAppState extends State<DesignerPortfolioApp> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hiba Gul | UI/UX Designer',
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      home: DesignerHome(
        darkMode: darkMode,
        onThemeChanged: (value) {
          setState(() {
            darkMode = value;
          });
        },
      ),
    );
  }
}

// ============================================================
// COLORS
// ============================================================

class AppColors {
  static const purple = Color(0xFF7657FF);
  static const purpleLight = Color(0xFF9C89FF);
  static const pink = Color(0xFFFF72AE);
  static const cyan = Color(0xFF35D6D0);

  static const lightBackground = Color(0xFFF8F7FC);
  static const lightCard = Colors.white;
  static const lightText = Color(0xFF17151F);
  static const lightMuted = Color(0xFF777482);

  static const darkBackground = Color(0xFF0D0B13);
  static const darkCard = Color(0xFF17141F);
  static const darkText = Color(0xFFF7F5FA);
  static const darkMuted = Color(0xFFA9A5B2);
}

// ============================================================
// THEME
// ============================================================

class AppTheme {
  static ThemeData light() {
    final base = ThemeData.light();

    return base.copyWith(
      scaffoldBackgroundColor: AppColors.lightBackground,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.purple,
        brightness: Brightness.light,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(base.textTheme),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }

  static ThemeData dark() {
    final base = ThemeData.dark();

    return base.copyWith(
      scaffoldBackgroundColor: AppColors.darkBackground,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.purple,
        brightness: Brightness.dark,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(base.textTheme),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}

// ============================================================
// PORTFOLIO DATA
// ============================================================

class PortfolioData {
  static const String name = 'Hiba Gul';

  static const String role = 'UI/UX Designer';

  static const String subtitle =
      'I design digital experiences that are simple, beautiful, and meaningful.';

  static const String location = 'Karachi, Pakistan';

  static const String about =
      'I am a UI/UX designer focused on creating clean, modern, and user-friendly digital experiences. I use Figma to transform ideas into thoughtful interfaces with strong visual hierarchy, intuitive navigation, and consistent design systems.';

  static const skills = [
    'UI Design',
    'UX Design',
    'Figma',
    'Wireframing',
    'Prototyping',
    'Design Systems',
    'Mobile App Design',
    'Web Design',
    'User Research',
    'Responsive Design',
  ];

  static const tools = [
    'Figma',
    'FigJam',
    'Adobe XD',
    'Photoshop',
    'Illustrator',
  ];

  static const services = [
    ServiceItem(
      title: 'Mobile App Design',
      description:
          'Modern mobile interfaces designed around usability, clarity, and smooth user flows.',
      icon: Icons.phone_android_rounded,
    ),
    ServiceItem(
      title: 'Web Design',
      description:
          'Clean and responsive website designs with strong hierarchy and engaging visual experiences.',
      icon: Icons.language_rounded,
    ),
    ServiceItem(
      title: 'UI/UX Design',
      description:
          'End-to-end UI/UX design from wireframes and user flows to polished prototypes.',
      icon: Icons.design_services_rounded,
    ),
  ];

  static const experience = [
    ExperienceItem(
      period: '2024 — Present',
      title: 'UI/UX Designer',
      company: 'Freelance',
      description:
          'Designing mobile applications, websites, dashboards, and digital products using Figma.',
    ),
    ExperienceItem(
      period: '2023 — 2024',
      title: 'UI/UX Design Projects',
      company: 'Independent Projects',
      description:
          'Created multiple mobile and web interfaces with a focus on usability, visual consistency, and modern design patterns.',
    ),
  ];

  static const projects = [
    Project(
      title: 'App Education UI',
      category: 'Mobile App Design',
      description:
          'A modern education mobile app interface designed to create a simple, engaging, and easy-to-navigate learning experience for students.',
      tags: [
        'UI/UX',
        'Figma',
        'Mobile App',
      ],
      gradient: [
        AppColors.purple,
        AppColors.pink,
      ],
      icon: Icons.school_rounded,
      figmaUrl:
          'https://www.figma.com/design/6352jS36W9PAQKBTqUTZpa/App-Education-UI--Community-?node-id=0-1&p=f',
    ),
    Project(
      title: 'Stellar School Mobile App',
      category: 'Education App UI Kit',
      description:
          'A complete school mobile app UI system focused on clean layouts, intuitive navigation, student-focused experiences, and consistent visual design.',
      tags: [
        'UI/UX',
        'Figma',
        'Education',
      ],
      gradient: [
        AppColors.cyan,
        AppColors.purple,
      ],
      icon: Icons.menu_book_rounded,
      figmaUrl:
          'https://www.figma.com/design/HHBrw85oYOiLOGSKKbwBSW/Stellar-School-Mobile-App-UI-Kit--Community-?node-id=0-1&p=f',
    ),
    Project(
      title: 'Website Page Design',
      category: 'Web Design',
      description:
          'A modern website interface designed with strong visual hierarchy, balanced spacing, responsive layouts, and a clean user experience.',
      tags: [
        'Web UI',
        'UI/UX',
        'Figma',
      ],
      gradient: [
        AppColors.pink,
        AppColors.purple,
      ],
      icon: Icons.language_rounded,
      figmaUrl:
          'https://www.figma.com/design/D8JB38dgz4xL10iL0B3kiI/Website-page--Community-?node-id=0-1&p=f',
    ),
    Project(
      title: 'SoftPOS',
      category: 'Fintech App Design',
      description:
          'A modern SoftPOS interface designed for digital payment experiences, focusing on clarity, usability, transaction flows, and a professional fintech visual language.',
      tags: [
        'UI/UX',
        'Fintech',
        'Figma',
      ],
      gradient: [
        AppColors.cyan,
        AppColors.pink,
      ],
      icon: Icons.point_of_sale_rounded,
      figmaUrl:
          'https://www.figma.com/design/iVAfIioLgzkfw86ZKM7NVm/SoftPos--Community-?node-id=0-1&p=f',
    ),
  ];
}

// ============================================================
// MODELS
// ============================================================

class Project {
  final String title;
  final String category;
  final String description;
  final List<String> tags;
  final List<Color> gradient;
  final IconData icon;
  final String figmaUrl;

  const Project({
    required this.title,
    required this.category,
    required this.description,
    required this.tags,
    required this.gradient,
    required this.icon,
    required this.figmaUrl,
  });
}

class ServiceItem {
  final String title;
  final String description;
  final IconData icon;

  const ServiceItem({
    required this.title,
    required this.description,
    required this.icon,
  });
}

class ExperienceItem {
  final String period;
  final String title;
  final String company;
  final String description;

  const ExperienceItem({
    required this.period,
    required this.title,
    required this.company,
    required this.description,
  });
}

// ============================================================
// HOME
// ============================================================

class DesignerHome extends StatefulWidget {
  final bool darkMode;
  final ValueChanged<bool> onThemeChanged;

  const DesignerHome({
    super.key,
    required this.darkMode,
    required this.onThemeChanged,
  });

  @override
  State<DesignerHome> createState() => _DesignerHomeState();
}

class _DesignerHomeState extends State<DesignerHome> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey workKey = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollTo(GlobalKey key) {
    final context = key.currentContext;

    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  Future<void> _openEmail() async {
    const email = 'your.email@example.com';

    final gmailUri = Uri.parse(
      'googlegmail://co?to=$email&subject=UI/UX Design Project',
    );

    final mailUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {
        'subject': 'UI/UX Design Project',
        'body':
            'Hello Hiba,\n\nI would like to discuss a UI/UX design project with you.',
      },
    );

    try {
      if (await canLaunchUrl(gmailUri)) {
        await launchUrl(gmailUri);
        return;
      }

      if (await canLaunchUrl(mailUri)) {
        await launchUrl(mailUri);
        return;
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'No email application is available on this device.',
            ),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Unable to open email application.',
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: _HeroSection(
              darkMode: widget.darkMode,
              onThemeChanged: widget.onThemeChanged,
              onViewWork: () => _scrollTo(workKey),
              onContact: () => _scrollTo(contactKey),
              onAbout: () => _scrollTo(aboutKey),
              onWork: () => _scrollTo(workKey),
              onServices: () => _scrollTo(servicesKey),
              onContactNav: () => _scrollTo(contactKey),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              key: aboutKey,
              child: const _AboutSection(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              key: workKey,
              child: const _ProjectsSection(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              key: servicesKey,
              child: const _ServicesSection(),
            ),
          ),
          const SliverToBoxAdapter(
            child: _SkillsSection(),
          ),
          const SliverToBoxAdapter(
            child: _ExperienceSection(),
          ),
          SliverToBoxAdapter(
            child: Container(
              key: contactKey,
              child: _ContactSection(
                onContact: _openEmail,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: _Footer(),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// HERO
// ============================================================

class _HeroSection extends StatelessWidget {
  final bool darkMode;
  final ValueChanged<bool> onThemeChanged;

  final VoidCallback onViewWork;
  final VoidCallback onContact;
  final VoidCallback onAbout;
  final VoidCallback onWork;
  final VoidCallback onServices;
  final VoidCallback onContactNav;

  const _HeroSection({
    required this.darkMode,
    required this.onThemeChanged,
    required this.onViewWork,
    required this.onContact,
    required this.onAbout,
    required this.onWork,
    required this.onServices,
    required this.onContactNav,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return _SectionContainer(
      child: Column(
        children: [
          const SizedBox(height: 24),
          Row(
            children: [
              const Text(
                'HIBA.',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2,
                ),
              ),
              const Spacer(),
              if (MediaQuery.sizeOf(context).width > 650)
                Row(
                  children: [
                    _NavText(
                      text: 'About',
                      onTap: onAbout,
                    ),
                    _NavText(
                      text: 'Work',
                      onTap: onWork,
                    ),
                    _NavText(
                      text: 'Services',
                      onTap: onServices,
                    ),
                    _NavText(
                      text: 'Contact',
                      onTap: onContactNav,
                    ),
                  ],
                ),
              const SizedBox(width: 12),
              Container(
                decoration: BoxDecoration(
                  color: isDark
                      ? Colors.white.withValues(alpha: .08)
                      : Colors.black.withValues(alpha: .05),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: IconButton(
                  onPressed: () {
                    onThemeChanged(!darkMode);
                  },
                  icon: Icon(
                    darkMode
                        ? Icons.light_mode_rounded
                        : Icons.dark_mode_rounded,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 70),
          LayoutBuilder(
            builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 760;

              if (isMobile) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _HeroText(
                      darkMode: darkMode,
                      onViewWork: onViewWork,
                      onContact: onContact,
                    ),
                    const SizedBox(height: 45),
                    const _ProfileCard(),
                  ],
                );
              }

              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 6,
                    child: _HeroText(
                      darkMode: darkMode,
                      onViewWork: onViewWork,
                      onContact: onContact,
                    ),
                  ),
                  const SizedBox(width: 60),
                  const Expanded(
                    flex: 4,
                    child: _ProfileCard(),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}

// ============================================================
// PROFILE CARD
// ============================================================

class _ProfileCard extends StatelessWidget {
  const _ProfileCard();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      constraints: const BoxConstraints(
        maxWidth: 360,
      ),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          color: theme.dividerColor.withValues(alpha: .5),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 40,
            offset: const Offset(0, 20),
            color: AppColors.purple.withValues(alpha: .12),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                colors: [
                  AppColors.purple,
                  AppColors.pink,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.purple.withValues(alpha: .3),
                  blurRadius: 30,
                ),
              ],
            ),
            child: const Center(
              child: Text(
                'HG',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            PortfolioData.name,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            PortfolioData.role,
            style: TextStyle(
              color: AppColors.purple,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Figma Designer',
            style: TextStyle(
              color: AppColors.pink,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                PortfolioData.location,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.textTheme.bodyMedium?.color?.withValues(
                    alpha: .6,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HeroText extends StatelessWidget {
  final bool darkMode;
  final VoidCallback onViewWork;
  final VoidCallback onContact;

  const _HeroText({
    required this.darkMode,
    required this.onViewWork,
    required this.onContact,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: AppColors.purple.withValues(alpha: .1),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: AppColors.purple.withValues(alpha: .2),
            ),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.circle,
                size: 8,
                color: Colors.green,
              ),
              SizedBox(width: 8),
              Text(
                'AVAILABLE FOR PROJECTS',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                  color: AppColors.purple,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 28),
        Text(
          'Designing digital\nexperiences that feel right.',
          style: theme.textTheme.displaySmall?.copyWith(
            fontWeight: FontWeight.w800,
            height: 1.08,
            fontSize: 52,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          PortfolioData.subtitle,
          style: theme.textTheme.titleMedium?.copyWith(
            color: theme.textTheme.bodyMedium?.color?.withValues(
              alpha: .65,
            ),
            height: 1.7,
          ),
        ),
        const SizedBox(height: 32),
        Wrap(
          spacing: 14,
          runSpacing: 12,
          children: [
            _PrimaryButton(
              label: 'View My Work',
              icon: Icons.arrow_downward_rounded,
              onPressed: onViewWork,
            ),
            _OutlineButton(
              label: 'Contact Me',
              icon: Icons.arrow_outward_rounded,
              onPressed: onContact,
            ),
          ],
        ),
        const SizedBox(height: 40),
        const Row(
          children: [
            _StatItem(
              number: '15+',
              label: 'Design Skills',
            ),
            SizedBox(width: 30),
            _StatItem(
              number: '100%',
              label: 'Passion',
            ),
            SizedBox(width: 30),
            _StatItem(
              number: '2+',
              label: 'Years Learning',
            ),
          ],
        ),
      ],
    );
  }
}
// ============================================================
// ABOUT
// ============================================================

class _AboutSection extends StatelessWidget {
  const _AboutSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return _SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionLabel(
            label: 'ABOUT ME',
          ),
          const SizedBox(height: 18),
          LayoutBuilder(
            builder: (context, constraints) {
              final mobile = constraints.maxWidth < 700;

              if (mobile) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Creating interfaces\npeople enjoy using.',
                      style: theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        height: 1.15,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      PortfolioData.about,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        height: 1.8,
                        color: theme.textTheme.bodyMedium?.color
                            ?.withValues(alpha: .7),
                      ),
                    ),
                  ],
                );
              }

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Creating interfaces\npeople enjoy using.',
                      style: theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        height: 1.15,
                      ),
                    ),
                  ),
                  const SizedBox(width: 70),
                  Expanded(
                    child: Text(
                      PortfolioData.about,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        height: 1.8,
                        color: theme.textTheme.bodyMedium?.color
                            ?.withValues(alpha: .7),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 70),
        ],
      ),
    );
  }
}

// ============================================================
// PROJECTS
// ============================================================

class _ProjectsSection extends StatelessWidget {
  const _ProjectsSection();

  Future<void> _openFigma(String url) async {
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return _SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionLabel(
            label: 'SELECTED WORK',
          ),
          const SizedBox(height: 18),
          Text(
            'A collection of interfaces and digital experiences I have designed in Figma.',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.color
                      ?.withValues(alpha: .65),
                ),
          ),
          const SizedBox(height: 35),
          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;

              int columns = 1;

              if (width >= 1000) {
                columns = 2;
              }

              final cardWidth = columns == 1 ? width : (width - 24) / 2;

              return Wrap(
                spacing: 24,
                runSpacing: 24,
                children: PortfolioData.projects.map(
                  (project) {
                    return SizedBox(
                      width: cardWidth,
                      child: _ProjectCard(
                        project: project,
                        onPressed: () {
                          _openFigma(project.figmaUrl);
                        },
                      ),
                    );
                  },
                ).toList(),
              );
            },
          ),
          const SizedBox(height: 90),
        ],
      ),
    );
  }
}

// ============================================================
// PROJECT CARD
// ============================================================

class _ProjectCard extends StatelessWidget {
  final Project project;
  final VoidCallback onPressed;

  const _ProjectCard({
    required this.project,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: theme.dividerColor.withValues(alpha: .5),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 30,
            offset: const Offset(0, 12),
            color: Colors.black.withValues(alpha: .05),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // PROJECT PREVIEW
          Container(
            height: 230,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: project.gradient,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: -70,
                  right: -40,
                  child: Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withValues(alpha: .1),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -90,
                  left: -50,
                  child: Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withValues(alpha: .08),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .18),
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: .3),
                      ),
                    ),
                    child: Icon(
                      project.icon,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.category.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.3,
                    color: AppColors.purple,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  project.title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  project.description,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    height: 1.7,
                    color: theme.textTheme.bodyMedium?.color
                        ?.withValues(alpha: .65),
                  ),
                ),
                const SizedBox(height: 18),
                Wrap(
                  spacing: 7,
                  runSpacing: 7,
                  children: project.tags.map(
                    (tag) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 11,
                          vertical: 7,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.purple.withValues(alpha: .08),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          tag,
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: AppColors.purple,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
                const SizedBox(height: 22),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.open_in_new_rounded,
                      size: 17,
                    ),
                    label: const Text('View Figma Design'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.purple,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// SERVICES
// ============================================================

class _ServicesSection extends StatelessWidget {
  const _ServicesSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return _SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionLabel(
            label: 'WHAT I DO',
          ),
          const SizedBox(height: 18),
          Text(
            'Designing products from idea to interface.',
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 35),
          LayoutBuilder(
            builder: (context, constraints) {
              final mobile = constraints.maxWidth < 800;

              if (mobile) {
                return Column(
                  children: PortfolioData.services
                      .map(
                        (service) => Padding(
                          padding: const EdgeInsets.only(
                            bottom: 18,
                          ),
                          child: _ServiceCard(
                            service: service,
                          ),
                        ),
                      )
                      .toList(),
                );
              }

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: PortfolioData.services
                    .map(
                      (service) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 16,
                          ),
                          child: _ServiceCard(
                            service: service,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              );
            },
          ),
          const SizedBox(height: 90),
        ],
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final ServiceItem service;

  const _ServiceCard({
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: theme.dividerColor.withValues(alpha: .5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: AppColors.purple.withValues(alpha: .1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              Icons.design_services_rounded,
              color: AppColors.purple,
            ),
          ),
          const SizedBox(height: 22),
          Text(
            service.title,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            service.description,
            style: theme.textTheme.bodyMedium?.copyWith(
              height: 1.7,
              color: theme.textTheme.bodyMedium?.color?.withValues(alpha: .65),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// SKILLS
// ============================================================

class _SkillsSection extends StatelessWidget {
  const _SkillsSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return _SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionLabel(
            label: 'SKILLS & TOOLS',
          ),
          const SizedBox(height: 18),
          Text(
            'Tools I use to bring ideas to life.',
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: PortfolioData.skills.map(
              (skill) {
                return _SkillChip(
                  label: skill,
                );
              },
            ).toList(),
          ),
          const SizedBox(height: 28),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: PortfolioData.tools.map(
              (tool) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: theme.cardColor,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: theme.dividerColor.withValues(alpha: .5),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.check_circle_rounded,
                        size: 17,
                        color: AppColors.purple,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        tool,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ).toList(),
          ),
          const SizedBox(height: 90),
        ],
      ),
    );
  }
}

class _SkillChip extends StatelessWidget {
  final String label;

  const _SkillChip({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.purple.withValues(alpha: .1),
            AppColors.pink.withValues(alpha: .08),
          ],
        ),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColors.purple.withValues(alpha: .12),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: AppColors.purple,
        ),
      ),
    );
  }
}

// ============================================================
// EXPERIENCE
// ============================================================

class _ExperienceSection extends StatelessWidget {
  const _ExperienceSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return _SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionLabel(
            label: 'EXPERIENCE',
          ),
          const SizedBox(height: 18),
          Text(
            'My design journey.',
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 35),
          ...PortfolioData.experience.map(
            (experience) {
              return Padding(
                padding: const EdgeInsets.only(
                  bottom: 22,
                ),
                child: _ExperienceCard(
                  experience: experience,
                ),
              );
            },
          ),
          const SizedBox(height: 65),
        ],
      ),
    );
  }
}

class _ExperienceCard extends StatelessWidget {
  final ExperienceItem experience;

  const _ExperienceCard({
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: theme.dividerColor.withValues(alpha: .5),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 12,
            height: 12,
            margin: const EdgeInsets.only(
              top: 7,
            ),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.purple,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experience.period,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: AppColors.purple,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  experience.title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  experience.company,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  experience.description,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    height: 1.7,
                    color: theme.textTheme.bodyMedium?.color
                        ?.withValues(alpha: .65),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// CONTACT
// ============================================================

class _ContactSection extends StatelessWidget {
  final VoidCallback onContact;

  const _ContactSection({
    required this.onContact,
  });

  @override
  Widget build(BuildContext context) {
    return _SectionContainer(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 55,
        ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.purple,
              AppColors.pink,
            ],
          ),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          children: [
            const Text(
              'LET’S WORK TOGETHER',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w800,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'Have a design idea?\nLet’s make it happen.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                height: 1.15,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'I am available for UI/UX design, mobile app, and web design projects.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.6,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: onContact,
              icon: const Icon(
                Icons.mail_outline_rounded,
              ),
              label: const Text(
                'Contact Me',
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: AppColors.purple,
                elevation: 0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ============================================================
// FOOTER
// ============================================================

class _Footer extends StatelessWidget {
  const _Footer();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return _SectionContainer(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 35,
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'HIBA.',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2,
                  ),
                ),
                const Spacer(),
                Text(
                  'UI/UX Designer',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.textTheme.bodyMedium?.color
                        ?.withValues(alpha: .6),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            Divider(
              color: theme.dividerColor.withValues(alpha: .5),
            ),
            const SizedBox(height: 18),
            Text(
              '© ${DateTime.now().year} Hiba Gul. All rights reserved.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.textTheme.bodyMedium?.color?.withValues(alpha: .5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// REUSABLE WIDGETS
// ============================================================

class _SectionContainer extends StatelessWidget {
  final Widget child;

  const _SectionContainer({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1150,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: child,
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String label;

  const _SectionLabel({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 28,
          height: 2,
          decoration: BoxDecoration(
            color: AppColors.purple,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.8,
            color: AppColors.purple,
          ),
        ),
      ],
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  const _PrimaryButton({
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 18,
      ),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.purple,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}

class _OutlineButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  const _OutlineButton({
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 18,
      ),
      label: Text(label),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        side: BorderSide(
          color: Theme.of(context).dividerColor,
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String number;
  final String label;

  const _StatItem({
    required this.number,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: AppColors.purple,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.color
                ?.withValues(alpha: .55),
          ),
        ),
      ],
    );
  }
}

class _NavText extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const _NavText({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyMedium?.color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
