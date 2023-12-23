<?php
use Illuminate\Support\Facades\Route;

Route::get('/cards', function () {
    return view('cards/info');
})->name('cards');
?>
