import 'package:lizzie_portfolio/model/project_model.dart';

List<ProjectModel> getProjects() {
  List<ProjectModel> projects = [
    ProjectModel(
      title: 'PROJECT: Tri-fold Business Pamphlet (inside)',
      description:
          'This assignment was all about layout and readability. The inside of this pamphlet contains three recipes involving apples that I found online. The biggest challenge here was formatting the recipes so that each section was the same size as in the following recipes. These alignments help the page look organized and clean despite the amount of information being given. (Made using Adobe InDesign, royalty free images and dafont.com)',
      image: 'assets/images/graphic-design/tri-fold-business-pamphlet.png',
    ),
    ProjectModel(
      title: 'PROJECT: Logo Design',
      description:
          'This assignment was to create a pet store brand and design a logo for it. I hand-drew the logo outline and then brought it onto the computer to color and add the text. It is shown at various sizes in full color as well as black and white so the hypothetical client would be able to visualize how it would read in multiple scenarios of use. (Made with Adobe Illustrator and dafont.com)',
      image: 'assets/images/graphic-design/logo-design.png',
    ),
    ProjectModel(
      title: 'PROJECT: Promotional Poster',
      description:
          'The objective of this assignment was to produce a bold and inviting poster to advertise a farmers market. I drew a vector image of a simple watermelon icon and used it to create the background pattern. I colored them using three variations of pink to give the pattern more depth and interest. Adding a slightly translucent shape behind the text allows the reader to comprehend the content easily despite the busy background. (Made with Adobe Illustrator and dafont.com)',
      image: 'assets/images/graphic-design/promotional-poster.png',
    ),
    ProjectModel(
      title:
          'Packaging Label Flavor Illustrations for the Vermont Gelato Company',
      description:
          'This series of illustrations were all drawn by hand. They each represent a different main ingredient of a gelato flavor. They will be displayed on the back label of gelato containers. (Made using Procreate)',
      image: 'assets/images/graphic-design/gelato-espresso.png',
      carouselImages: [
        'assets/images/graphic-design/gelato-blueberry.png',
        'assets/images/graphic-design/gelato-caramel.png',
        'assets/images/graphic-design/gelato-espresso.png',
        'assets/images/graphic-design/gelato-ginger-tumeric-black-pepper.png',
        'assets/images/graphic-design/gelato-honey.png',
        'assets/images/graphic-design/gelato-hot-chocolate.png',
        'assets/images/graphic-design/gelato-lemon.png',
        'assets/images/graphic-design/gelato-mint-chocolate.png',
        'assets/images/graphic-design/gelato-peppermint.png',
      ],
    ),
    ProjectModel(
      title: 'PROJECT: Gig Poster 1',
      description:
          'This is a poster I designed for a hypothetical concert by the musician Knxwledge. I created the background by layering many shapes and tweaking their opacity and blend mode. I also made a custom type lockup using a pre-existing font. (Made using Adobe Illustrator)',
      image: 'assets/images/graphic-design/gig-poster-1.png',
    ),
    ProjectModel(
      title: 'Packaging Label Background for the Vermont Gelato Company',
      description:
          'Hand-drawn background design used on gelato packaging as well as on social media. (Made using Procreate)',
      image:
          'assets/images/graphic-design/label-background-for-the-vermont-gelato-company.png',
    ),
    ProjectModel(
      title: 'PROJECT: Pattern Swatch',
      description:
          'To start this piece, I hand-drew one bird, one head, and one rain cloud. I brought them onto the computer, colored them, arranged duplicates, and formatted them in a way that allowed the pattern as a whole to continue seamlessly onto another square of the same pattern if it were placed on any side of the original. I then transformed the original square into a pattern swatch on Adobe Illustrator, which let me use my seamless pattern the same as any solid color when using Adobe software. As you can see, the pattern can then be sized up or down to any imaginable size. (Made using Adobe Illustrator)',
      image: 'assets/images/graphic-design/pattern-swatch.png',
    ),
    ProjectModel(
      title: 'PROJECT: Promotional Postcard (back)',
      description:
          'The assignment for this piece was to create an eye catching postcard to promote a photo contest fundraiser for pets. The back of the postcard needed to be informative without looking boring, so I used complementary fonts in different sizes and colors to keep the customer interested while also making the key information stand out for quick comprehension. I pulled the colors from the photo on the front to tie it all together. (Made with Adobe Photoshop, royalty free images and dafont.com)',
      image: 'assets/images/graphic-design/promotional-postcard-back.png',
    ),
    ProjectModel(
      title: 'PROJECT: Promotional Postcard (front)',
      description:
          'The assignment for this piece was to create an eye catching postcard to promote a photo  contest fundraiser for pets. I kept the front simple with a heartwarming photo and bold text that the customer would relate to and draw them in. (Made with Adobe Photoshop, royalty free images and dafont.com)',
      image: 'assets/images/graphic-design/promotional-postcard-front.png',
    ),
    ProjectModel(
      title: 'Poster Design for SBSD Healthy Schools Program',
      description:
          'I designed this poster for the South Burlington School District’s Healthy Schools Program. The target audience was elementary school children. The goal was to inform them of healthy snacks that will give them energy that will last throughout the day. (Made using Adobe Photoshop, Adobe Illustrator, royalty free images, and dafont.com)',
      image: 'assets/images/graphic-design/sbsd-healthy-schools-program.png',
    ),
    ProjectModel(
      title: 'PROJECT: Gig Poster 2',
      description:
          'This is a poster I designed for a hypothetical concert by the musicians Solange and Kali Uchis. The background image is a blend of multiple images merged together to create a single, surreal scene. (Made using Adobe Photoshop)',
      image: 'assets/images/graphic-design/gig-poster-2.png',
    ),
    ProjectModel(
      title: 'VCD mac',
      description: '...',
      image: 'assets/images/graphic-design/VCD-mac.png',
    ),
    ProjectModel(
      title: 'Restroom Door Signage for the Vermont Country Deli Market',
      description:
          'This design was completely hand-drawn and then arranged and colored on the computer. (Made using Adobe Illustrator)',
      image: 'assets/images/graphic-design/restroom-door-signage.png',
    ),
    ProjectModel(
      title: 'Coffee Card Design for the Vermont Country Deli Market',
      description:
          'This design is a combination of hand-drawn text and premade fonts. I integrated the business logo (the pyramid of squares) in as the arrangement for keeping track of cups bought. (Made using Adobe Illustrator)',
      image: 'assets/images/graphic-design/coffee-card-design.png',
    ),
    ProjectModel(
      title: 'Store Signage for the Vermont Country Deli and Market (1)',
      description:
          'I drew the outlines by hand and then brought it all onto the computer to arrange and color. (Made using Adobe Illustrator)',
      image: 'assets/images/graphic-design/store-signage.png',
    ),
    ProjectModel(
      title: 'Store Signage for the Vermont Country Deli and Market (2)',
      description:
          'I drew the outlines by hand and then brought it all onto the computer to arrange and color. (Made using Adobe Illustrator)',
      image: 'assets/images/graphic-design/store-signage-2.png',
    ),
    ProjectModel(
      title: 'Ad Design for the Vermont Country Deli',
      description:
          'This was an ad designed to be played before a film at a movie theater. I photographed the macaroni and cheese and then edited it and added text and the business logo. I kept it simple as I knew it would be on screen for less than 30 seconds. (Made using Adobe Photoshop and dafont.com)',
      image: 'images/graphic-design/ad-design.png',
    ),
    ProjectModel(
      title: 'Logo Redesign for the Vermont Gelato Company',
      description:
          'A simplified and cleaner version of their current logo. (Made using Adobe Illustrator)',
      image: 'images/graphic-design/logo-redesign-gelato.png',
    ),
    ProjectModel(
      title: 'Catering Menu for the Vermont Gelato Company',
      description:
          'A menu to be handed out to potential catering customers, informing them of prices and flavor options. (Made using Adobe InDesign)',
      image: 'images/graphic-design/catering-menu-gelato.jpg',
    ),
  ];
  return projects;
}
