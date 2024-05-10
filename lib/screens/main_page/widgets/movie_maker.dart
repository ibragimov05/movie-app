import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/screens/main_page/widgets/movie_full_info.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MovieMaker extends StatelessWidget {
  final String movieTeaser;
  final String movieRating;
  final int indexOfTappedMovie;

  MovieMaker({
    super.key,
    required this.movieTeaser,
    required this.movieRating,
    required this.indexOfTappedMovie,
  });

  List<Map<String, dynamic>> movieFullInfo_ls = [
    {
      'movieName': 'The Avengers 2012',
      'comeOutYear': '2012',
      'country': 'United States',
      'genre': 'Action, Adventure, Sci-Fi',
      'about':
          'The Avengers is a 2012 American superhero film based on the Marvel Comics superhero team of the same name. It is the sixth film in the Marvel Cinematic Universe (MCU). The film features an ensemble cast including Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, and Jeremy Renner. In the film, Nick Fury, director of the spy agency S.H.I.E.L.D., recruits Iron Man, Captain America, the Hulk, and Thor to form a team that must stop Thor\'s brother Loki from subjugating Earth.'
    },
    {
      'movieName': 'Avatar: The Way of Water',
      'comeOutYear': '2022',
      'country': 'United States',
      'genre': 'Science Fiction, Adventure',
      'about':
          'Avatar: The Way of Water is an upcoming American science fiction adventure film directed by James Cameron. It is the second film in the Avatar franchise, following Avatar (2009). The film is set in the future on the fictional planet of Pandora, and it follows the adventures of the Na\'vi people and their interaction with humans. The Way of Water explores themes of environmentalism, colonialism, and spirituality, while also featuring groundbreaking visual effects.'
    },
    {
      'movieName': 'Guardians of the Galaxy Vol. 3',
      'comeOutYear': '2023',
      'country': 'United States',
      'genre': 'Action, Adventure, Comedy',
      'about':
          'Guardians of the Galaxy Vol. 3 is an upcoming American superhero film based on the Marvel Comics superhero team Guardians of the Galaxy. It is the sequel to Guardians of the Galaxy Vol. 2 (2017) and the 29th film in the Marvel Cinematic Universe (MCU). The film is directed by James Gunn, who also wrote the screenplay. The plot details are currently under wraps, but it is expected to continue the adventures of the Guardians as they traverse the cosmos and encounter new allies and enemies.'
    },
    {
      'movieName': 'Avengers: Infinity War',
      'comeOutYear': '2018',
      'country': 'United States',
      'genre': 'Action, Adventure, Fantasy',
      'about':
          'Avengers: Infinity War is a 2018 American superhero film based on the Marvel Comics superhero team the Avengers. It is the sequel to The Avengers (2012) and Avengers: Age of Ultron (2015), and the 19th film in the Marvel Cinematic Universe (MCU). The film is directed by Anthony and Joe Russo and features an ensemble cast including Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans, Scarlett Johansson, Benedict Cumberbatch, Tom Holland, Chadwick Boseman, and Josh Brolin. In the film, the Avengers and the Guardians of the Galaxy attempt to stop the cosmic villain Thanos from collecting all six Infinity Stones and wiping out half of all life in the universe.'
    },
    {
      'movieName': 'Iron Man',
      'comeOutYear': '2008',
      'country': 'United States',
      'genre': 'Action, Adventure, Sci-Fi',
      'about':
          'Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name. It is the first film in the Marvel Cinematic Universe (MCU). The film is directed by Jon Favreau and stars Robert Downey Jr. as Tony Stark / Iron Man. In the film, Stark, an industrialist and master engineer, builds a powered exoskeleton and becomes the technologically advanced superhero Iron Man.'
    },
    {
      'movieName': 'Prisoners',
      'comeOutYear': '2013',
      'country': 'United States',
      'genre': 'Crime, Drama, Mystery',
      'about':
          'Prisoners is a 2013 American thriller film directed by Denis Villeneuve. The film stars Hugh Jackman, Jake Gyllenhaal, Viola Davis, Maria Bello, Terrence Howard, and Melissa Leo. In the film, two young girls go missing in a small Pennsylvania town and the father of one of the girls takes matters into his own hands when he believes the police are not doing enough to find them.'
    },
    {
      'movieName': 'The Shawshank Redemption',
      'comeOutYear': '1994',
      'country': 'United States',
      'genre': 'Drama',
      'about':
          'The Shawshank Redemption is a 1994 American drama film written and directed by Frank Darabont, based on the 1982 Stephen King novella Rita Hayworth and Shawshank Redemption. The film stars Tim Robbins and Morgan Freeman. It tells the story of banker Andy Dufresne, who is sentenced to life in Shawshank State Penitentiary for the murders of his wife and her lover, despite his claims of innocence. Over the years, he befriends a fellow inmate, Ellis "Red" Redding, and becomes instrumental in a money-laundering operation led by the prison warden.'
    },
    {
      'movieName': 'Spider-Man: No Way Home',
      'comeOutYear': '2021',
      'country': 'United States',
      'genre': 'Action, Adventure, Fantasy',
      'about':
          'Spider-Man: No Way Home is a 2021 American superhero film based on the Marvel Comics character Spider-Man. It is the sequel to Spider-Man: Homecoming (2017) and Spider-Man: Far From Home (2019), and the 27th film in the Marvel Cinematic Universe (MCU). The film is directed by Jon Watts and stars Tom Holland as Peter Parker / Spider-Man. In the film, Parker\'s identity as Spider-Man is revealed to the world, and he seeks the help of Doctor Strange to undo the damage while facing villains from alternate realities.'
    },
    {
      'movieName': 'The Truman Show',
      'comeOutYear': '1998',
      'country': 'United States',
      'genre': 'Comedy, Drama, Sci-Fi',
      'about':
          'The Truman Show is a 1998 American satirical science fiction film directed by Peter Weir and written by Andrew Niccol. The film stars Jim Carrey as Truman Burbank, a man who unknowingly lives his entire life on a reality television show. As Truman begins to discover the truth about his existence, he decides to escape the fabricated world created for him.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) {
              return MovieFullInfo(
                movieTeaser: movieTeaser,
                movieRating: movieRating,
                movieName: movieFullInfo_ls[indexOfTappedMovie]['movieName'],
                comeOutYear: movieFullInfo_ls[indexOfTappedMovie]
                    ['comeOutYear'],
                country: movieFullInfo_ls[indexOfTappedMovie]['country'],
                genre: movieFullInfo_ls[indexOfTappedMovie]['genre'],
                about: movieFullInfo_ls[indexOfTappedMovie]['about'],
              );
            },
          ),
        );
      },
      child: Container(
        width: 180.w,
        height: 240,
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          color: CupertinoColors.white,
          borderRadius: BorderRadius.circular(13.r),
          image: DecorationImage(
              image: AssetImage(movieTeaser), fit: BoxFit.cover),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color(0xFF820FE1),
                  borderRadius: BorderRadius.circular(5.r)),
              child: Text(
                movieRating,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 8.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
