<?php

namespace App\Controllers;

class HomeController
{
    public  function index(): void {
        jsonResponse(['message' => 'Welcome to the SPAM Tracker API']);
    }
}
