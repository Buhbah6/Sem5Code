<?php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
//var_dump($_SERVER["REQUEST_METHOD"]);
use Slim\Factory\AppFactory;

require_once __DIR__ . './../routes/base_routes.php';
require_once __DIR__ . './../models/BaseModel.php';
require_once __DIR__ . './../models/ReviewModel.php';


function getMangaReviews(Request $request, Response $response, array $args) {
    $reviews_info = array();
    $response_data = array();
    $response_code = HTTP_OK;
    $review_model = new ReviewModel();

    $filter_params = $request->getQueryParams();
    // Retrieve the review if from the request's URI.
    $manga_id= $args["manga_id"];
    if (isset($manga_id)) {
        if(isset($filter_params['star_rating']))
            $reviews_info = $review_model->getMangaReviewsByRate($manga_id, $filter_params['star_rating']);
        else 
            // Fetch the info about the specified review.
            $reviews_info = $review_model->getMangaReviews($manga_id);
        return checkData($reviews_info, $response, $request);
    }
    return unsupportedOperation($request, $response); 
}

