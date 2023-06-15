<?php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
//var_dump($_SERVER["REQUEST_METHOD"]);
use Slim\Factory\AppFactory;

require_once __DIR__ . './../routes/base_routes.php';
require_once __DIR__ . './../models/BaseModel.php';
require_once __DIR__ . './../models/GenreModel.php';

//routes: getAllGenres, getGenreById, getGenreAnime, getGenreManga

// filtering by name and keyword in description
function getAllGenres(Request $request, Response $response, array $args) {
    $genre = array();
    $response_data = array();
    $response_code = HTTP_OK;
    $genre_model = new GenreModel();

    // Retrieve the query string parameter from the request's URI.
    $filter_params = $request->getQueryParams();
    if (isset($filter_params["name"]) && isset($filter_params['description'])) {
        // Fetch the list of genres matching the provided name.
        $genre = $genre_model->getByNameDescription($filter_params["name"], $filter_params['description']);
    } 
    else if (isset($filter_params["name"])) {
        $genre = $genre_model->getGenreByName($filter_params["name"]);
    }
    else if (isset($filter_params['description'])) {
        $genre = $genre_model->getGenreByDescription($filter_params['description']);
    }
    else {
        // No filtering by genre name or description detected.
        $genre = $genre_model->getAll();
    }

    return checkRepresentation($request, $response, $genre);
}

// Callback for HTTP GET /artists/{artist_id}
// Returns the genre with the specified ID.
function getGenreById(Request $request, Response $response, array $args) {
    $genre_info = array();
    $response_data = array();
    $response_code = HTTP_OK;
    $genre_model = new GenreModel();

    // Retrieve the genre if from the request's URI.
    $genre_id = $args["genre_id"];
    if (isset($genre_id)) {
        // Fetch the info about the specified genre.
        $genre_info = $genre_model->getGenreById($genre_id);
        return checkData($genre_info, $response, $request);
    }
    return unsupportedOperation($request, $response);  
}

function getGenreAnime(Request $request, Response $response, array $args) {
    $genre_info = array();
    $response_data = array();
    $response_code = HTTP_OK;
    $genre_model = new GenreModel();

    // Retrieve the genre if from the request's URI.
    $genre_id = $args["genre_id"];
    if (isset($genre_id)) {
        // Fetch the info about the specified genre.
        $genre_info = $genre_model->getAllAnimeFromGenre($genre_id);
        return checkData($genre_info, $response, $request);
    }
    return unsupportedOperation($request, $response);  
}

function getGenreManga(Request $request, Response $response, array $args) {
    $genre_info = array();
    $response_data = array();
    $response_code = HTTP_OK;
    $genre_model = new GenreModel();

    // Retrieve the genre if from the request's URI.
    $genre_id = $args["genre_id"];
    if (isset($genre_id)) {
        // Fetch the info about the specified genre.
        $genre_info = $genre_model->getAllMangaFromGenre($genre_id);
        return checkData($genre_info, $response, $request);
    }
    return unsupportedOperation($request, $response);  
}


