<?php

class UserModel extends BaseModel {

    private $table_name = "user";

    /**
     * A model class for the `user` database table.
     * It exposes operations that can be performed on artists records.
     */
    function __construct() {
        // Call the parent class and initialize the database connection settings.
        parent::__construct();
    }

    /**
     * Get all user records.
     */
    function getAll() {
        $sql = "SELECT * FROM $this->table_name";
        $result = $this->run($sql);
        return $result;
    }

    /**
     * Get a single user record by its ID.
     */
    function getUserById($user_id) {
        $sql = "SELECT * FROM $this->table_name WHERE user_id = ?";
        $result = $this->run($sql, [$user_id])->fetch();
        return $result;
    }

    /**
     * Get all manga on user read list
     */
    function getUserMangaWatched($user_id) {
        $sql = "SELECT manga.* FROM list 
                JOIN manga ON list.manga_id = manga.manga_id 
                WHERE list.user_id = ? && list.Type = 'watched'";
        $result = $this->run($sql, [$user_id])->fetchAll();
        return $result;
    }


    /**
     * Get all manga on user to-read list
     */
    function getUserMangaToWatch($user_id) {
        $sql = "SELECT manga.* FROM list 
        JOIN manga ON list.manga_id = manga.manga_id 
        WHERE list.user_id = ? && list.Type = 'to-watch'";
        $result = $this->run($sql, [$user_id])->fetchAll();
        return $result;
    }


    /**
     * Get all anime on user to watched list
     */
    function getUserAnimeWatched($user_id) {
        $sql = "SELECT anime.* FROM list 
                JOIN anime ON list.anime_id = anime.anime_id 
                WHERE list.user_id = ? && list.Type = 'watched'";
        $result = $this->run($sql, [$user_id])->fetchAll();
        return $result;
    }

    
    /**
     * Get all anime on user to-watch list
     */
    function getUserAnimeToWatch($user_id) {
        $sql = "SELECT anime.* FROM list 
        JOIN anime ON list.anime_id = anime.anime_id 
        WHERE list.user_id = ? && list.Type = 'to-watch'";
        $result = $this->run($sql, [$user_id])->fetchAll();
        return $result;
    }
}
