<?php
require_once '../../functions/helpers.php';
require_once '../../functions/pdo_connection.php';

if (isset($_GET['post_id']) && $_GET['post_id'] !== '') {

    global $pdo;

    $query = "SELECT * FROM php_project.posts WHERE id = ?";
    $statment = $pdo->prepare($query);
    $statment->execute([$_GET['post_id']]);
    $post = $statment->fetch();

    $basePath = dirname(dirname(__DIR__));

    if($post !== false){
        if (file_exists($basePath.$post->image)){
            unlink($basePath.$post->image);
        }
        $query = 'DELETE FROM php_project.posts WHERE id = ?';
        $statement = $pdo->prepare($query);
        $statement->execute([$_GET['post_id']]);
    }
}
    redirect('panel/post');
?>