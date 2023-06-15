<?php

class MangaModel extends BaseModel {

    private $table_name = "manga";

    /**
     * A model class for the `manga` database table.
     * It exposes operations that can be performed on manga records.
     */
    function __construct() {
        // Call the parent class and initialize the database connection settings.
        parent::__construct();
    }

     /**
     * Get all manga records.
     */
    function getAll() {
        $sql = "SELECT * FROM $this->table_name";
        $result = $this->run($sql);
        return $result;
    }

    /**
     * Get a single manga record by its ID.
     */
    function getMangaById($manga_id) {
        $sql = "SELECT * FROM $this->table_name WHERE manga_id = ?";
        $result = $this->run($sql, [$manga_id])->fetch();
        return $result;
    }

    /**
     * Get all manga records whose name match the specified value.
     */
    function getMangaByName($name) {
        $sql = "SELECT * FROM $this->table_name WHERE name LIKE :name";
        $result = $this->run($sql, [":name" => "%" . $name . "%"])->fetchAll();
        return $result;
    }
}
