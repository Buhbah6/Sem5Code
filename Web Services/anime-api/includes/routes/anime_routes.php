<?php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
//var_dump($_SERVER["REQUEST_METHOD"]);
use Slim\Factory\AppFactory;

require_once __DIR__ . './../routes/base_routes.php';
require_once __DIR__ . './../models/BaseModel.php';
require_once __DIR__ . './../models/AnimeModel.php';

// get routes: getAllAnime, getAnimeById, getAnimeReviews

//filtering allowed by: name, description, year
function getAllAnime(Request $request, Response $response, array $args) {
    $anime = array();
    $response_data = array();
    $response_code = HTTP_OK;
    $anime_model = new AnimeModel();

    // Retrieve the query string parameter from the request's URI.
    $filter_params = $request->getQueryParams();
    // if (checkParams(array("name", 'description', 'year'), $filter_params))
    if (isset($filter_params['name']) && isset($filter_params['description']) && isset($filter_params['year'])) {
        // Fetch the list of genres matching the provided name.
        $genre = $genre_model->getByNameDescriptionYear($filter_params["name"], $filter_params['description'], $filter_params['year']);
    } 
    else if (isset($filter_params['name']) && isset($filter_params['description'])) {
        $genre = $genre_model->getByNameDescription($filter_params["name"], $filter_params['description']);
    }
    else if (isset($filter_params['name']) && isset($filter_params['year'])) {
        $genre = $genre_model->getByNameYear($filter_params["name"], $filter_params['year']);
    }
    else if (isset($filter_params['description']) && isset($filter_params['year'])) {
        $genre = $genre_model->getByDescriptionYear($filter_params['description'], $filter_params['year']);
    }
    else if (isset($filter_params["name"])) {
        $genre = $genre_model->getAnimeByName($filter_params["name"]);
    }
    else if (isset($filter_params['description'])) {
        $genre = $genre_model->getAnimeByDescription($filter_params['description']);
    }
    else if (isset($filter_params['year'])) {
        $genre = $genre_model->getAnimeByYear($filter_params['year']);
    }
    else {
        // No filtering by genre name or description detected.
        $genre = $genre_model->getAll();
    }

    return checkRepresentation($request, $response, $genre);
}

// filters: anime name, username, genre
function getAnimeReviews(Request $request, Response $response, array $args) {
  
}

// Callback for HTTP GET /artists/{artist_id}
// Returns the artist with the specified ID.
function getAnimeById(Request $request, Response $response, array $args) {
    
}
