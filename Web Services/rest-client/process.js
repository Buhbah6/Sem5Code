
/**
 * Assignment 2
 * 28/11/2022
 * 
 * Anthony Nadeau
 * Student ID: 208983
 */

/**
 * Function to create a new artist with a POST request
 * @param artistId the id of the artist being created 
 * @param artistName the name of the artist being created
 */
async function createArtist(artistId = null, artistName = null) {
    clearPage();

    // Form to accept artistid and artistname
    var html = 
    `<h4>Create Artist</h4>
    <form id="artistForm">
        <label for="artistid">ArtistID:</label><br>
        <input type="number" class="form-control" id="artistid" name="artistid"><br>
        <label for="artistname">Artist Name:</label><br>
        <input type="text" class="form-control" id="artistname" name="artistname"><br>
        <input type="button" class="btn btn-primary" value="Submit" onclick="getValues('artistid', 'artistname', null, null, createArtist)">
    </form>`;
    document.getElementById("formContents").innerHTML = html;

    // Ensures that artistId and artistName are not null (Validation)
    if (artistId == null || artistName == null) {
        document.getElementById("tableContents").innerHTML = "Please enter an Artist ID and Artist Name.";
        return;
    }

    // HTTP POST request to create artist
    var resourceURI = "http://localhost/web-services/music-api/artists"; 
    var options = {
        method: "POST",
        headers: {
            "Accept" : "application/json",
            "Content-Type" : "application/json"
        },
        body: JSON.stringify([{
            "ArtistId": parseInt(artistId),
            "Name" : artistName
        }])
    };
    var request = new Request(resourceURI, options);
    var response = await fetch(request);
    
    // If the request is successful, display that the artist was created successfully
    if (response.ok) {
        document.getElementById("tableContents").innerHTML = "Successfully Created Artist.";
    }
}

/**
 * Function to retrieve all artists from the API, with option to search by artist ID
 * @param artistid the id of the specific artist to search for
 */
async function getArtists(artistid = null) {
    clearPage();

    // Form to accept artistid
    var html = 
    `<h4>Get Artists</h4>
    <form id="artistForm">
        <label for="artistid">Artist ID:</label><br>
        <input type="number" class="form-control" id="artistid" name="artistid"><br>
        <input type="button" class="btn btn-primary" value="Submit" onclick="getValue('artistid', getArtists)">
    </form>`;
    document.getElementById("formContents").innerHTML = html;

    // HTTP GET request to get artists
    var resourceURI = "";
    if (artistid == null) 
        resourceURI = "http://localhost/web-services/music-api/artists";
    else
        resourceURI = "http://localhost/web-services/music-api/artists/" + artistid;
    
    var options = {
        method: "GET",
        headers: {
            "Accept" : "application/json"
        }
    };
    var request = new Request(resourceURI, options);
    var response = await fetch(request);
    
    // If response is OK, build table with data returned from HTTP GET request
    var data = "";
    if (response.ok) {
        data = await response.json();
        console.log(response.status)
        var columns = `<th scope="col">ArtistID</th><th scope="col">Name</th>`
        var rows = '';
        if (typeof data == "object" && data.length == undefined) {
            data = [data];
        }
        data.forEach(artist => {
            rows += 
            `<tr>
            <td>${artist.ArtistId}</td>
            <td>${artist.Name}</td>
            </tr>`;
        });
        buildTable("Artists", columns, rows);
    }
    else if (response.status == 404) { // Error handling
        document.getElementById("tableContents").innerHTML = "No Artists Found.";
    }
}

/**
 * Gets albums from the API based on the artist ID
 * @param artistId the id of the artist who made the albums 
 */
async function getAlbums(artistId = null) {
    clearPage();

    // Form to accept artistid
    var html = 
    `<h4>Get Albums By Artist ID</h4>
    <form id="artistForm">
        <label for="artistid">Artist ID:</label><br>
        <input type="number" class="form-control" id="artistid" name="artistid"><br>
        <input type="button" class="btn btn-primary" value="Submit" onclick="getValue('artistid', getAlbums)">
    </form>`;
    document.getElementById("formContents").innerHTML = html;

    // If the artist ID is null, don't make the HTTP GET request or build the table
    if (artistId == null) 
        return;

    // HTTP GET request to get albums
    var resourceURI = "http://localhost/web-services/music-api/artists/" + artistId + "/albums"; 
    var options = {
        method: "GET",
        headers: {
            "Accept" : "application/json"
        }
    };
    var request = new Request(resourceURI, options);
    var response = await fetch(request);
    
    // If response is OK, build table with data returned from HTTP GET request
    var data = "";
    if (response.ok) {
        data = await response.json();
        var columns = `<th scope="col">AlbumID</th><th scope="col">Title</th><th scope="col">ArtistID</th>`
        var rows = '';
        if (typeof data == "object" && data.length == undefined) {
            data = [data];
        }
        data.forEach(album => {
            rows += 
            `<tr>
            <td>${album.AlbumId}</td>
            <td>${album.Title}</td>
            <td>${album.ArtistId}</td>
            </tr>`;
        });
        buildTable("Albums", columns, rows);
    }
    else if (response.status == 404) { // Error handling
        document.getElementById("tableContents").innerHTML = "No Albums Found.";
    }
}

