import 'package:cinema_ticket_app/data/model/seat_model.dart';

import 'model/date_model.dart';
import 'model/movie_model.dart';

final inCinemaMovies = [
  MovieModel(
      id: "1",
      title: "Spider-Man: No Way Home",
      posterUrl: "images/spiderman.jpg",
      overview:
          "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
      rating: 0,
      year: "2021",
      duration: "2 hr 12min",
      genres: 'Action,Adventure,Sci-Fic'),
  MovieModel(
      id: "2",
      title: "The King's Man",
      posterUrl: "images/kings_man.jpg",
      overview:
          "As a collection of history's worst tyrants and criminal masterminds gather to plot a war to wipe out millions, one man must race against time to stop them.",
      rating: 0,
      year: "2021",
      duration: "1 hr 38min",
      genres: 'Action ,Adventure ,War ,Thriller'),
  MovieModel(
      id: "3",
      title: "The Requin",
      posterUrl: "images/the_requin.jpg",
      overview:
          "A couple on a romantic getaway find themselves stranded at sea when a tropical storm sweeps away their villa. In order to survive, they are forced to fight the elements, while sharks circle below.",
      rating: 0,
      year: "2022",
      duration: "1hr 45min",
      genres: 'Thriller'),
  MovieModel(
      id: "4",
      title: "The 355",
      posterUrl: "images/the355.jpg",
      overview:
          "A group of top female agents from American, British, Chinese, Columbian and German  government agencies are drawn together to try and stop an organization from acquiring a deadly weapon to send the world into chaos.",
      rating: 0,
      year: "2022",
      duration: "1hr 50min",
      genres: 'Action,Thirller'),
  MovieModel(
      id: "5",
      title: "Ghostbusters: Afterlife",
      posterUrl: "images/after_life.jpg",
      overview:
          "When a single mom and her two kids arrive in a small town, they begin to discover their connection to the original Ghostbusters and the secret legacy their grandfather left behind.",
      rating: 0,
      year: "2021",
      duration: "2hr 10min",
      genres: 'Fantasy,Adventure,Comedy')
];

final comingSoonMovies = [
  MovieModel(
      id: "1",
      title: "Ainbo: Spirit of the Amazon",
      posterUrl: "images/ainbo.jpg",
      overview:
          "An epic journey of a young hero and her Spirit Guides, 'Dillo' a cute and humorous armadillo and \"Vaca\" a goofy oversized tapir, who embark on a quest to save their home in the spectacular Amazon Rainforest.",
      rating: 0,
      year: "2021",
      duration: "1hr 58min",
      genres: 'Adventure,Animation,Fantasy,Family'),
  MovieModel(
      id: "2",
      title: "Moonfall",
      posterUrl: "images/moonfall.jpg",
      overview:
          "A mysterious force knocks the moon from its orbit around Earth and sends it hurtling on a collision course with life as we know it.",
      rating: 0,
      year: "2022",
      duration: "2hr 5min",
      genres: 'Action,Adventure,Sci-Fic'),
  MovieModel(
      id: "3",
      title: "Uncharted",
      posterUrl: "images/uncharted.jpg",
      overview:
          "A young street-smart, Nathan Drake and his wisecracking partner Victor “Sully” Sullivan embark on a dangerous pursuit of “the greatest treasure never found” while also tracking clues that may lead to Nathan’s long-lost brother.",
      rating: 0,
      year: "2022",
      duration: "2hr 12min",
      genres: 'Action,Adventure'),
  MovieModel(
      id: "4",
      title: "CODA",
      posterUrl: "images/coda.jpg",
      overview:
          "As a CODA (Child of Deaf Adults), Ruby is the only hearing person in her deaf family. When the family's fishing business is threatened, Ruby finds herself torn between pursuing her love of music and her fear of abandoning her parents.",
      rating: 0,
      year: "2022",
      duration: "1hr 32min",
      genres: 'Action,Music,Romance'),
  MovieModel(
      id: "5",
      title: "King Richard",
      posterUrl: "images/king_richard.jpg",
      overview:
          "The story of how Richard Williams served as a coach to his daughters Venus and Serena, who will soon become two of the most legendary tennis players in history.",
      rating: 0,
      year: "2021",
      duration: "1hr 40min",
      genres: 'Drama,History'),
  MovieModel(
      id: "6",
      title: "Death on the Nile",
      posterUrl: "images/dead_on_the_nile.jpg",
      overview:
          "Belgian sleuth Hercule Poirot’s Egyptian vacation aboard a glamorous river steamer turns into a terrifying search for a murderer when a picture-perfect couple’s idyllic honeymoon is tragically cut short.",
      rating: 0,
      year: "2022",
      duration: "2hr 10min",
      genres: 'Mystery,Crime,Drama')
];

final trailerUrls = [
  'images/uncharted_trailer.jpg',
  'images/dead_on_the_nile_trailer.jpg',
  'images/kings_man_trailer.jpg'
];

final tempDateList = [
  DateModel(8, 'Thu'),
  DateModel(9, 'Fri'),
  DateModel(10, 'Sat'),
  DateModel(11, 'Sun'),
  DateModel(12, 'Mon')
];

final tempTimeList = ["11:30 AM", "12:50 AM", "3:30 PM", "5:30 PM"];

final sampleSeatData = [
  [
    SeatModel(11, 200, false),
    SeatModel(12, 200, false),
    SeatModel(13, 200, true),
    SeatModel(14, 200, false),
    SeatModel(15, 200, false)
  ],
  [
    SeatModel(21, 180, false),
    SeatModel(22, 180, false),
    SeatModel(23, 180, false),
    SeatModel(24, 180, true),
    SeatModel(25, 180, false),
    SeatModel(26, 180, true),
    SeatModel(27, 180, false)
  ],
  [
    SeatModel(31, 150, true),
    SeatModel(32, 150, false),
    SeatModel(33, 150, false),
    SeatModel(34, 150, true),
    SeatModel(35, 150, false),
    SeatModel(36, 150, true),
    SeatModel(37, 150, true),
    SeatModel(38, 150, false),
  ],
  [
    SeatModel(41, 120, false),
    SeatModel(42, 120, true),
    SeatModel(43, 120, true),
    SeatModel(44, 120, false),
    SeatModel(45, 120, false),
    SeatModel(46, 120, true),
    SeatModel(47, 120, false),
  ],
  [
    SeatModel(51, 100, false),
    SeatModel(52, 100, true),
    SeatModel(53, 100, false),
    SeatModel(54, 100, false),
    SeatModel(55, 100, false),
    SeatModel(56, 100, true),
    SeatModel(57, 100, false),
    SeatModel(57, 100, false),
  ],
  [
    SeatModel(61, 100, false),
    SeatModel(62, 100, false),
    SeatModel(63, 100, true),
    SeatModel(64, 100, false),
    SeatModel(65, 100, false),
  ]
];
