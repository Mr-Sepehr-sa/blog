<?php
session_start();
?>
<link rel="stylesheet" href="<?= asset('assets/css/bootstrap.min.css') ?>" media="all" type="text/css">
<link rel="stylesheet" href="<?= asset('assets/css/style.css') ?>" media="all" type="text/css">
<nav class="navbar navbar-expand-lg navbar-dark bg-blue ">

    <a class="navbar-brand " href="<?= url('panel') ?>">PHP tutorial</a>
    <button class="navbar-toggler " type="button " data-toggle="collapse " data-target="#navbarSupportedContent " aria-controls="navbarSupportedContent " aria-expanded="false " aria-label="Toggle navigation ">
        <span class="navbar-toggler-icon "></span>
    </button>

    <div class="collapse navbar-collapse " id="navbarSupportedContent ">
        <ul class="navbar-nav mr-auto ">
            <li class="nav-item active ">
                <a class="nav-link " href="<?= url('index.php') ?>">Home <span class="sr-only ">(current)</span></a>
            </li>
            <?php
            global $pdo;
            $query = "SELECT * FROM php_project.categories";
            $statment = $pdo->prepare($query);
            $statment->execute();
            $categories = $statment->fetchAll();
            foreach ($categories as $category){?>
            <li class="nav-item ">
                <a class="nav-link " href="<?= url('category.php?cat_id='.$category->id) ?>"><?= $category-> name?></a>
            </li>
            <?php } ?>

        </ul>
    </div>

    <section class="d-inline ">

        <?php if(!isset($_SESSION['user'])){ ?>

        <a class="text-decoration-none text-white px-2 " href="<?= url('auth/register.php')?>">register</a>
        <a class="text-decoration-none text-white " href="<?= url('auth/login.php')?>">login</a>
        <?php }else{ ?>
        <a class="text-decoration-none text-white px-2 " href="<?= url('auth/logout.php')?>">logout</a>
        <?php } ?>

    </section>
</nav>