/**
 * Gets tracks from the API based on the album ID and artist ID, with optional search parameters for genre and media type
 * @param artistId the id of the artist who made the tracks
 * @param albumId the id of the album the tracks are on
 * @param genre the genre of the tracks
 * @param mediatype the media type of the tracks
 */
async function getTracks(artistId = null, albumId = null, genre = null, mediatype = null) {
    clearPage();

    // Form to accept artistid, albumid, genre, and mediatype
    var html = 
    `<h4>Get Tracks by Artist ID and Album ID</h4><br>
    <form id="tracksform">
        <h6>Required Fields</h6>
        <label for="artistid">Artist ID:</label><br>
        <input type="number" class="form-control" id="artistid" name="artistid">
        <label for="albumid">Album ID:</label><br>
        <input type="number" class="form-control" id="albumid" name="albumid"><br>
        <h6>Optional Fields</h6>
        <label for="genre">Genre:</label><br>
        <input type="text" class="form-control" id="genre" name="genre">
        <label for="mediatype">Mediatype:</label><br>
        <input type="text" class="form-control" id="mediatype" name="mediatype"><br>
        <input type="button" class="btn btn-primary" value="Submit" onclick="getValues('artistid', 'albumid', 'genre', 'mediatype', getTracks)">
    </form>`;
    document.getElementById("formContents").innerHTML = html;

    // If the artist ID or album ID is null, don't make the HTTP GET request or build the table
    if (artistId == null || albumId == null) 
        return;

    // Establish the resource URI using query parameters
    var resourceURI = "";
    if (genre == null && mediatype == null)
        resourceURI = "http://localhost/web-services/music-api/artists/" + artistId + "/albums/" + albumId + "/tracks";
    else if (mediatype == null)
        resourceURI = "http://localhost/web-services/music-api/artists/" + artistId + "/albums/" + albumId + "/tracks?genre=" + genre;
    else if (genre == null)
        resourceURI = "http://localhost/web-services/music-api/artists/" + artistId + "/albums/" + albumId + "/tracks?media_type=" + mediatype;
    
    // HTTP GET request to get tracks
    var options = {
        method: "GET",
        headers: {
            "Accept" : "application/json"
        }
    };
    var request = new Request(resourceURI, options);
    var response = await fetch(request);
    
    // If response is OK, build table with data returned from HTTP GET request
    var data = "";
    if (response.ok) {
        data = await response.json();
        var columns = `<th scope="col">TrackID</th><th scope="col">Name</th><th scope="col">AlbumID</th>
        <th scope="col">MediaTypeID</th><th scope="col">GenreID</th><th scope="col">Composer</th>
        <th scope="col">Milliseconds</th><th scope="col">Bytes</th><th scope="col">Unit Price</th>`
        var rows = '';
        if (typeof data == "object" && data.length == undefined) {
            data = [data];
        }
        data.forEach(track => {
            rows += 
            `<tr>
            <td>${track.TrackId}</td>
            <td>${track.Name}</td>
            <td>${track.AlbumId}</td>
            <td>${track.MediaTypeId}</td>
            <td>${track.GenreId}</td>
            <td>${track.Composer}</td>
            <td>${track.Milliseconds}</td>
            <td>${track.Bytes}</td>
            <td>${track.UnitPrice}</td>
            </tr>`;
        });
        buildTable("Tracks", columns, rows);
    }
    else if (response.status == 404) { // Error handling
        document.getElementById("tableContents").innerHTML = "No Tracks Found.";
    }
}

/**
 * Retrieves all the customers from the API
 */
async function getCustomers() {
    clearPage();

    // No form needed for this function

    document.getElementById("formContents").innerHTML = "<h4>Get Customers</h4>";

    // HTTP GET request to get customers
    var resourceURI = "http://localhost/web-services/music-api/customers";
    var options = {
        method: "GET",
        headers: {
            "Accept" : "application/json"
        }
    };
    var request = new Request(resourceURI, options);
    var response = await fetch(request);

    // If response is OK, build table with data returned from HTTP GET request
    var rows = "";
    if (response.ok) {
        data = await response.json();
        var columns = `<th scope="col">CustomerID</th><th scope="col">First Name</th><th scope="col">Last Name</th>
        <th scope="col">Company</th><th scope="col">Address</th><th scope="col">City</th>
        <th scope="col">State</th><th scope="col">Country</th><th scope="col">Postal Code</th>
        <th scope="col">Phone</th><th scope="col">Fax</th><th scope="col">Email</th><th scope="col">SupportRepID</th>`
        var rows = '';
        data.forEach(customer => {
            rows += 
            `<tr>
            <td>${customer.CustomerId}</td>
            <td>${customer.FirstName}</td>
            <td>${customer.LastName}</td>
            <td>${customer.Company}</td>
            <td>${customer.Address}</td>
            <td>${customer.City}</td>
            <td>${customer.State}</td>
            <td>${customer.Country}</td>
            <td>${customer.PostalCode}</td>
            <td>${customer.Phone}</td>
            <td>${customer.Fax}</td>
            <td>${customer.Email}</td>
            <td>${customer.SupportRepId}</td>
            </tr>`;
        });
        buildTable("Customers", columns, rows);
    }
    else if (response.status == 404) { // Error handling
        document.getElementById("tableContents").innerHTML = "No Customers Found.";
    }
}

