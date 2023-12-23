import 'package:card_actions/card_action_button.dart';
import 'package:card_actions/card_actions.dart';
import 'package:flutter/material.dart';

class ProjectCardActionWidget extends StatelessWidget {
  const ProjectCardActionWidget({
    required this.projectName,
    super.key,
  });

  final String projectName;

  @override
  Widget build(BuildContext context) {
    return CardActions(
      buttonsCursor: SystemMouseCursors.click,
      backgroundColor: const Color(0xffff7270),
      axisDirection: CardActionAxis.bottom,
      borderRadius: 15,
      width: 600,
      height: 420,
      actions: [
        CardActionButton(
          icon: const Icon(
            Icons.link,
            color: Colors.white,
            size: 30,
          ),
          label: 'Link',
          onPress: () {},
        ),
        CardActionButton(
          icon: const Icon(
            Icons.info_outline,
            color: Colors.white,
            size: 30,
          ),
          label: 'Info',
          onPress: () {},
        ),
        CardActionButton(
          icon: const Icon(
            Icons.code,
            color: Colors.white,
            size: 30,
          ),
          label: 'Code',
          onPress: () {},
        ),
      ],
      child: ProjectCard(
        projectName: projectName,
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    required this.projectName,
    super.key,
  });

  final String projectName;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 51, 49, 49),
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(10, 10),
            blurRadius: 20,
            // spreadRadius: 20,
          )
        ],
      ),
      child: Text(
        projectName,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
