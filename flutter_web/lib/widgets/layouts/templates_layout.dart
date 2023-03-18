import 'package:flutter/material.dart';
import 'package:flutter_web/models/template_type.dart';
import 'package:flutter_web/pages/create_featured_article.dart';
import 'package:flutter_web/widgets/cards/template_card.dart';

import '../navigation/nab_bar.dart';

class TemplatesLayout extends StatefulWidget {

  @override 
  State<TemplatesLayout> createState() => _TemplatesLayoutState();
}


class _TemplatesLayoutState extends State<TemplatesLayout> {

  int selectedTab = 0;

  List<List<TemplateType>> templatesData = [
    [ // 0
      TemplateType(tabName: "Website", templateName: "Home Page", templateDisc: "Develop a compelling and engaging copy for the Home page that clearly communicates the business's mission and value proposition."),
      TemplateType(tabName: "Website", templateName: "About Us Page", templateDisc: "Create an About Us page that provides background information about the company and its team members, highlighting their expertise and experience."),
      TemplateType(tabName: "Website", templateName: "Product Descriptions", templateDisc: "Write product or service descriptions that are informative and persuasive, highlighting key features and benefits."),
      TemplateType(tabName: "Website", templateName: "Landing Page", templateDisc: "Develop a Landing page copy that targets specific audiences and encourages them to take a desired action, such as signing up for a newsletter or purchasing a product."),
      TemplateType(tabName: "Website", templateName: "FAQs Page", templateDisc: "Write FAQ page copy that answers common questions and addresses concerns that potential customers may have."),
      TemplateType(tabName: "Website", templateName: "Terms and Conditions", templateDisc: "Create Terms and Conditions page copy that outlines the terms of use for the website and the company's policies."),
      TemplateType(tabName: "Website", templateName: "Privacy Policy Page", templateDisc: "Develop a Privacy Policy page copy that explains how the company collects, uses, and protects customer data."),
    ],
    [ // 1
      TemplateType(tabName: "Social Media", templateName: "Twitter Post", templateDisc: "Write Twitter posts that engage followers and encourage retweets and likes"),
      TemplateType(tabName: "Social Media", templateName: "Facebook Post", templateDisc: "Create Facebook posts that generate engagement and drive traffic to the company's website"),
      TemplateType(tabName: "Social Media", templateName: "Instagram Caption", templateDisc: "Craft Instagram captions that capture the essence of the company's brand and message"),
      TemplateType(tabName: "Social Media", templateName: "LinkedIn Post", templateDisc: "Write LinkedIn posts that showcase the company's expertise and thought leadership in the industry."),
      TemplateType(tabName: "Social Media", templateName: "TikTok Video Script", templateDisc: "Develop TikTok video scripts that showcase the company's products or services in a creative and engaging way"),
      TemplateType(tabName: "Social Media", templateName: "YouTube Video Script", templateDisc: "Create YouTube video scripts that educate viewers on the company's products or services"),
      TemplateType(tabName: "Social Media", templateName: "Blog Post", templateDisc: "Write blog post teasers that entice readers to click through and read the full post")
    ],
    [ // 2
      TemplateType(tabName: "Technical", templateName: "User manuals", templateDisc: "Create user manuals that provide step-by-step instructions on how to use the company's products or services"),
      TemplateType(tabName: "Technical", templateName: "Technical Documentation", templateDisc: "Write technical documentation that explains complex concepts or processes in a clear and concise manner"),
      TemplateType(tabName: "Technical", templateName: "How-to guides", templateDisc: "Develop how-to guides that provide practical advice on specific topics related to the company's offerings"),
      TemplateType(tabName: "Technical", templateName: "Tutorials", templateDisc: "Create tutorials that teach users how to perform a specific task or achieve a particular goal"),
      TemplateType(tabName: "Technical", templateName: "Installation guides", templateDisc: "Write installation guides that provide instructions on how to install and set up the company's products or services"),
      TemplateType(tabName: "Technical", templateName: "Release Notes", templateDisc: "Develop release notes that explain the changes and improvements made to the company's offerings with each new release"),
    ], [ // 3
      TemplateType(tabName: "Creative", templateName: "Novel", templateDisc: "Create user manuals that provide step-by-step instructions on how to use the company's products or services"),
      TemplateType(tabName: "Creative", templateName: "Short Story", templateDisc: "Create user manuals that provide step-by-step instructions on how to use the company's products or services"),
      TemplateType(tabName: "Creative", templateName: "Poetry", templateDisc: "Create user manuals that provide step-by-step instructions on how to use the company's products or services"),
      TemplateType(tabName: "Creative", templateName: "Screenplays", templateDisc: "Create user manuals that provide step-by-step instructions on how to use the company's products or services"),
      TemplateType(tabName: "Creative", templateName: "Songwriting", templateDisc: "Create user manuals that provide step-by-step instructions on how to use the company's products or services"),
      TemplateType(tabName: "Creative", templateName: "Children's books", templateDisc: "Create user manuals that provide step-by-step instructions on how to use the company's products or services"),
      TemplateType(tabName: "Creative", templateName: "Creative Non-Fiction", templateDisc: "Create user manuals that provide step-by-step instructions on how to use the company's products or services"),
    ],
    [ // 4
      TemplateType(tabName: "Academic", templateName: "Research papers", templateDisc: "Conduct research and write research papers, essays, theses, and dissertations that demonstrate expertise in the chosen field"),
      TemplateType(tabName: "Academic", templateName: "Essays", templateDisc: "Write scientific papers that report on original research or innovative ideas in a scientific field"),
      TemplateType(tabName: "Academic", templateName: "Theses and dissertations", templateDisc: "Write scientific papers that report on original research or innovative ideas in a scientific field"),
      TemplateType(tabName: "Academic", templateName: "Scientific papers", templateDisc: "Develop white papers that provide in-depth analysis and insights into specific industry-related issues"),
      TemplateType(tabName: "Academic", templateName: "White papers", templateDisc: "Create user manuals that provide step-by-step instructions on how to use the company's products or services"),
      TemplateType(tabName: "Academic", templateName: "Case studies", templateDisc: "Create case studies that highlight the company's success stories and demonstrate how its products or services have helped clients achieve their goals"),
    ],
    [ // 5
      TemplateType(tabName: "Medical", templateName: "News articles", templateDisc: "Develop editorial content, such as editorials and opinion pieces, that express the company's opinions or viewpoints on specific issues related"),
      TemplateType(tabName: "Medical", templateName: "Feature articles", templateDisc: "Develop editorial content, such as editorials and opinion pieces, that express the company's opinions or viewpoints on specific issues related"),
      TemplateType(tabName: "Medical", templateName: "Op-ed pieces", templateDisc: "Develop editorial content, such as editorials and opinion pieces, that express the company's opinions or viewpoints on specific issues related"),
      TemplateType(tabName: "Medical", templateName: "Investigative journalism", templateDisc: "Develop editorial content, such as editorials and opinion pieces, that express the company's opinions or viewpoints on specific issues related"),
      TemplateType(tabName: "Medical", templateName: "Editorial content", templateDisc: "Develop editorial content, such as editorials and opinion pieces, that express the company's opinions or viewpoints on specific issues related"),
    ],
    [ // 6
      TemplateType(tabName: "Marketing and Advertising", templateName: "Ad copy", templateDisc: "Develop ad copy for print, radio, TV, and online platforms that effectively promote the company's offerings and target specific audiences"),
      TemplateType(tabName: "Marketing and Advertising", templateName: "Brochure copy", templateDisc: "Write brochure copy that showcases the company's products or services in an attractive and informative way"),
      TemplateType(tabName: "Marketing and Advertising", templateName: "Direct mail copy", templateDisc: "Develop direct mail copy that persuades potential customers to take a desired action, such as making a purchase or visiting the company's website"),
      TemplateType(tabName: "Marketing and Advertising", templateName: "Email marketing copy", templateDisc: "Create email marketing copy that engages subscribers and encourages them to take a desired action"),
      TemplateType(tabName: "Marketing and Advertising", templateName: "Sales letters", templateDisc: "Write sales letters that persuade potential customers to purchase the company's products or services"),
      TemplateType(tabName: "Marketing and Advertising", templateName: "Press releases", templateDisc: "Develop press releases that effectively communicate news or updates related to the company or its offerings"),
      TemplateType(tabName: "Marketing and Advertising", templateName: "Promotional materials", templateDisc: "Create promotional materials, such as flyers and posters, that promote the company's offerings"),
    ],
    [ // 7
      TemplateType(tabName: "Journalism", templateName: "News articles", templateDisc: "Write news articles that report on current events or newsworthy stories related to the company or its offering"),
      TemplateType(tabName: "Journalism", templateName: "Feature articles", templateDisc: "Develop feature articles that provide in-depth coverage of a specific topic related to the company's offerings"),
      TemplateType(tabName: "Journalism", templateName: "Op-ed pieces", templateDisc: "Create op-ed pieces that express the writer's opinions or viewpoints on a particular topic related to the company or its industry"),
      TemplateType(tabName: "Journalism", templateName: "Investigative journalism", templateDisc: "Write investigative journalism pieces that report on issues or topics that require in-depth research and analysis"),
      TemplateType(tabName: "Journalism", templateName: "Editorial content", templateDisc: "Develop editorial content, such as editorials and opinion pieces, that express the company's opinions or viewpoints on specific issues related"),
    ]
  ];

