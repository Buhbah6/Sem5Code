<?php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;

require __DIR__ . '/vendor/autoload.php';

//constants
require_once './includes/app_constants.php';
require_once './includes/helpers/helper_functions.php';

//routes
require_once './includes/routes/base_routes.php';
require_once './includes/routes/anime_routes.php';
require_once './includes/routes/manga_routes.php';
require_once './includes/routes/review_routes.php';
require_once './includes/routes/studio_routes.php';
require_once './includes/routes/user_routes.php';
require_once './includes/routes/genre_routes.php';

$app = AppFactory::create();
$app->addRoutingMiddleware();
$app->addBodyParsingMiddleware();
$errorMiddleware = $app->addErrorMiddleware(true, true, true);
$app->setBasePath("/webservices/anime-api");

//Root
$app->get('/', "getResources"); 

//Data retrieval - HTTP GET methods for the exposed resources
$app->get('/anime', "getAllAnime");
$app->get('/anime/{anime_id:[0-9]+}', "getAnimeById");
// get all reviews associated with an anime
$app->get('/anime/{anime_id:[0-9]+}/reviews', "getAnimeReviews");


$app->get('/manga', "getAllManga");
$app->get('/manga/{manga_id:[0-9]+}', "getMangaById");
// get all reviews associated with a manga
$app->get('/manga/{manga_id:[0-9]+}/reviews', "getMangaReviews");

$app->get('/users', "getAllUsers");
$app->get('/users/{user_id:[0-9]+}', "getUserById");
$app->get('/users/{user_id:[0-9]+}/reviews', "getUserReviews");
$app->get('/users/{user_id:[0-9]+}/toWatch/anime', "getUserAnimeToWatch");
$app->get('/users/{user_id:[0-9]+}/watched/anime', "getUserAnimeWatched");
$app->get('/users/{user_id:[0-9]+}/toWatch/manga', "getUserMangaToWatch");
$app->get('/users/{user_id:[0-9]+}/watched/manga', "getUserMangaWatched");

$app->get('/studios', "getAllStudios");
$app->get('/studios/{studio_id:[0-9]+}', "getStudioById");
// get all anime associated with a studio
$app->get('/studios/{studio_id:[0-9]+}/anime', "getStudioAnime");

$app->get('/reviews', "getAllReviews");
$app->get('/reviews/{review_id:[0-9]+}', "getReviewById");

$app->get('/genres', "getAllGenres"); //DONE -> WORKING
$app->get('/genres/{genre_id:[0-9]+}', "getGenreById"); //DONE -> WORKING
// get all anime associated with a genre
$app->get('/genres/{genre_id:[0-9]+}/anime', "getGenreAnime"); //Giu Build 1 -> DONE
// get all manga associated with a genre
$app->get('/genres/{genre_id:[0-9]+}/manga', "getGenreManga"); //Giu Build 1 -> DONE

//Data manipulation - HTTP POST, PUT, and DELETE methods for the exposed resources


// Run the app.
$app->run();
