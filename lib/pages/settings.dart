import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star_outline,
                            color: Color.fromARGB(255, 224, 170, 6),
                            size: 40,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Todoist Pro',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text('Until Jul 8 2022'),
                            ],
                          ),
                          const SizedBox(
                            width: 143,
                          ),
                          const Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Options(
                    icon: Icons.account_circle_outlined,
                    size1: 180,
                    text: 'Account',
                  ),
                  const Options(
                    icon: Icons.settings_outlined,
                    size1: 184,
                    text: 'General',
                  ),
                  const Options(
                    icon: Icons.palette_outlined,
                    size1: 191,
                    text: 'Theme',
                  ),
                  const Options(
                    icon: Icons.grid_view,
                    size1: 175,
                    text: 'App icon',
                  ),
                  const Options(
                    icon: Icons.data_exploration_outlined,
                    size1: 148,
                    text: 'Productivity',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Options(
                    icon: Icons.alarm_outlined,
                    size1: 160,
                    text: 'Reminders',
                  ),
                  const Options(
                    icon: Icons.notifications_active_outlined,
                    size1: 142,
                    text: 'Notifications',
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Options(
                    icon: Icons.mic_sharp,
                    size1: 222,
                    text: 'Siri',
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Options(
                    icon: Icons.help_outline,
                    size1: 105,
                    text: 'Help & Feedback',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Options extends StatelessWidget {
  final icon;
  final double size1;
  final text;
  const Options({
    Key? key,
    required this.icon,
    required this.size1,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
        child: Row(
          children: [
            Icon(
              icon,
              color: const Color.fromARGB(255, 192, 79, 65),
              size: 32,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: size1,
            ),
            const Icon(
              Icons.arrow_forward_ios,
            )
          ],
        ),
      ),
    );
  }
}