  List<Widget> getTabsSection() {
    return [
      Text(
        "Templates",
        style: TextStyle( 
          fontSize: 20,
          color: Theme.of(context).colorScheme.primary
        ),
      ), 
      SizedBox(height: 20,),
      getTabsRow()
    ];
  }

  Widget getTabsRow() {
    double seperator = 29;
    return Row(
      children: [
        getTabText("Website", selectedTab == 0, () {setState(() => selectedTab = 0);}),
        SizedBox(width: seperator),
        getTabText("Social Media", selectedTab == 1, () {setState(() => selectedTab = 1);}),
        SizedBox(width: seperator),
        getTabText("Technical", selectedTab == 2, () {setState(() => selectedTab = 2);}),
        SizedBox(width: seperator),
        getTabText("Creative", selectedTab == 3, () {setState(() => selectedTab = 3);}),
        SizedBox(width: seperator),
        getTabText("Acadenmic", selectedTab == 4, () {setState(() => selectedTab = 4);}),
        SizedBox(width: seperator),
        getTabText("Medical", selectedTab == 5, () {setState(() => selectedTab = 5);}),
        SizedBox(width: seperator),
        getTabText("Marketing and Advertising", selectedTab == 6, () {setState(() => selectedTab = 6);}),
        SizedBox(width: seperator),
        getTabText("Journalism", selectedTab == 7, () {setState(() => selectedTab = 7);}),
      ],
    );
  }

  Widget getTabText(String text, bool isSelected, Function handleClick) {
    return GestureDetector(
      onTap: (() => handleClick()),
      child: Text(
        text, 
        style: TextStyle( 
          fontSize: 17,
          color: (isSelected) ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onBackground
        ),
      ),      
    );
  }

  Widget getTemplatesSection() {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: templatesData[selectedTab].map((e) => TemplateCard(titleStr: e.templateName, subTitleStr: e.templateDisc, handleClick: () => handleClickCreate(e))).toList(),
    );
  }

  void handleClickCreate(TemplateType templateType) {
    if (templateType.tabName == "Journalism" && templateType.templateName == "Feature articles") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => CreateFeatureArticle()));
    }
  }

  @override 
  Widget build(BuildContext context) {

    return (
      Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavBar(constraints: constraints, navIndex: 1,),
              Container(
                height: double.infinity,
                width: constraints.maxWidth * 0.85,
                color: Theme.of(context).colorScheme.surface,
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 30
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...getTabsSection(),
                    SizedBox(height: 30),
                    getTemplatesSection()
                  ],
                ),
              )
            ]
            );
        },),
      )
    );
  }
}