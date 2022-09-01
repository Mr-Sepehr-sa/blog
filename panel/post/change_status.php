<?php
    require_once '../../functions/helpers.php';
    require_once '../../functions/pdo_connection.php';

    if (isset($_GET['post_id']) && $_GET['post_id'] !== '') {

        global $pdo;

        $query = "SELECT id,status FROM php_project.posts WHERE id = ?";
        $statment = $pdo->prepare($query);
        $statment->execute([$_GET['post_id']]);
        $post = $statment->fetch();

        if($post !== false){
            $status = ($post->status == 1) ? 0 : 1;
            $sql = 'UPDATE php_project.posts SET status = ? WHERE id = ?';
            $statement = $pdo->prepare($sql);
            $statement->execute([$status,$post->id]);
        }
    }
    redirect('panel/post');
?>