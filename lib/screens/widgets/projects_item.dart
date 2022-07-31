import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro/src/models/projects_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectItem extends StatefulWidget {
  ProjectItem({
    Key? key,
    required this.projectModel,
  }) : super(key: key);
  ProjectModel projectModel;
  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Colors.indigo,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/projects.png",
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  widget.projectModel.projectName,
                  style: GoogleFonts.firaSans(
                    color: Colors.indigo.shade400,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/calendar.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'START',
                  style: GoogleFonts.firaSans(
                    color: Colors.indigo.shade500,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Flexible(
                  child: Text(
                    widget.projectModel.startAt,
                    style: GoogleFonts.firaSans(
                      color: Colors.orange.shade500,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'END',
                  style: GoogleFonts.firaSans(
                    color: Colors.indigo.shade500,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    widget.projectModel.endAt,
                    style: GoogleFonts.firaSans(
                      color: Colors.orange.shade500,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () async {
                  await launch(widget.projectModel.link);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/links.png",
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      'visit',
                      style: GoogleFonts.firaSans(
                        color: Colors.indigo.shade500,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () async {
                  await launch(widget.projectModel.sourceCode);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/code.png",
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      'source code',
                      style: GoogleFonts.firaSans(
                        color: Colors.indigo.shade500,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/report.png",
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Report this ?',
                      style: GoogleFonts.firaSans(
                        color: Colors.indigo.shade500,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
