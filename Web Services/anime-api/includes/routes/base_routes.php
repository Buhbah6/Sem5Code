<?php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
//var_dump($_SERVER["REQUEST_METHOD"]);
use Slim\Factory\AppFactory;
use Symfony\Component\Yaml\Yaml;

/**
 * Function handle a get request for the root resource
 */
function getResources(Request $request, Response $response, $args) {
    $exposed_resources = array();
    $exposed_resources['GET | All Anime'] = '/anime';
    $exposed_resources['GET | Artist By Id'] = '/artists/{artist_id}';
    $exposed_resources['GET | Album By Artist Id'] = '/artists/{artist_id}/albums';
    $exposed_resources['GET | Tracks By Artist And Album'] = '/artists/{artist_id}/albums/{album_id}/tracks';
    $exposed_resources['GET | Invoices By Customer Id'] = '/customers/{customer_id}/invoices';
    $exposed_resources['GET | All Customers'] = '/customers';
    $exposed_resources['POST | Create Artists'] = '/artists';
    $exposed_resources['PUT | Update Artists'] = '/artists';
    $exposed_resources['DELETE | Delete Artist By Id'] = '/artists/{artist_id}';
    $exposed_resources['DELETE | Delete Customer By Id'] = '/customers/{customer_id}';
    $response->getBody()->write(json_encode($exposed_resources));
    return $response->withStatus(200);
}

/**
 * Verify requested resource representation.
 */
function checkRepresentation(Request $request, Response $response, $data) {
    $requested_format = $request->getHeader('Accept');
    if ($requested_format[0] === APP_MEDIA_TYPE_JSON) {
        $response_data = json_encode($data, JSON_INVALID_UTF8_SUBSTITUTE);
        $response_code = HTTP_OK;
    }
    //to be fixed
    else if ($requested_format[0] === APP_MEDIA_TYPE_XML) {
        $xml = new SimpleXMLElement('');
        array_walk_recursive($data, array ($xml,'addChild'));
        $response_data = $xml->asXML();
        $response_code = HTTP_OK;
    }
    //to be fixed
    else if ($requested_format[0] === APP_MEDIA_TYPE_YAML) {
        $response_data = Yaml::dump($data);
        $response_code = HTTP_OK;
    }
    else {
        $response_data = json_encode(getErrorUnsupportedFormat());
        $response_code = HTTP_UNSUPPORTED_MEDIA_TYPE;
    }
    $response->getBody()->write($response_data);
    return $response->withStatus($response_code);
}

/**
 * Function to handle error 405 (Unsupported Operation)
 */
function unsupportedOperation (Request $request, Response $response, $args) {    
    $error_data = array();
    $error_data["error"]  = "UnsupportedOperation";
    $error_data["message"] = "The operation you requested with resource: " . $request->getUri() . " is unsupported.";
    $error_data["method"] = "HTTP Method: " . $request->getMethod();

    $response->getBody()->write(json_encode($error_data));
    return $response->withStatus(405);
}

/**
 * Function to handle error 404 (Not Found)
 */
function checkData($data, Response $response, Request $request) {
    if (!$data) {
        $response_data = makeCustomJSONError("resourceNotFound", "No matching record was found.");
        $response->getBody()->write($response_data);
        return $response->withStatus(HTTP_NOT_FOUND);
    }
    else {
        return checkRepresentation($request, $response, $data);
    }
}


