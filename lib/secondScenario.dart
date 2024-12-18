import 'story.dart';
import 'story_brain.dart';

class secondScenario {
  story_brain brain2 = story_brain();
  List<story> _secondStory = [
    story(
        storyText: //--2
            'Path 2: Choose Your Career\nAli chose to pursue a career in astronomy, determined to unravel the secrets of the stars. He began studying books borrowed from the elder and spending long nights observing the skies.\n\n'),
    story(
        storyText: //--3
            'Scene 1: The Elder’s Challenge\nOne day, the elder gave Ali a challenge:\n\"If you are serious about understanding the stars, you must prove your determination. Build something that will bring you closer to them.\"\n\n'),
    story(
        storyText: //--4
            'Building the Telescope\nAli worked tirelessly, gathering materials from the village and crafting a small telescope. When it was complete, he marveled at the sight of the stars through its lens. One night, he noticed something unusual—a faint, uncharted constellation.'),
    story(
        storyText: //--5
            'Mapping the Stars\nAli started creating detailed maps of the night sky. His work gained the attention of a traveling scientist, who offered to mentor him. With the scientist’s help, Ali’s maps became more precise, and he began uncovering patterns in the stars.\n\n'),
    story(
        storyText: //--6
            'Naming the Constellation and Sharing It with the Village\nAli, after spending countless nights observing the stars, discovers a previously unnoticed constellation. He names it after his village and shares his discovery with the locals. The villagers are amazed by his findings and celebrate his achievement. Ali becomes a local hero, and his name is spoken with admiration throughout the community.\n'),
    story(
        storyText: //--7
            'Traveling to the City to Present Your Discovery\nAli, feeling the weight of his discovery, decides to travel to the city to present his findings to a group of professional astronomers. The city is full of experts, and Ali feels both nervous and excited. His discovery catches the attention of renowned scientists, who encourage him to continue his studies and offer him a position to work with them in their observatories.\n'),
    story(
        storyText: //--8
            'Publishing Your Maps in a Scientific Journal\nAfter months of research and careful mapping, Ali compiles his star maps and publishes them in a well-known scientific journal. His work is praised for its accuracy and detail. It opens doors for collaborations with other scientists and researchers, propelling Ali’s career forward in the world of astronomy. He starts gaining recognition from the global scientific community.\n'),
    story(
        storyText: //--9
            'Join the Scientist on an Expedition\nA prominent scientist notices Ali’s work and invites him on an expedition to explore the uncharted regions of the sky. Ali joins the scientist, and together they make groundbreaking discoveries. This adventure leads Ali to travel across the world, contributing significantly to the scientific field. He earns the respect and admiration of leading astronomers worldwide.\n'),
  ];

  List<story> _firstButton_secondStory = [
    story(storyText: 'hmm'),
    story(storyText: 'Build a Simple Telescope'),
    story(storyText: 'Name the Constellation and Share It with the Village'),
    story(storyText: 'Publish Your Maps in a Scientific Journal'),
    story(storyText: '.')
  ];

  List<story> _secondButton_secondStory = [
    story(storyText: 'okay then?'),
    story(storyText: 'Map the Stars Using Your Observations'),
    story(storyText: 'Travel to the City to Present Your Discovery'),
    story(storyText: 'Join the Scientist on an Expedition'),
    story(storyText: '.'),
  ];

  List<story> getSecondScenario() {
    return _secondStory;
  }

  List<story> getFirstButton_ss() {
    return _firstButton_secondStory;
  }

  List<story> getSecondButton_ss() {
    return _secondButton_secondStory;
  }

  void getAllScenario2() {
    getSecondScenario();
    getFirstButton_ss();
    getSecondButton_ss();
  }
}
