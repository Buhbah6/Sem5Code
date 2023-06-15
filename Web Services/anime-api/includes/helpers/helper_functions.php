<?php

/**
 * Returns a JSON encoded error message for unsupported requested resource representations
 */
function getErrorUnsupportedFormat() {
    $error_data = array(
        "error:" => "unsuportedResponseFormat",
        "message:" => "The requested resouce representation is available only in JSON."
    );
    return json_encode($error_data);
}

/**
 * Returns a custom error using the passed error code and message
 */
function makeCustomJSONError($error_code, $error_message) {
    $error_data = array(
        "error:" => $error_code,
        "message:" => $error_message
    );
    return json_encode($error_data);
}