/**
 * Gets all the tracks a given customer has purchased
 * @param customerId the id of the customer to retrieve the purchased tracks for
 */
async function getInvoices(customerId = null) {
    clearPage();

    // Form to accept the customer ID
    var html = 
    `<h4>Get Invoices of a Customer</h4>
    <form id="customerForm">
        <label for="customerid">Customer ID:</label><br>
        <input type="number" class="form-control" id="customerid" name="customerid"><br>
        <input type="button" class="btn btn-primary" value="Submit" onclick="getValue('customerid', getInvoices)">
    </form>`;
    document.getElementById("formContents").innerHTML = html;

    // If the customer ID is null, don't make the HTTP GET request or build the table
    if (customerId == null) 
        return; 

    // HTTP GET request to get invoices
    var resourceURI = "http://localhost/web-services/music-api/customers/" + customerId + "/invoices";
    var options = {
        method: "GET",
        headers: {
            "Accept" : "application/json"
        }
    };
    var request = new Request(resourceURI, options);
    var response = await fetch(request);

    // If response is OK, build table with data returned from HTTP GET request
    var rows = "";
    if (response.ok) {
        data = await response.json();
        var columns = `<th scope="col">TrackID</th><th scope="col">Name</th><th scope="col">AlbumId</th>
        <th scope="col">MediaTypeId</th><th scope="col">GenreId</th><th scope="col">Composer</th>
        <th scope="col">Milliseconds</th><th scope="col">Bytes</th><th scope="col">UnitPrice</th>`
        var rows = '';
        data.forEach(invoice => {
            rows += 
            `<tr>
            <td>${invoice.TrackId}</td>
            <td>${invoice.Name}</td>
            <td>${invoice.AlbumId}</td>
            <td>${invoice.MediaTypeId}</td>
            <td>${invoice.GenreId}</td>
            <td>${invoice.Composer}</td>
            <td>${invoice.Milliseconds}</td>
            <td>${invoice.Bytes}</td>
            <td>${invoice.UnitPrice}</td>
            </tr>`;
        });
        buildTable("Tracks Purchased", columns, rows);
    }
    else if (response.status == 404) { // Error handling
        document.getElementById("tableContents").innerHTML = "No Invoices Found.";
    }
}
/**
 * Builds table with given data
 * @param tableName name of table
 * @param tableColumns names of the columns for the table in HTML format
 * @param tableContents contents in HTML format for the table
 */
function buildTable(tableName, tableColumns, tableContents) {
    var container = document.getElementById("tableContents");
    // HTML code appending columns and contents to the table
    var table = "<h3>List of " + tableName + "</h3>" +
    `<table class="table table-striped">
    <thead>
        <tr>` + 
            tableColumns +
        `</tr>
    </thead>
    <tbody>` + 
        tableContents +
    `</tbody>
    </table>`;
    container.innerHTML = table;
}

/**
 * Get value from form
 * @param elementName the name of the text element to get the value from 
 * @param method the method to call to specify what to do with the value
 */
function getValue(elementName, method) {
    var value = document.getElementById(elementName).value;
    if (value != "")
        method(value);
}

/**
 * Get multiple values from form (2 mandatory, 2 optional)
 * @param firstElementName the name of the first text element to get the value from
 * @param secondElementName the name of the second text element to get the value from
 * @param thirdElementName the name of the third text element to get the value from
 * @param fourthElementName the name of the fourth text element to get the value from
 * @param method the method to call to specify what to do with the value
 */
function getValues(firstElementName, secondElementName, thirdElementName = null, fourthElementName = null, method) {
    var value1 = document.getElementById(firstElementName).value;
    var value2 = document.getElementById(secondElementName).value;
    if (thirdElementName != null && fourthElementName != null) {
        var value3 = document.getElementById(thirdElementName).value;
        var value4 = document.getElementById(fourthElementName).value;
        if (value1 != "" && value2 != "" && value3 != "" && value4 != "")
            method(value1, value2, value3, value4);
        else if (value1 != "" && value2 != "" && value3 != "")
            method(value1, value2, value3, null);
        else if (value1 != "" && value2 != "" && value4 != "")
            method(value1, value2, null, value4);
        else if (value1 != "" && value2 != "")
            method(value1, value2);
    }
    else if (value1 != "" && value2 != "")
        method(value1, value2);
}

/**
 * Clear the page of all contents
 */
function clearPage() {
    document.getElementById("formContents").innerHTML = "";
    document.getElementById("tableContents").innerHTML = "";
}