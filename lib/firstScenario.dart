import 'story.dart';

class firstScenario {
  int firstStoryNumber = 0;
  List<story> _firstStory = [
    story(
        storyText: // --2
            'Path 1: Choose Your Hobby\nAli decided to follow his passion for art. He began sketching the stars and capturing the beauty of the night sky on paper. As days turned into weeks, Ali’s talent blossomed, and his paintings started to reflect the wonders of the universe.\n\n"'),
    story(
        storyText: // --3
            'Scene 1: Finding Inspiration\nAli spent hours watching the stars and visiting beautiful spots in the village to find inspiration. One evening, while painting under a large oak tree, he encountered a mysterious traveler who admired his work.\n\nThe traveler said:\n\"Your art has potential, young man. But talent alone is not enough. You must refine your skills.\"\n\n'),
    story(
        storyText: // --4
            'Taking Lessons\nAli began learning from the traveler, who taught him advanced techniques and encouraged him to think creatively. Over time, Ali’s work transformed, becoming more detailed and expressive.\n\n'),
    story(
        storyText: // --5
            'Learning Alone\nAli continued painting alone, inspired by the beauty of the world around him. Though progress was slower, his unique style began to emerge. Villagers started noticing his talent and encouraged him to share his work.\n\n'),
    story(
        storyText: // --6
            'Participate in a Village Art Contest\nAli hears about an art contest being held in the village. This is his chance to showcase his talent. He decides to enter, carefully selecting one of his most detailed paintings. His work is well-received by the judges, and he wins first place. The villagers praise his skill, and Ali\'s work becomes more recognized in the surrounding area. This win helps him gain confidence in his abilities and attracts attention from local artists and patrons.\n'),
    story(
        storyText: // --7
            'Paint a Masterpiece for the Local Festival\nAli decides to focus on creating a masterpiece specifically for the upcoming local festival. Inspired by the beauty of his village, he dedicates weeks to perfecting his piece. The painting, depicting the vibrant life of the community, draws the attention of many during the festival. The piece is featured prominently, and people start recognizing Ali\'s unique ability to capture the essence of life through his art. His work begins to get attention from art collectors and critics who are eager to see more.\n'),
    story(
        storyText: // --8
            'Open a small art gallery in the village\n With his growing talent, Ali chooses to open a small art gallery in the heart of the village. He displays his paintings and invites the local community to experience his work firsthand. His gallery becomes a space where both locals and visitors can appreciate his art, and soon enough, it becomes a popular spot. This decision allows Ali to build relationships with art lovers and opens doors for potential collaborations. His reputation as an artist begins to grow steadily, and he gains recognition within the art world.\n'),
    story(
        storyText: // --9
            'Travel to the city to showcase your art\n With his skill and confidence increasing, Ali decides it\'s time to take his art to a larger audience. He travels to the city, hoping to showcase his work at a prestigious gallery. The city is bustling with art lovers, critics, and fellow artists, and Ali feels both excited and nervous. At the exhibition, his paintings stand out among the others, and he is approached by a well-known art dealer who offers to represent him. Ali\'s journey takes a major turn as he starts gaining fame beyond the village, but it also means facing the challenges of the competitive city art scene.\n')
  ];

  List<story> _firstButton_firstStory = [
    story(storyText: 'hmm'),
    story(storyText: 'Take Art Lessons from the Traveler'),
    story(storyText: 'Participate in a Village Art Contest'),
    story(storyText: 'Open a Small Art Gallery in the Village'),
    story(storyText: '.')
  ];

  List<story> _secondButton_firstStory = [
    story(storyText: 'okay then?'),
    story(storyText: 'Continue Learning on Your Own'),
    story(storyText: 'Paint a Masterpiece for the Local Festival'),
    story(storyText: 'Travel to the City to Showcase Your Art'),
    story(storyText: '.'),
  ];

  List<story> getFirstStory() {
    return _firstStory;
  }

  List<story> getFirstButton_fs() {
    return _firstButton_firstStory;
  }

  List<story> getSecondButton_fs() {
    return _secondButton_firstStory;
  }
}
